
class AES(object):

    def __init__(self, key, mode, iv=None):
        assert len(key) in [8,12,16]
        self.key = key
        self.mode = mode
        self.iv = iv

    def key_expansion(self,k):



def pkcs7(msg, block_size):
    padding = block_size - len(msg)%block_size
    return msg + chr(padding) * padding

if __name__ ==  "__main__":
    print pkcs7("YELLOW SUBMARINE",20)
