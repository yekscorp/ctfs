#!/usr/bin/python

import os
import sys
import math
import copy

sbox =  [0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67,
        0x2b, 0xfe, 0xd7, 0xab, 0x76, 0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59,
        0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0, 0xb7,
        0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1,
        0x71, 0xd8, 0x31, 0x15, 0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05,
        0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75, 0x09, 0x83,
        0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29,
        0xe3, 0x2f, 0x84, 0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b,
        0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf, 0xd0, 0xef, 0xaa,
        0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c,
        0x9f, 0xa8, 0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc,
        0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2, 0xcd, 0x0c, 0x13, 0xec,
        0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19,
        0x73, 0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee,
        0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb, 0xe0, 0x32, 0x3a, 0x0a, 0x49,
        0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
        0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4,
        0xea, 0x65, 0x7a, 0xae, 0x08, 0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6,
        0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a, 0x70,
        0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9,
        0x86, 0xc1, 0x1d, 0x9e, 0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e,
        0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf, 0x8c, 0xa1,
        0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0,
        0x54, 0xbb, 0x16]

rsbox = [0x52, 0x09, 0x6a, 0xd5, 0x30, 0x36, 0xa5, 0x38, 0xbf, 0x40, 0xa3,
        0x9e, 0x81, 0xf3, 0xd7, 0xfb , 0x7c, 0xe3, 0x39, 0x82, 0x9b, 0x2f,
        0xff, 0x87, 0x34, 0x8e, 0x43, 0x44, 0xc4, 0xde, 0xe9, 0xcb , 0x54,
        0x7b, 0x94, 0x32, 0xa6, 0xc2, 0x23, 0x3d, 0xee, 0x4c, 0x95, 0x0b,
        0x42, 0xfa, 0xc3, 0x4e , 0x08, 0x2e, 0xa1, 0x66, 0x28, 0xd9, 0x24,
        0xb2, 0x76, 0x5b, 0xa2, 0x49, 0x6d, 0x8b, 0xd1, 0x25 , 0x72, 0xf8,
        0xf6, 0x64, 0x86, 0x68, 0x98, 0x16, 0xd4, 0xa4, 0x5c, 0xcc, 0x5d,
        0x65, 0xb6, 0x92 , 0x6c, 0x70, 0x48, 0x50, 0xfd, 0xed, 0xb9, 0xda,
        0x5e, 0x15, 0x46, 0x57, 0xa7, 0x8d, 0x9d, 0x84 , 0x90, 0xd8, 0xab,
        0x00, 0x8c, 0xbc, 0xd3, 0x0a, 0xf7, 0xe4, 0x58, 0x05, 0xb8, 0xb3,
        0x45, 0x06 , 0xd0, 0x2c, 0x1e, 0x8f, 0xca, 0x3f, 0x0f, 0x02, 0xc1,
        0xaf, 0xbd, 0x03, 0x01, 0x13, 0x8a, 0x6b , 0x3a, 0x91, 0x11, 0x41,
        0x4f, 0x67, 0xdc, 0xea, 0x97, 0xf2, 0xcf, 0xce, 0xf0, 0xb4, 0xe6,
        0x73 , 0x96, 0xac, 0x74, 0x22, 0xe7, 0xad, 0x35, 0x85, 0xe2, 0xf9,
        0x37, 0xe8, 0x1c, 0x75, 0xdf, 0x6e , 0x47, 0xf1, 0x1a, 0x71, 0x1d,
        0x29, 0xc5, 0x89, 0x6f, 0xb7, 0x62, 0x0e, 0xaa, 0x18, 0xbe, 0x1b ,
        0xfc, 0x56, 0x3e, 0x4b, 0xc6, 0xd2, 0x79, 0x20, 0x9a, 0xdb, 0xc0,
        0xfe, 0x78, 0xcd, 0x5a, 0xf4 , 0x1f, 0xdd, 0xa8, 0x33, 0x88, 0x07,
        0xc7, 0x31, 0xb1, 0x12, 0x10, 0x59, 0x27, 0x80, 0xec, 0x5f , 0x60,
        0x51, 0x7f, 0xa9, 0x19, 0xb5, 0x4a, 0x0d, 0x2d, 0xe5, 0x7a, 0x9f,
        0x93, 0xc9, 0x9c, 0xef , 0xa0, 0xe0, 0x3b, 0x4d, 0xae, 0x2a, 0xf5,
        0xb0, 0xc8, 0xeb, 0xbb, 0x3c, 0x83, 0x53, 0x99, 0x61 , 0x17, 0x2b,
        0x04, 0x7e, 0xba, 0x77, 0xd6, 0x26, 0xe1, 0x69, 0x14, 0x63, 0x55,
        0x21, 0x0c, 0x7d]

