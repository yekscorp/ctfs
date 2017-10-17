#!/usr/bin/python2

flag = "flag{}"
from base64 import b64decode, b64encode
from SocketServer import ThreadingTCPServer
from sys import argv
from binascii import hexlify, unhexlify
import SocketServer
import os

N = 8
MAX_TRIES = 1024
PAD = 64

welcome = "Welcome! :-)\n"
menu = "What would you like to do:\n\t1: supply encoded input,\n\t2: tell me my secret\n> "

def gen_secret():
    return os.urandom(N)

def crypt(s1, s2):
    z = zip(s1,s2)
    a = map(lambda c: chr(((ord(c[0])^ord(c[1]))+PAD)%256), z)
    # print a
    return "".join(a)

b64chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz+/"
def decode(s, secret):
    enc = ""
    s = crypt(s, secret)
    
    for c in s:
        if c in b64chars:
            enc+=c

    if len(enc) % 4 == 1:
        enc = enc[:-1]

    while len(enc) % 4 != 0:
        enc+="="

    return b64decode(enc)

class Handler(object):
    def handle(self):
        print welcome
        for i in range(MAX_TRIES):
            print "Round number: {}\n{}".format(i, menu)
            req = ra
            if self.request.recv(2)[0] == "1":
                answer = raw_input("What would you like me to decode?\n> ")
                answer = self.request.recv(len(self.secret))
                decoded = decode(answer, self.secret)
                self.request.send("Alright, here is your answer: {}\n".format(decoded))

            else:
                self.request.send("Alright, what is my secret (hex encoded)?\n> ")
                answer = self.request.recv(2 * len(self.secret) + 1).rstrip()
                if answer == hexlify(self.secret):
                    self.request.send("Well done, here is your flag: {}\n".format(flag))
                else:
                    self.request.send("This was not what I was looking for. :-(\n")
                break
class B64Handler(SocketServer.BaseRequestHandler):
    def setup(self):
        self.tries = 0
        self.secret = gen_secret()

    def handle(self):
        self.request.send(welcome)
        for i in range(MAX_TRIES):
            self.request.send("Round number: {}\n{}".format(i, menu))
            if self.request.recv(2)[0] == "1":
                self.request.send("What would you like me to decode?\n> ")
                answer = self.request.recv(len(self.secret))
                decoded = decode(answer, self.secret)
                self.request.send("Alright, here is your answer: {}\n".format(decoded))

            else:
                self.request.send("Alright, what is my secret (hex encoded)?\n> ")
                answer = self.request.recv(2*len(self.secret)+1).rstrip()
                if answer==hexlify(self.secret):
                    self.request.send("Well done, here is your flag: {}\n".format(flag))
                else:
                    self.request.send("This was not what I was looking for. :-(\n")
                break

        self.request.send("Bye!\n")

def main():
    SocketServer.ThreadingTCPServer.allow_reuse_address = True
    if len(argv) < 2:
        print("Usage: {} <PORT>".format(argv[0]))
    else:
        LOCAL_PORT = int(argv[1])
        s = SocketServer.ThreadingTCPServer(("", LOCAL_PORT), B64Handler)
        try:
            s.serve_forever()
        except KeyboardInterrupt:
            print("shutting down")
            s.shutdown()
            s.socket.close()

if __name__ == "__main__":
    a = os.urandom(N)
    # a = 'c2a670609795f2af'.decode('hex')
    print a.encode('hex')

    print crypt(a, "\x00\x00\x00\x00\x00\x00\x00\x00")
    print "Decode"
    trials = [0]*8
    baseline = decode(a,"\x00\x00\x00\x00\x00\x00\x00\x00").encode('base64').replace("=","").replace("\n","")
    char_count = len(baseline)
    final_list = [None]*8
    double_try = False
    while char_count < 8:
        for i,v in enumerate(trials):
            if final_list[i] is not None:
                continue
            trials[i] = 0
            trial_str = "".join([chr(x) for x in trials])
            new_str = decode(a, trial_str)
            new_str = b64encode(new_str).replace("=","").replace("\n","")
            if len(new_str) > len(baseline):
                print new_str
                final_list[i] = trials[i]
                baseline = new_str
                continue
            else:
                for n in range(1,256):

                    trials[i] = n
                    if len(baseline) == 4:
                        trials[i+1] = n
                        double_try = True
                    trial_str = "".join([chr(x) for x in trials])
                    new_str = decode(a,trial_str).encode('base64').replace("=","").replace("\n","")
                    print "Char: %s Guess: %s Str: %s" % (i, n, new_str)
                    if len(new_str) > len(baseline):
                        print new_str
                        final_list[i] = trials[i]
                        if double_try:
                            final_list[i+1] = trials[i+1]
                            double_try = False
                        baseline = new_str
                        break
            char_count = len(baseline)
    print "hello"
    print trials
    print final_list
    print baseline
    final_dec = decode(a,trial_str).encode('base64').replace("\n","")
    fl = list(final_dec)
    fl = [(ord(x) - 64) for x in fl]
    for i, x in enumerate(fl):
        if x < 0:
            x = x + 256
            pass
        fl[i] = x
        pass

    zx = zip(fl,trials)
    final = []
    for z in zx:
        final.append(chr(z[0]^z[1]))
        pass

    print "".join(final).encode('hex')
    print a.encode('hex')


