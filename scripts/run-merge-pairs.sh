#!/bin/sh
outprefix=$1
shift
pairs_merger $@ |bgzip -c > $outprefix.pairs.gz
pairix -f -s2 -b3 -e3 -d4 -u5 $outprefix.pairs.gz