Rcon = [0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36,
        0x6c, 0xd8, 0xab, 0x4d, 0x9a, 0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97,
        0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa, 0xef, 0xc5, 0x91, 0x39, 0x72,
        0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a, 0x94, 0x33, 0x66,
        0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d, 0x01, 0x02, 0x04,
        0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d,
        0x9a, 0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3,
        0x7d, 0xfa, 0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61,
        0xc2, 0x9f, 0x25, 0x4a, 0x94, 0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a,
        0x74, 0xe8, 0xcb, 0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40,
        0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a, 0x2f, 0x5e, 0xbc,
        0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa, 0xef, 0xc5,
        0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a,
        0x94, 0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d,
        0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c,
        0xd8, 0xab, 0x4d, 0x9a, 0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35,
        0x6a, 0xd4, 0xb3, 0x7d, 0xfa, 0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4,
        0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a, 0x94, 0x33, 0x66, 0xcc,
        0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d, 0x01, 0x02, 0x04, 0x08,
        0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a,
        0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d,
        0xfa, 0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2,
        0x9f, 0x25, 0x4a, 0x94, 0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74,
        0xe8, 0xcb ]

def transpose(s):
    assert len(s) == 16
    res = [0] * 16
    for i in range(4):
        for j in range(4):
            res[j*4+i] = s[i*4 + j]
    return res

# --------------------- KS ---------------------------------------------

def ks_rotate(word):
    return word[1:] + word[:1]

def ks_core(word, iteration):
    word = ks_rotate(word)
    for i in range(4):
        word[i] = sbox[word[i]]
    word[0] = word[0] ^ Rcon[iteration]
    return word

def ks_expand(key, size=16, expandedKeySize=16*11):
    currentSize = 0
    rconIteration = 1
    expandedKey = [0] * expandedKeySize

    for j in range(size):
        expandedKey[j] = key[j]
    currentSize += size

    while currentSize < expandedKeySize:
        t = expandedKey[currentSize-4:currentSize]

        if currentSize % size == 0:
            t = ks_core(t, rconIteration)
            rconIteration += 1
        if size == 32 and ((currentSize % size) == 16):
            for l in range(4): t[l] = sbox[t[l]]

        for m in range(4):
            expandedKey[currentSize] = expandedKey[currentSize - size] ^ t[m]
            currentSize += 1

    res = []
    for i in xrange(0, expandedKeySize, 16):
        res.append( transpose(expandedKey[i:i+16]) )
    return res

def gmul(a, b):
    """Galois multiplication of 8 bit characters a and b."""
    p = 0
    for counter in range(8):
        if b & 1: p ^= a
        hi_bit_set = a & 0x80
        a <<= 1
        # keep a 8 bit
        a &= 0xFF
        if hi_bit_set:
            a ^= 0x1b
        b >>= 1
    return p


def AddRoundKey(state, key):
    return [a ^ b for a, b in zip(state, key)]

def SubBytes(state, inverse=False):
    return map( (rsbox if inverse else sbox).__getitem__, state)

