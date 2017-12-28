from ctf_tools.op_tools import *

def fr_related_msg(m_3,m_31, n):
    """ Franklin-Reiter related message attack 
        Good for messages that are different by 1
        
        m3      = m^e mod n
        m_31    = (m+1)^e mod n
    
    """
    m_n1 = m_31 + 2 * m_3 - 1
    m_n2 = m_31 - m_3 + 2
    f = m_n1 % n
    g = m_n2 % n
    sol1 = xgcd(f, n)
    sol2 = xgcd((1 - n * sol1[2]) * g / f, n)
    m = sol2[1]
    m2 = -m
    if m < 0:
        m += n
    if (m ** 3 % n) != m_3:
        m = m2
    if m < 0:
        m += n
    return m