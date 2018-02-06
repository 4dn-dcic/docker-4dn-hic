#!/bin/bash
input_mcool=$1
chromsizefile=$2
outdir=$3
output_prefix=$4
nres=$5
min_res=$6

if [ "$#" -ne 6 ]; then
    echo "Illegal number of parameters"
    exit 1;
fi

cp $input_mcool $outdir/$output_prefix.mcool
scriptdir=/usr/local/bin
res_list=$(python3 -c "from cooler.contrib import higlass; higlass.print_zoom_resolutions('$chromsizefile', $min_res)")
python3 $scriptdir/mcool2hic/get_bins_from_mcool.py -i $outdir/$output_prefix.mcool -o $outdir/$output_prefix.mcool.bins -n $nres
$scriptdir/mcool2hic/convert_mcoolbins_to_juicer_format.pl $outdir/$output_prefix.mcool.bins $res_list $outdir/$output_prefix.mcool.normvector.juicerformat
cd $outdir
gzip $output_prefix.mcool.normvector.juicerformat

