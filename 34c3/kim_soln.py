import urllib
import urllib2
import subprocess

url = 'http://35.198.133.163:1337/files/'
h = '952bb2a215b032abe27d24296be099dc3334755c'
d = 'f=sample.gif'
a = '&f=flag'

proxy = urllib2.ProxyHandler({'http':'gatekeeper.mitre.org:80'})
opener = urllib2.build_opener(proxy)
urllib2.install_opener(opener)

for k in range(1,100):
    a = subprocess.check_output(['hashpump','-s',h,'--data',d,'-a',a,'-k',str(k)])
    b = a.split('\n')
    req = urllib2.Request(url+b[0]+"/",b[1])
    response = urllib2.urlopen(req)
    print response.read()
    break
