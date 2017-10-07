from unicorn import *
from unicorn.x86_const import *
import struct
import sys
import random
from elftools.elf.elffile import ELFFile
import traceback


def p32(x):
    return struct.pack("<I", x)

def p64(x):
    return struct.pack("<Q",x)

def u32(x):
    if len(x) != 4:
        x = x + "\x00" * (4 - len(x))
    return struct.unpack("<I", x)[0]


def u64(x):
    if len(x) != 8:
        x = x + "\x00" * (8 - len(x))
    return struct.unpack("<Q",x)[0]

def p16(x):
    struct.pack("<H", x)


def pack(x, size):
    if size == 1:
        return chr(x)
    elif size == 2:
        return p16(x)
    elif size == 4:
        return p32(x)
    else:
        return p64(x)

# Stack initialization data
STACK = 0x1ffeffe000
STACK_SIZE = 0x200000
SP = STACK + STACK_SIZE - 0x800
RET = STACK
PAGE_SIZE = 0x20000
output = []
evtId = 0
fault = True


def should_fault(evtId, targetId, fault, address,size):
    return evtId > targetId and fault and address > STACK and address < STACK + STACK_SIZE and size == 1


def hook_mem_access_fault(uc, access, address, size, value, user_data):
    global output, evtId, fault
    evtId += 1
    pc = uc.reg_read(UC_X86_REG_RIP)
    targetId = user_data[0]
    if access == UC_MEM_READ:
        value = u64(uc.mem_read(address, size))
        print "READ ADDRESS: %s PC: %s, VALUE: %s" % (hex(address), hex(pc), hex(value))
    elif access == UC_MEM_WRITE:
        print "WRITE ADDRESS: %s PC: %s, VALUE: %s" % (hex(address), hex(pc), hex(value))

    if address == 0:
        raise RuntimeError("SHIT")
    if should_fault(evtId, targetId, fault, address,size):
        print "FAULTING AT ", targetId  # Already faulted this time
        fault = False
        # Random bit in this event
        bitfault = 1 << random.randint(0, size * 16 - 1)
        uc.mem_write(address, pack(value ^ bitfault, size))


    # At this PC the pushes a byte of output to the stack
    if pc == 0x04634cc:
        output.append(value)
        pass

def randstr(sz):
    x = open("/dev/urandom")
    rnd = x.read(sz)
    x.close()
    return rnd

KEY16_ATTACK_START = 223400
KEY16_ATTACK_END = 224200

KEY15_ATTACK_START = 222600
KEY15_ATTACK_END = 223400

ROUND9_START = 149400
ROUND9_END = 151300

def main():
    global output, fault, evtId
    # Get unicode in 64-bit x86 mode
    mu = Uc(UC_ARCH_X86, UC_MODE_64)
    fd = open("faults.txt", "wb")
    target = [0]
    # Hook mem read and write

    mu.hook_add(UC_HOOK_MEM_READ | UC_HOOK_MEM_WRITE, hook_mem_access_fault, user_data=target)
    # Map the full PE into unicorn
    elf = ELFFile(open("./whitebox.bin.gold"))
    for section in  elf.iter_sections():
        section
    for seg in elf.iter_segments():
        print seg.header.p_type
        if seg.header.p_type == "PT_LOAD":
            # LOAD this
            data = seg.data()
            mapsz = PAGE_SIZE * ((len(data) + PAGE_SIZE) / PAGE_SIZE)
            addr = seg.header.p_vaddr - (seg.header.p_vaddr % PAGE_SIZE)
            mu.mem_map(addr, mapsz)
            mu.mem_write(seg.header.p_vaddr, data)

    val = mu.mem_read(0x665010, 64)
    print "".join('{:02x}'.format(x) for x in val)
    # entry = 0x80484C4  # Our main function, from IDA
    entry = 0x4006e0  # Our main function, from IDA


    # Map zero page and a bit more, this should keep gs happy?
    mu.mem_map(0, PAGE_SIZE)
    mu.mem_map(STACK, STACK_SIZE)

    num_samples = 1
    data_bytes = 16
    for tracenum in xrange(100):
        target[0] = random.randint(ROUND9_START, ROUND9_END)
        fault = True
        evtId = 0
    # set esp and ebp to their initial values
        mu.reg_write(UC_X86_REG_RSP, SP)
        mu.reg_write(UC_X86_REG_RBP, SP)

        # Write params on stack, and create stack frame for the call
        # plaintext = randstr(8)
        # plaintext = "\x00"*16
        plaintext="1234567812345678"

        start = 0x100
        mu.mem_write(SP + start, "./whitebox.bin\x00")
        argv = [SP + start]
        start += 17
        for i in xrange(len(plaintext)):
            argv.append(SP + start)
            mu.mem_write(SP + start, "%.2x" % ord(plaintext[i]))
            start += 3

        # Now we need to place argv somewhere
        i = 0
        for arg in argv:
            mu.mem_write(SP+0x200 + i*8, p64(arg))
            i += 1
        # And NULL
        mu.mem_write(SP + 0x200 + i * 8, p64(0))

        # And now main's return address and parameters
        print SP
        mu.mem_write(SP-0x0, p64(RET)) # Return address @ sp
        mu.mem_write(SP-0x08, p64(len(argv))) # argc
        print SP-0x08
        mu.mem_write(SP-0x10, p64(SP + 0x200)) # argv
        print SP-0x10
        print "GO"

        # Patch printf and putchar .plt --> return
        mu.mem_write(0x400670, "\xc3")
        mu.mem_write(0x400620, "\xc3")
        output = []
        try:
            # And now run the emulator until we hits our RET
            if tracenum == 0:
                fault = False
            mu.emu_start(entry, RET)
            ciphertext = "".join(map(chr, output))
            fd.write((plaintext.encode("hex") + ciphertext.encode("hex")) + "\n")
            print "FINISHED ", tracenum
        except:
            print "ERROR"
            traceback.print_exc()
            pass
if __name__ == '__main__':
    main()
