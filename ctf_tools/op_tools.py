import base64
import itertools

def b64(msg):
    return base64.b64encode(msg)


def d64(msg):
    return base64.b64decode(msg)


def h2b64(hex_str):
    return b64(hex_str.decode('hex'))

def n2s(n):
    '''converts a number to string'''
    a ='{0:x}'.format(n)
    # print a
    if (len(a) % 2) == 1:
        a = "0" + a
        pass
    return a.decode('hex')

def s2n(s):
    return int(s.encode('hex'),16)

def sxor(s1, s2):
    """ Return a string XOR of two strings.
    Convert strings to a list of character pair tuples
    go through each tuple, converting them to ASCII code (ord)
    perform exclusive or on the ASCII code
    then convert the result back to ASCII (chr)
    merge the resulting array of characters as a string
    """
    return ''.join(chr(ord(a) ^ ord(b)) for a, b in zip(s1, s2))


def hex_sxor(hex_s1, hex_s2):
    """ Return Hex encoded XOR of two Hex Encoded Strings"""
    return sxor(hex_s1.decode('hex'), hex_s2.decode('hex')).encode('hex')


def is_ascii(c):
    return 0x20 <= ord(c) < 0x7F

def hamming_dist(s1, s2):
    '''Returns hamming distance of two strings'''
    assert len(s1) == len(s2)
    xor = sxor(s1,s2)
    return ''.join(format(x, 'b') for x in bytearray(xor)).count('1')

def transpose(ct_strs):
    ''' Transposes a list of strings into a new list of strings where index i is the ith character of each string
    in the original list'''
    cols = ["" for _ in range(len(ct_strs[0]))]
    for ct in ct_strs:
        ct_l = list(ct)
        # print len(ct_l)
        for i, v in enumerate(ct_l):
            cols[i]+= v
            pass
        pass
    return cols

def str_to_block(s, block_size):
    """ returns a list of strings of length block size, excess is removed"""
    n = len(s)/block_size
    res = []
    for i in range(n):
        sub_s = s[i*block_size:i*block_size+block_size]
        res.append(sub_s)
    return res

def xgcd(b, n):
    x0, x1, y0, y1 = 1, 0, 0, 1
    while n != 0:
        q, b, n = b // n, n, b % n
        x0, x1 = x1, x0 - q * x1
        y0, y1 = y1, y0 - q * y1
    return  b, x0, y0

def mulinv(b, n):
    g, x, _ = xgcd(b, n)
    if g != 1:
        raise Exception('modular inverse does not exist')
    else:
        return x % n

def isqrt(n):
  x = n
  y = (x + n // x) // 2
  while y < x:
    x = y
    y = (x + n // x) // 2
  return x


def fermat(n):
    a = isqrt(n)
    b2 = a*a - n
    b = isqrt(n)
    count = 0
    while b*b != b2:
        a = a + 1
        b2 = a*a - n
        b = isqrt(b2)
        count += 1
    p=a+b
    q=a-b
    assert n == p * q
    return p, q

if __name__ == "__main__":
    # print hamming_dist("this is a test","wokka wokka!!!")
    # print str_to_block("A"*8 + "B"*8,8)
    print n2s(s2n('hello'))