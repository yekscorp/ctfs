import os

a = open('./whitebox.bin.gold','rb').read()
bs = b'\xc7\x05\x84\xad\x23\x00\x5d\x67\x70\x0b'
bf = b'\xc7\x05\x4e\xf0\x22\x00\x40\xcc\x5a\x02'
i = 0

while i < (len(a)-10):
    if a[i:i+10] == bf:
        print(i)
        pass
    i += 1

