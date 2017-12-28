#!/usr/bin/env python2
from ctf_tools.op_tools import *
import binascii
import base64
import random
# TOKEN = "12acea310aa8aa61691602a03f78451aaa6a8da019da10e2f65b6b23135f3a2f2e7a4445a46ed8e7bc1d2860459a51b4bdad85db6a794d1e97b8a5779a56835d24cdc01e02f7d740832272ac9565ea43b5cccdacac0e066b99124f4f470fb20c222e0cb22df93e86f8ba852d16e864ce95dd605489d02bc9da62504290332020_6325d8040a8f13141499922b9193d72ab51e5474dc9b3672849ca328a2528d865470a306c5fa097e8bfaef38c69a4942c10a836a4a53d6e2b1701349bb9efff3821c6df4caf295d934eedcb99a3db80fc07b3b0af814cc5eb85f37148774f3cd8d3bc7e80c3355fb45c3a544971d5ca7663b8b32221c8c809f35aa267564747f"
TOKEN = "f2f014ce0814898c5b619d7e0e24cf8d06131ac9bdffbafc13eef32bb41b735cc8cd5716454a3ca7aadde6206bad788d166adea00b9ea8d67b4f83392fba1cff4a399034b70519cbdb7b1b4cce2b931fb80c694de5c1be6f7a743a989cf1670a60658bd21156635e3ecfa19e0d1f32fdc6498da03afdfaa3c9d5ce207428be1d924df3bca0525bcb68_9e01867c474e32cb007f6b545ca87031a7ccdc3c0b0f97b9663a097b68b8ad1553f215653d3c7398c5e08e2172dd74649a5c2cca293d6bc08d7baa92d4a681e2dca026219d1963b616011b006d566eb2e84b862217d688b19f31103eed5b6b7e7cb785ffe758dc4c5fe6302e510a53c7d5b8d63472d71563dfb47571bd1e99ccbab3ce0b47d8fac5b8"
# from secrets import g, p, x, h, flag
g = (2**100 - 1)*(2**101 - 1)
p = (2**1096) - 1
x = 3
h = g**x
flag = "you got the flag"

def xgcd(b, n):
    x0, x1, y0, y1 = 1, 0, 0, 1
    while n != 0:
        q, b, n = b // n, n, b % n
        x0, x1 = x1, x0 - q * x1
        y0, y1 = y1, y0 - q * y1
    return  b, x0, y0

def modinv(b, n):
    g, x, _ = xgcd(b, n)
    if g == 1:
        return x % n

def enc(m):
    M = int(binascii.hexlify(m), 16)
    # print len(bin(M))
    # print len(bin(p))
    assert len(bin(M)) < len(bin(p)), 'm too long'

    y = random.SystemRandom().randint(0, p-1)
    c1 = pow(g, y, p)
    c2 = (M * pow(h, y, p) ) % p 


    return c1, c2

def dec(c1, c2):
    s = pow(c1, x, p)
    M = (c2 * modinv(s, p)) % p

    try:
        res = str(binascii.unhexlify('{:x}'.format(M)))
    except TypeError:
        return ""

    return res

def login():
    # c = raw_input('Please input your access token: ').split('_')
    # c = TOKEN.split('_')
    m = "#overlord"
    M = int(binascii.hexlify(m), 16)
    token = '{:x}_{:x}'.format(1, M)
    print(token)
    c = token.split("_")
    c1 = int(c[0], 16)
    c2 = int(c[1], 16)
    user, role = dec(c1, c2).split('#')
    print('\nWelcome {}!'.format(user))
    print('Your role is \'{}\'.\n'.format(role))
    if role == 'overlord':
        print('Here\'s your flag: {}'.format(flag))
    print('That\'s all, nothing else happening here.')

def register():
    username = raw_input('Your username: ')
    role = raw_input('Your role: ')

    if role == 'overlord':
        print('nope, you\'re not the overlord...')
        return
    c = enc('%s#%s' % (username, role))
    token = '{:x}_{:x}'.format(c[0], c[1])


    print('Here is your access token:\n{}'.format(token))

if __name__ == '__main__':
    print('What do you want to do?')
    print('[1] Login')
    print('[2] Register')
    choice = raw_input('> ')

    if choice == '1':
        login()
    elif choice == '2':
        print register()
