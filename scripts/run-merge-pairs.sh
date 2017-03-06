#!/bin/bash
outprefix=$1
shift

# unzipping to named pipes
arg=''
k=1
for f in $@
do
mkfifo pp.$k
arg="$arg pp.$k"
gunzip -c $f > pp.$k &
let "k++"
done

# merging 
sort -m -k2,2 -k4,4 -k3,3g -k5,5g $arg | bgzip -c > $outprefix.pairs.gz

# indexing
pairix -f -s2 -b3 -e3 -d4 -u5 $outprefix.pairs.gz
