#!/bin/sh
input_pairs=$1
chromsize=$2
sample_name=$3
enzyme=$4 # either 4 or 6
outdir=$5

scriptdir=/usr/local/bin/pairsqc/
python $scriptdir/pairsqc.py -p $input_pairs -c $chromsize -tP -n $sample_name -O $sample_name
Rscript $scriptdir/plot.r $enzyme $sample_name\_report
zip $sample_name\_report.zip $sample_name\_report
mv $sample_name\_report.zip $outdir
