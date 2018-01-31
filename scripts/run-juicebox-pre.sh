#!/bin/bash
shopt -s extglob
mapqfilter=0
min_res=5000
maxmem=64g
higlass=0  # if 1, higlass-compatible aggregation
output_prefix=out

printHelpAndExit() {
    echo "Usage: ${0##*/} [-q mapqfilter] [-m maxmem] [-r min_res] [-g] [-o out_prefix] -i input_pairs -c chromsize_file"
    echo "-q mapqfilter : default 0"
    echo "-m maxmem : default 64g"
    echo "-r min_res : default 5000"
    echo "-g : use HiGlass resolutions (default juicer resolutions)"
    echo "-o out_prefix : default out"
    echo "-i input_pairs : input file in pairs.gz format"
    echo "-c chromsize_file : chromsizes file"
    exit "$1"
}

while getopts "i:c:q:r:m:go:" opt; do
    case $opt in
        i) input_pairs=$OPTARG;;
        c) chromsizefile=$OPTARG;;
        q) mapqfilter=$OPTARG;;
        r) min_res=$OPTARG;;
        m) maxmem=$OPTARG;;
        g) higlass=1 ;;
        o) output_prefix=$OPTARG;;
        h) printHelpAndExit 0;;
        [?]) printHelpAndExit 1;;
        esac
done

# creating a hic file
if [[ $higlass == '1' ]]
then
    reslist=$(python3 -c "from cooler.contrib import higlass; higlass.print_zoom_resolutions('$chromsizefile', $min_res)")
    java -Xmx$maxmem -Xms$maxmem -jar /usr/local/bin/juicer_tools.jar pre -n $input_pairs $output_prefix.hic $chromsizefile -r $reslist -q $mapqfilter
else
    java -Xmx$maxmem -Xms$maxmem -jar /usr/local/bin/juicer_tools.jar pre -n $input_pairs $output_prefix.hic $chromsizefile -q $mapqfilter
fi

# normalization
java -Xmx$maxmem -Xms$maxmem -jar /usr/local/bin/juicer_tools.jar addNorm -w $min_res -d -F $output_prefix.hic


