import sys
from HTMLParser import HTMLParser

class MyHTMLParser(HTMLParser):
    def reset(self):
        HTMLParser.reset(self)
        self.hrefs = []
        
    def handle_starttag(self, tag, attrs):
        href = [v for k,v in attrs if k.lower() == 'href']
        if href: print href[0]

def parse_line(p, l):
    try:
        p.feed(l)
        p.close()
    except Exception, e:
        pass    

parser = MyHTMLParser()
if sys.argv.count < 2:
    print 'usage: ExtractLinks <path>'
    sys.exit(1)
    
for line in open(sys.argv[1]).readlines():
    parser.reset()
    parse_line(parser, line)
    
        
    