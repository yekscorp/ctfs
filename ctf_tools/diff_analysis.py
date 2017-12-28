from collections import Counter

def invert_sbox(sbox):
    inv_sbox = [None] * len(sbox)
    for i, v in enumerate(sbox):
        inv_sbox[v] = i
        pass
    return inv_sbox

def analyze_sbox(sbox):
    table = {}
    print len(sbox)
    delta_xs = range(256)
    for delta_x in delta_xs:
        delta_ys = []
        for x in range(256):
            x2 = x ^ delta_x
            y = sbox[x]
            y2 = sbox[x2]
            delta_ys.append(y ^ y2)
            pass
        table[delta_x] = Counter(delta_ys)
        pass
    res = [[0]*256]*256
    for k,v in table.iteritems():
        for val in v.items():
            res[k][val[0]] = val[1]
        print "%s: %s" % (k,v.most_common(1))

    return res

