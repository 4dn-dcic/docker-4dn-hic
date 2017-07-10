#!/bin/bash

input_mcool=$1
outdir=$2
output_prefix=$3
nres=$4

python3 get_bins_from_mcool.py -i $input_mcool -o $outdir/$output_prefix.mcool.bins -n $nres
./convert_mcoolbins_to_juicer_format.pl $outdir/$output_prefix.mcool.bins $outdir/$output_prefix.mcool.normvector.juicerformat
cd $outdir
gzip $output_prefix.mcool.normvector.juicerformat

