from ctf_tools import op_tools
import glob
from secretsharing import SecretSharer, points_to_secret_int
from itertools import combinations


def get_files():
    f_names = glob.glob("./*.key")
    res = []
    for f_name in f_names:
        if "master" in f_name or "joker" in f_name:
            continue
        a = open(f_name,'rb').read()
        a = a.replace("(","").replace(")","")
        l = a.split(", ")
        l = [int(x) for x in l]
        res.append(l)

    print res
    return res

if __name__ == "__main__":
    secrets = [(x[0],x[1]) for x in get_files()]
    print secrets

    for s in combinations(secrets,4):
        print s
        print op_tools.n2s(points_to_secret_int(list(s)))
    print op_tools.n2s(get_files()[0][2])
    print pow(2,256)
