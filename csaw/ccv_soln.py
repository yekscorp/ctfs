from pwn import *
import struct
import cc_gen
import sys
from random import Random


generator = Random()
generator.seed() 
p = remote('misc.chal.csaw.io',8308)
#p = process('./pilot')
#gdb.attach(p,"""
#b *0x400b35
#""")
card_types = {"Visa":cc_gen.visaPrefixList,
              "MasterCard":cc_gen.mastercardPrefixList,
              "Discover":cc_gen.discoverPrefixList,
              "American Express":cc_gen.amexPrefixList}
            

while True:
    print p.recvuntil("I need a new ")
    card_type = p.recvuntil("!\n").replace("!\n","")
    print card_type
    if card_type in card_types.keys():
        if card_type == "American Express":
            cn = cc_gen.credit_card_number(generator, card_types[card_type], [], 15, 1)[0]
            pass
        else:
            cn = cc_gen.credit_card_number(generator, card_types[card_type], [], 16, 1)[0]
            pass
        print "%s %s" % (str(cn), len(cn))
        p.sendline(str(cn))
        f = p.recvuntil("\n")
        print f
        if "flag" in f:
            sys.exit()
    elif "starts with" in card_type:
        cl = card_type.split(" ")
        num = list(cl[4])
        prefix = [num]
        print prefix
        cn = cc_gen.credit_card_number(generator, prefix, [], 16, 1)[0]
        print "%s %s" % (str(cn), len(cn))
        p.sendline(str(cn))
        f = p.recvuntil("\n")
        print f
        if "flag" in f:
            sys.exit()
    elif "ends with" in card_type:
        cl = card_type.split(" ")
        num = list[cl[4][0]]
        cn = cc_gen.credit_card_number(generator, card_types['MasterCard'], num, 16, 1)[0]
        print "%s %s" % (str(cn), len(cn))
        p.sendline(str(cn))
        f = p.recvuntil("\n")
        print f
        if "flag" in f:
            sys.exit()
    else:
        p.recv()
        break

