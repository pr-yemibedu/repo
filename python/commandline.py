import sys

if (len(sys.argv) - 1) < 1:
    print "no arguments supplied"
else:
    print len(sys.argv),"arguments entered including the script name"
    print "The arguments are:"
    for arg in sys.argv:
        print arg,