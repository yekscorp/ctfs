import sys
sys.path.append("../Deadpool")
sys.path.append("../JeanGrey")
import deadpool_dfa
import phoenixAES
import binascii
target = './whitebox.bin'

def processinput(iblock, blocksize):
    p = '%0*x' % (2*blocksize, iblock)
    a = binascii.a2b_hex(p)
    a = [chr(x) for x in a]
    a = "".join(a)
    a = [a]
    return (None, a)

def processoutput(output, blocksize):
    output = output.decode('utf-8')
    return int(output.replace(' ',"").replace("\n",""),16)

def run_attack():
    #addresses = (292362,373092+10)
    addresses="./wb_dfa.log"
    engine=deadpool_dfa.Acquisition(targetbin=target, targetdata=target, goldendata=target+".gold",
                                    iblock=0x30303030303030303030303030303030, maxleaf=10,minleaf=1,addresses=addresses, dfa=phoenixAES,
                                    processinput=processinput, processoutput=processoutput,verbose=2)
    tracefiles=engine.run()
    print(tracefiles)
    for tracefile in tracefiles:
        if phoenixAES.crack(tracefile[0]):
            break



if __name__ == "__main__":
    run_attack()
