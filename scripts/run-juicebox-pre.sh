#!/bin/bash
input_pairs=$1
chromsizefile=$2
output_prefix=$3
min_res=$4   # e.g. 5000
higlass=$5   # if 1, higlass-compatible aggregation

# creating a hic file
java -jar juicer_tools  pre -n $input_pairs $output_prefix.hic $chromsizefile

# normalization
if (( $higlass == 1 ))
then
    reslist=$(python3 -c "from cooler.contrib import higlass; higlass.print_zoom_resolutions('$chromsizefile', $min_res)")
    java -jar juicer_tools addNorm -w $reslist -d -F $output_prefix.hic
elif
then
    java -jar juicer_tools addNorm -w $min_res -d -F $output_prefix.hic
fi

