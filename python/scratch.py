import sys
import os

if len(sys.argv) != 2:
    print "usage: " + sys.argv[0] + " <command>"
    sys.exit(1)
    
output = os.popen(sys.argv[1])
record = ''
for line in output.readlines():
    for field in line.strip().split(" "):
        field = field.strip()
        if field != '':
            record += field + ','
    print record
    record=''