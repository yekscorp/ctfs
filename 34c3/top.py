from ctf_tools import op_tools
import random
import sys
import time

cur_time = str(time.time()).encode('ASCII')
print cur_time
# random.seed(cur_time)
#
# msg = raw_input('Your message: ').encode('ASCII')
# key = [random.randrange(256) for _ in msg]
# c = [m ^ k for (m,k ) in zip(msg + cur_time, key + [0x88]*len(cur_time))]
#
# print c.encode('hex')
# # with open(sys.argv[1], "wb") as f:
# #     f.write(bytes(c))

ct = open('ct_top.txt','rb').read()
print op_tools.sxor('\x88'*len(ct),ct)
cur_time = 1513719133.8728752
random.seed(cur_time)
# ct = ct[:len(ct)-18]
key = "".join([chr(random.randrange(256)) for _ in ct])
print op_tools.sxor(ct,key)