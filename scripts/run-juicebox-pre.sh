#!/bin/bash
input_pairs=$1
chromsizefile=$2
output_prefix=$3
min_res=$4   # e.g. 5000

# creating a hic file
java -jar juicer_tools  pre -n $input_pairs $output_prefix.hic $chromsizefile

# normalization
java -jar juicer_tools addNorm -w $min_res -d -F $output_prefix.hic

