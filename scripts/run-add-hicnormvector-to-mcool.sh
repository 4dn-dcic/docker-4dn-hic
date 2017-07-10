#!/bin/bash

input_hic=$1
input_mcool=$2
$outdir=$3

cp $input_mcool $outdir 
output_mcool=$outdir/

cd $outdir
output_mcool=`ls -1 *.mcool | head -1`

scriptdir=/usr/local/bin/
python3 $scriptdir/hic2cool/hic2cool_extractnorms.py $input_hic $output_mcool -e


