from pwn import *

p = remote("misc.chal.csaw.io",4239)
print p.recvuntil("8-1-1 even parity. Respond with '1' if you got the byte, '0' to retransmit.")
data = []
s= ""
try:
    while True:
        d = p.recv().replace("\n","")[1:10]
        parity = int(d[8])
        bits = list(d[0:8])
        print bits
        ones = 0
        for b in bits:
            if b == "1":
                ones += 1
                pass
            pass
        print ones
        if (parity & ones%2!=0) or ((not parity) and ones%2==0):
            x = chr(int('0b'+d[0:8],2))
            print x
            s += x
            p.sendline("1")
            pass
        else:
            p.sendline("0")
            pass
        pass

except:
    pass
print s

        
        

