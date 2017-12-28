import random


def encrypt(msg, key):
    keylen = len(key)
    k = [x[1] for x in sorted(zip(key[:keylen], range(keylen)))]

    c = ''
    for i in k:
        r = range(i, len(msg), keylen)
        for j in r:
            c += msg[j]

    print c

def decrypt(msg, k):
    m = [""] * len(msg)
    # k.reverse()
    order = []

    for i in k:
        r = range(i, len(msg), 8)
        order.extend(r)

    for i, pos in enumerate(order):
        m[pos] = msg[i]

    return "".join(m)


m = "03_duCbr5e_i_rY_or cou14:L4G f313_Th_etrph00 Wh03UBl_oo?n07!_e"
import itertools
for x in itertools.permutations(range(8)):
    f = decrypt(m, x)
    f2 = decrypt(f, x)
    if "34C3" in f2:
        print f2
# # m = raw_input()
#
#
# while True:
#     k = [random.randrange(256) for _ in range(16)]  # generate 2 keys
#     if len(k) == len(set(k)):
#         break
#
# m = encrypt(m, k[:8])
# m = encrypt(m, k[:8])
#
# print(m)