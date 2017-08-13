#!/bin/bash

input_hic=$1
input_mcool=$2
outdir=$3

output_mcool=$outdir/output.mcool
cp $input_mcool $output_mcool 

cd $outdir

scriptdir=/usr/local/bin/
python3 $scriptdir/hic2cool/hic2cool_extractnorms.py $input_hic $output_mcool -e


