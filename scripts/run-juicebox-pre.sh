#!/bin/bash
input_pairs=$1
chromsizefile=$2
output_prefix=$3
min_res=$4   # e.g. 5000
higlass=$5   # if 1, higlass-compatible aggregation
maxmem=$6   # e.g. 64g

# creating a hic file
if [[ $higlass == '1' ]]
then
    reslist=$(python3 -c "from cooler.contrib import higlass; higlass.print_zoom_resolutions('$chromsizefile', $min_res)")
    java -Xmx$maxmem -Xms$maxmem -jar /usr/local/bin/juicer_tools.jar pre -n $input_pairs $output_prefix.hic $chromsizefile -r $reslist
else
    java -Xmx$maxmem -Xms$maxmem -jar /usr/local/bin/juicer_tools.jar pre -n $input_pairs $output_prefix.hic $chromsizefile
fi

# normalization
java -Xmx$maxmem -Xms$maxmem -jar /usr/local/bin/juicer_tools.jar addNorm -w $min_res -d -F $output_prefix.hic


