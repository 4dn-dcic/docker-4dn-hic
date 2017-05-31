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
gunzip -c $f | grep -v '^#' > pp.$k &
let "k++"
done

# header
gunzip -c $1 | grep "^#" | grep -v '^#command:' | bgzip -c > $outprefix.pairs.gz
for f in $@
do
  gunzip -c $f | grep '^#command:' | bgzip -c >> $outprefix.pairs.gz
done

# merging 
sort -m -k2,2 -k4,4 -k3,3g -k5,5g $arg | bgzip -c >> $outprefix.pairs.gz

# indexing
pairix -f $outprefix.pairs.gz

# clean up
k=1
for f in $@
do
rm pp.$k
let "k++"
done

