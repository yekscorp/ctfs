#!/usr/bin/python
import optparse
from sympy.solvers import solve
from sympy import Symbol

def makeNextFraction(fraction):
    (a,b) = fraction
    res=b/a
    a1=b%a
    b1=a
    return res, (a1,b1)

def makeContinuedFraction(fraction):
    (a,b) = fraction
    v=[]
    v.append(0)
    while not a == 1:
        r, fraction = makeNextFraction(fraction)
        (a,b) = fraction
        v.append(r)
    v.append(b)
    return v

def makeIndexedConvergent(sequence, index):
    (a,b)=(1,sequence[index])
    while index>0:
        index-=1
        (a,b)=(b,sequence[index]*b+a)
    return (b,a)

def makeConvergents(sequence):
    r=[]
    for i in xrange(0,len(sequence)):
        r.append(makeIndexedConvergent(sequence,i))
    return r

def solveQuadratic(a,b,c):
    x = Symbol('x')
    return solve(a*x**2 + b*x + c, x)

def wienerAttack(N,e):
    conv=makeConvergents(makeContinuedFraction((e,N)))
    for frac in conv:
        (k,d)=frac
        if k == 0:
            continue
        phiN=((e*d)-1)/k
        roots=solveQuadratic(1, -(N-phiN+1), N)
        if len(roots) == 2:
            p,q=roots[0]%N,roots[1]%N
            if(p*q==N):
                return p, q

if __name__ == '__main__':
    # n =0x624d0c1c938cb50badd063227b2b22067772aaa6e1b8b3d39a3f8ce4998ab2bab43eb82fe45c255e3393537ca6b40027c9fdb9216cee85424ca32aa2a4d0ed91349ff93b409e853f1a0869e46d5ce61cdf93bf3af6de5b2b8ee63fb7ac0927240bfb5ef510d265236b45b83e7672614d398721d82e9cf6ddab2082517337e279206b7d6f5764394c46e0e8ed70c03e5b54a1c783f0d4e301cae3397155daca9d85f2a56fa35fb235824c08b9eea186072d58c230a36a62b6e4ec4692332fc1573d07a0b199186ad9b3b3c5856379b517ee5ef0af4ab99e7831f4cf3210c3abc56eceff1d3e43dd9497b9837fa26c24f8f8647746ddb891775a94dc201b64431d

    n =0xe60af5a2461cf86dcbd1b55cf4b9726be3b33ea4cd59669de37a9c9ccaa0d3dfd61ebea99c40b1c6ae8d0ffcb0f3b86f76009a8e51831f8e8df90338dee9c17346f1b1cb17cd015657129fec7eb3c804750aaa10d541105a59177bab631410f9aa02727109a72d1bfeabc59ed45d1a09bf338e5bf4b02d59a650510a3d4a50b2aa1536c57751d14cc494911da7c4cd1fb173c30f1bff1460133b0c36d6326dd424f85b27f1134e9febefa52fc112607da92f66c0793725381b3c4b92a05efbe19962700dd687907167196057a0df8e33aa31b069099f4115793cb98960699a1d6b7e47d5ef3516086c8837149ed212bca42be24e5dea579fa809c98374f3dc48
    e = 65537
    p, q = wienerAttack(n, e)
    print "-p", p
    print "-q", q
    print "-e", e
    # parser = optparse.OptionParser()
    # parser.add_option('-n', dest='n', help='modulus', type='int')
    # parser.add_option('-e', dest='e', help='public exponent', type='int')
    #
    # try:
    #     (options, args) = parser.parse_args()
    #
    #     if options.n and options.e:
    #         e=options.e
    #         p, q = wienerAttack(options.n, options.e)
    #         print "-p", p
    #         print "-q", q
    #         print "-e", e
    #     else:
    #         parser.print_help()
    #         parser.error('n and e must be specified')
    #
    # except optparse.OptionValueError, e:
    #     parser.print_help()
    #     parser.error(e.msg)