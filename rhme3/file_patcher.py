bad_strs = ['\xbf\x39\x05\x00\x00\xe8\x5e\xef\xff\xff','\xbf\x18\x26\x40\x00\xe8\x7c\xee\xff\xff']
bad_strs = ['\xc6\x45\xf7\x00\xbf\x18\x26\x40\x00\xe8\x7c\xee\xff\xff\xbf\x39\x05\x00\x00\xe8\x5e\xef\xff\xff\x89\x45\xf8\x8b\x45\xf8\x89\xc7\xe8\xc6\xf0\xff\xff']

#\x48\x8b\x05\x8b\x0f\x20\x00\xbe\x00\x00\x00\x00\x48\x89\xc7\xe8\xee\xea\xff\xff\xbf\x20\x26\x40\x00\xe8\x94\xea\xff\xff\x48\x8b\x05\x6d\x0f\x20\x00\x48\x89\xc7\xe8\xc5\xeb\xff\xff\xe9\x92\x00\x00\x00']

a = open('./main.elf','rb').read()

for bad_str in bad_strs:
    a = a.replace(bad_str,"\x90"*len(bad_str))
    pass

b = open('./main_mod.elf','wb').write(a)
