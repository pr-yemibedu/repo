NAME="Brian Pfeil"
echo ${NAME} # output: Brian Pfeil
echo ${NAME:6} # substring 6 to end. output: Pfeil

# if AGE defined return AGE; otherwise return 30
echo ${AGE:-30} # output: 30

AGE=32
echo ${AGE:-30} # output: 32