import op_tools
import freq_analysis
import string

def guess_single_byte_xor(ct):

    ref = freq_analysis.get_common_english_freq(newline_chrs=True)
    freq_info = freq_analysis.get_list_most_common_chars(ct, newline_chrs=True)


    total_count = float(len(ct))
    best_count = 0
    best_chr = None
    for i in ref[:26]:
        count = 0
        k_byte = op_tools.sxor(freq_info[0], i)
        k = k_byte * len(ct)
        pt = op_tools.sxor(ct,k)
        for c in pt:
            if c in list(string.lowercase + string.uppercase + " " + "." + "," + "!"):
                count += 1

        if count > best_count:
            best_count = count
            best_chr = k_byte

    percent = float(best_count)/total_count
    return best_chr, best_count, percent

def repeating_key_xor_crypto(pt, key):
    ''' XORS a string with a key that repeats to the len of the string'''
    k_len = len(key)
    pt_len = len(pt)
    n = pt_len/k_len
    m = pt_len%k_len
    crypto_key = key * n + key[:m]
    ct = op_tools.sxor(pt, crypto_key)
    return ct

def find_repeating_key_len(ct, max_search=40):

    ham_dists = []

    if max_search * 2 > len(ct):
        max_search = len(ct)/2

    for i in range(2,max_search+1):
        d1 = float(op_tools.hamming_dist(ct[0:i],ct[i:2*i]))
        d2 = float(op_tools.hamming_dist(ct[2*i:3*i],ct[3*i:4*i]))
        avg_d = (d1+d2)/2
        ham_dists.append((i,avg_d/i))

    ham_dists.sort(key=lambda k:k[1])
    trials = [x[0] for x in ham_dists]

    best_avg = 0
    best_key_len = 0
    best_key = None

    for trial in trials:
        print "Trying Key Len %s" % trial
        blocks = op_tools.str_to_block(ct,trial)
        t_blocks = op_tools.transpose(blocks)
        trial_key = ""
        trial_avgs = 0
        for t_block in t_blocks:
            c, count, avg = guess_single_byte_xor(t_block)
            trial_avgs += avg
            trial_key += c
            pass
        trial_avg = trial_avgs/trial
        if trial_avg > best_avg:
            best_avg = trial_avg
            best_key = trial_key
            best_key_len = trial

    print "Best Key Found - Len %s - Key: %s - with Avg %s" % (best_key_len,best_key,best_avg)
    print repeating_key_xor_crypto(ct, best_key)



if __name__ == "__main__":
    with open('../crypto_pals/7.txt') as f:
        ct = f.read()

    import Crypto.Cipher.AES as AES
    key = "YELLOW SUBMARINE"
    cipher = AES.new(key, AES.MODE_ECB)
    print cipher.decrypt(op_tools.d64(ct.replace("\n","")))
    # find_repeating_key_len(op_tools.d64(ct.replace("\n","")))
    # pt = "Burning 'em, if you ain't quick and nimble\nI go crazy when I hear a cymbal"
    # ct = repeating_key_xor_crypto(pt, 'ICE').encode('hex')
    # print op_tools.sxor(ct,"0b3637272a2b2e63622c2e69692a23693a2a3c6324202d623d63343c2a26226324272765272" \
    # "a282b2f20430a652e2c652a3124333a653e2b2027630c692b20283165286326302e27282f").encode('hex')



