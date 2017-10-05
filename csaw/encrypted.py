enc_hex='''274c10121a0100495b502d551c557f0b0833585d1b27030b5228040d3753490a1c025415051525455118001911534a0052560a14594f0b1e490a010c4514411e070014615a181b02521b580305170002074b0a1a4c414d1f1d171d00151b1d0f480e491e0249010c150050115c505850434203421354424c1150430b5e094d144957080d4444254643'''
enc_hex_no_hash = enc_hex[:len(enc_hex)-64]
f = open('crypto_no_hash.txt','w')
f.write(enc_hex_no_hash)
f.close()
enc_ascii = enc_hex.decode('hex')
enc_ascii_no_hash = enc_hex_no_hash.decode('hex')
f = open('crypto_no_hash_ascii.txt','w')
f.write(enc_ascii_no_hash)
f.close()
enc_numbers = [ord(ch) for ch in enc_ascii]
enc_numbers_no_hash = [ord(ch) for ch in enc_ascii_no_hash]

