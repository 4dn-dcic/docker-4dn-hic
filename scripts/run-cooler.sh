#!/bin/sh
pairs_file=$1  # bgzipped, with .px2 index
chrsize_file=$2
bin_size=$3
max_iter=$4 # e.g. 3000 (default 200)
ncores=$5 # (default 8)
out_prefix=$6

cp $chrsize_file ./tmpchrsize

# make bin file (skipped)
# cooler makebins -o ./tmpchrsize:$bin_size ./tmpchrsize $bin_size

# the cload command requires the chrom size file to exist besides the chrom size bin file.
cooler cload pairix -p $ncores ./tmpchrsize:$bin_size $pairs_file $out_prefix.cool

# matrix balancing
cooler balance --max-iters $max_iter $out_prefix.cool

