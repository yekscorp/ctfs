from encrypted import *
from collections import Counter

enc_nums = enc_numbers_no_hash
enc_asc = enc_ascii_no_hash

enc_nums = enc_numbers
enc_asc = enc_ascii

def shift(data,offset):
    return data[offset:] + data[:offset]
    
def count_same(a,b):
    count = 0
    for x, y in zip(a,b):
        if x == y:
            count += 1
    return count

print 'key lengths'
for key_len in range(1,64):
    freq = count_same(enc_nums, shift(enc_nums,key_len))
    print '{0:< 3d} | {1:3d} |'.format(key_len, freq) + "=" * (freq/4)
    
key_len = 8
freqs = []
for i in range(key_len):
    freq = Counter()
    for ch in enc_asc[i::key_len]:
        freq[ch] += 1
    freqs.append(freq)
    
print freqs

print 'guesses for most common letters'
key_numbers = []
for freq in freqs:
    k = ord(freq.most_common(1)[0][0]) ^ ord(' ')
    print '{k} -> \' \''.format(**locals())
    key_numbers.append(k)
    others = ''
    for val, f in freq.most_common(10):
        others += chr(ord(val)^k) + ' '
    print 'Other common letters: {others}\n'.format(**locals())
