#!/bin/bash

input_mcool=$1
outdir=$2
output_prefix=$3
nres=$4

cp $input_mcool $outdir/$output_prefix.mcool
scriptdir=/usr/local/bin
python3 $scriptdir/mcool2hic/get_bins_from_mcool.py -i $outdir/output_prefix.mcool -o $outdir/$output_prefix.mcool.bins -n $nres
$scriptdir/mcool2hic/convert_mcoolbins_to_juicer_format.pl $outdir/$output_prefix.mcool.bins $outdir/$output_prefix.mcool.normvector.juicerformat
cd $outdir
gzip $output_prefix.mcool.normvector.juicerformat

