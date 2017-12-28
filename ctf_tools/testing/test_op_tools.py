import unittest
import ctf_tools.op_tools as op_tools

class OpToolsTest(unittest.TestCase):
    def test_b2b64(self):
        hex_str = '49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d'
        b64_str = 'SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t'
        self.assertEqual(op_tools.h2b64(hex_str),b64_str)

    def test_hex_sxor(self):
        hs1 = "1c0111001f010100061a024b53535009181c"
        hs2 = "686974207468652062756c6c277320657965"
        res = "746865206b696420646f6e277420706c6179"
        self.assertEqual(op_tools.hex_sxor(hs1,hs2),res)

if __name__ == "__main__":
    unittest.main()