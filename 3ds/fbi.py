a = ["DUTGYPIXLJERWBKQAOSZMVHCNF", 10, "KXGUKHK FUNRVKHT NQGKC UKDYSUK KXGUKHK TNVYGSNCT"]
abc = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
def rotate_string_left(s, n):
    return s[n:] + s[:n]

def rotate_string_right(s, n):
    return s[-n:] + s[:-n]

if __name__ == "__main__":
    b = rotate_string_right(a[0], a[1])
    c = rotate_string_left(a[0], a[1])
    res1 = ""
    res2 = ""
    for x in a[2]:
        if x == " ":
            res1 += " "
            res2 += " "
            continue
        res1 += abc[b.find(x)]
        res2 += abc[c.find(x)]
    print res1
    print res2
    print "5368616d6972".decode('hex')