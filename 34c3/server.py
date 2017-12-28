#!/usr/bin/env python
from ctf_tools.op_tools import *
import binascii
import base64
import random
import signal

from Crypto import Random
from Crypto.Cipher import AES

# from secrets import key
key = "\x00" * 16


bs = AES.block_size
# mail = open('/dev/null', 'wb')

def pad(m):
    return m + (bs - len(m) % bs) * chr(bs - len(m) % bs)

def unpad(m):
    assert len(m) % 16 == 0
    assert all(map(lambda x: x == m[-1], m[-ord(m[-1]):]))
    return m[:-ord(m[-1])]
        

def enc(m):
    iv = Random.new().read(bs)
    aes = AES.new(key, AES.MODE_CBC, iv)
    return base64.b64encode(iv + aes.encrypt(pad(m)))


def dec(c):
    c = base64.b64decode(c)
    aes = AES.new(key, AES.MODE_CBC, c[:16])
    pt = aes.decrypt(c[16:])
    pt2 = pt.encode('hex')
    return unpad(pt)


def prepare_cyber_msg():
    rec = raw_input('Please input the recipient: ')
    msg = raw_input('Please input the message: ')
    c = enc('''{}
    To: {}
    {}'''.format('SMS-v0.1.337', rec, msg))
    print('Here is your cyberized message: {}'.format(c))


def send_cyber_msg():
    c = raw_input('Please input your ciphertext (base64): ')
    if not dec(c).startswith('SMS-v0.1.337'):
        print('That message doesn\'t look like it has the correct format.')
    else:
        print('Thank you. Your message is being transferred shortly.')
        print(c)

def find_byte(ct1, ct2, byte_num):
    iv_xor = "\x00" * (16-byte_num) + chr(byte_num ^ (byte_num+1)) * byte_num
    tmp_iv = sxor(ct1,iv_xor)
    print tmp_iv.encode('hex')
    for i in range(256):
        tmp_iv = list(tmp_iv)
        tmp_iv[-(byte_num+1)] = chr(i)
        tmp_iv = "".join(tmp_iv)
        msg = b64(tmp_iv + ct2)
        try:
            pt = dec(msg)
            print pt
            if len(pt) != 15-byte_num:
                continue
            print pt.encode('hex')
            print ct1[-1].encode('hex')
            print i
            return tmp_iv, chr(i ^ ord(ct1[-(byte_num+1)])^ (byte_num+1))
        except AssertionError:
            continue

def soln():
    im = "CVWMogDHUQ/MaYA9RtMsSIrRTRBkwT3FhxNh+3LkTr9e3Qw3yPJsTLXQsoqdxmf4VtK6J9DIYSKITP867vmPVVL9Qi/bcZZhRUORtppD97AxnRqwjvidFEzV+iKrUkd5XsmciUP3j9a4kWWLIhXiZN1Ekx/6ChpJoXDOSmvH5czC+cBEhCCLlG7c1bIQOa+e"
    print dec(im).encode('hex')
    iv_ct = d64(im)
    n = len(iv_ct) / 16
    res = ""
    r = range(1,n)
    r.reverse()
    for x in r:
        ct1 = iv_ct[16*(x-1):16*x]
        ct2 = iv_ct[16 * x: 16 * (x+1)]
        for byte_num in range(16):
            ct1, b = find_byte(ct1,ct2, byte_num)
            res = b+res
        print res


if __name__ == '__main__':
    # print d64(im).encode('hex')
    soln()
    # while True:
    #     print('Cyber messaging service')
    #     print('[1] Cyberize message')
    #     print('[2] Send cyberized message')
    #     choice = raw_input('> ')
    #     try:
    #         if choice == '1':
    #             prepare_cyber_msg()
    #         elif choice == '2':
    #             send_cyber_msg()
    #     except:
    #         print('There was an error while processing your request.')
