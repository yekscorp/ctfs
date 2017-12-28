from collections import Counter
from gutenberg.acquire import load_etext
from gutenberg.cleanup import strip_headers


def freq_analyze_str(s):
    c = Counter(s)
    return c.most_common(len(c.items()))


def get_list_most_common_chars(s, newline_chrs=False):
    if not newline_chrs:
        s = s.replace("\n", "").replace("\r", "")

    freq_pt = freq_analyze_str(s)
    return [chr(ord(x[0])) for x in freq_pt]


def get_common_english_freq(newline_chrs=False):
    '''Returns List of english chars for most to least common
    in the Adventures of Sherlock Holmes'''
    #pt = strip_headers(load_etext(467)).strip()
    # return get_list_most_common_chars(pt, newline_chrs)
    return [' ', 'e', 't', 'a', 'o', 'h', 'n', 's', 'i', 'r', 'd', 'u', 'l', 'm', 'w', 'f', 'c', ',', 'g', 'y', 'p',
            'v', 'b', 'k', ';', 'I', '.', '"', 'C', 'M', 'D', "'", 'T', 'N', 'x', 'Q', 'j', 'P', 'K', '-', 'q', ':',
            'A', 'S', 'V', '?', 'H', 'E', 'W', 'F', 'G', 'L', 'B', 'Y', 'O', '!', 'z', 'R', 'J', 'U', 'X', ')', '(']

if __name__ == "__main__":
    print get_common_english_freq(False)