def ShiftRows(state, inverse=False):
    state = state[::]
    for i in range(4):
        state[i*4:i*4+4] = ShiftRow(state[i*4:i*4+4], i, inverse=inverse)
    return state

def ShiftRow(row, nr, inverse=False):
    for _ in xrange(nr):
        if inverse:
            row = row[3:4] + row[:3]
        else:
            row = row[1:4] + row[:1]
    return row

def MixColumns(state, inverse=False):
    for i in range(4):
        state[i:i+16:4] = MixColumn(state[i:i+16:4], inverse=inverse)
    return state

from itertools import product
gmulTable = [gmul(a, b) for a, b in product(range(256), repeat=2)]

def gmul(a, b):
    return gmulTable[(a<<8)|b]

def MixColumn(column, inverse=False):
    if inverse: mult = [14, 9, 13, 11]
    else: mult = [2, 1, 1, 3]
    cpy = column
    column = list(column)

    column[0] = gmul(cpy[0], mult[0]) ^ gmul(cpy[3], mult[1]) ^ gmul(cpy[2], mult[2]) ^ gmul(cpy[1], mult[3])
    column[1] = gmul(cpy[1], mult[0]) ^ gmul(cpy[0], mult[1]) ^ gmul(cpy[3], mult[2]) ^ gmul(cpy[2], mult[3])
    column[2] = gmul(cpy[2], mult[0]) ^ gmul(cpy[1], mult[1]) ^ gmul(cpy[0], mult[2]) ^ gmul(cpy[3], mult[3])
    column[3] = gmul(cpy[3], mult[0]) ^ gmul(cpy[2], mult[1]) ^ gmul(cpy[1], mult[2]) ^ gmul(cpy[0], mult[3])
    return column

SB = SubBytes
SBi = lambda s: SB(s, inverse=True)
SR = ShiftRows
SRi = lambda s: SR(s, inverse=True)
MC = MixColumns
MCi = lambda s: MC(s, inverse=True)
AK = Aki = AddRoundKey
XOR = AK

ks = None

def encrypt(plain, nr=10):
    s = transpose(map(ord, plain))
    s = state_encrypt(s, nr=nr)
    return ["".join(map(chr, transpose(x))) for x in s]

def decrypt(plain, nr=10):
    s = transpose(map(ord, plain))
    s = state_decrypt(s, nr=nr)
    return ["".join(map(chr, transpose(x))) for x in s]

def state_encrypt(s, nr=None):
    nr = nr
    e_rounds = [copy.deepcopy(s)]
    for r in xrange(nr):
        s = AK(s, ks[r])
        e_rounds.append(copy.deepcopy(s))
        s = SB(s)
        e_rounds.append(copy.deepcopy(s))
        s = SR(s)
        e_rounds.append(copy.deepcopy(s))
        if r < nr-1:
            s = MC(s)
            e_rounds.append(copy.deepcopy(s))
    s = AK(s, ks[nr])
    e_rounds.append(copy.deepcopy(s))
    return e_rounds

def state_decrypt(s, nr=None):
    nr = nr
    d_rounds = [copy.deepcopy(s)]
    s = AK(s, ks[nr])
    d_rounds.append(copy.deepcopy(s))
    for r in reversed(range(nr)):
        if r < nr - 1:
            s = MC(s, inverse=True)
            d_rounds.append(copy.deepcopy(s))
        s = SR(s, inverse=True)
        d_rounds.append(copy.deepcopy(s))
        s = SB(s, inverse=True)
        d_rounds.append(copy.deepcopy(s))
        if r != 2:

            s = AK(s, ks[r])
            d_rounds.append(copy.deepcopy(s))
    return d_rounds

def set_key32(k, nr, verbose=False):
    global ks
    ks = ks_expand(map(ord, k), size=32, expandedKeySize=16*(nr+1))
    if verbose:
        for k in ks:
            print k
