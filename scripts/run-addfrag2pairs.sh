#!/bin/bash
shopt -s extglob
donothing=0

printHelpAndExit() {
    echo "Usage: ${0##*/} [-0] input_pairs restriction_file(juicer_format) output_prefix"
    exit "$1"
}

while getopts "0" opt; do
    case $opt in
        0) donothing=1 ;;
        h) printHelpAndExit 0;;
        [?]) printHelpAndExit 1;;
        esac
done

if [ "$donothing" == "1" ]; then
    shift $(($OPTIND - 1))
fi

input_pairs=$1
restriction_file=$2  # Juicer format
output_prefix=$3

echo $input_pairs

if [ "$donothing" == "0" ]; then
    scriptdir=/usr/local/bin
    gunzip -c $input_pairs | $scriptdir/pairix/util/fragment_4dnpairs.pl -a - $output_prefix.ff.pairs $restriction_file
    bgzip -f $output_prefix.ff.pairs
    pairix -f $output_prefix.ff.pairs.gz
else
    cp $input_pairs $output_prefix.ff.pairs.gz
    if [ -e "$input_pairs.px2" ]; then
        cp $input_pairs.px2 $output_prefix.ff.pairs.gz.px2
    else
        pairix -f $output_prefix.ff.pairs.gz
    fi
fi
