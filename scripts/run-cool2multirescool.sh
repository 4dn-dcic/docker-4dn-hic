#!/bin/bash
shopt -s extglob
ncores=1
chunksize=10000000
juicer_res=0  # if 1, use juicer resolutions
outprefix=out

printHelpAndExit() {
    echo "Usage: ${0##*/} [-p ncores] [-c chunksize] [-j] [-o out_prefix] -i input_pairs"
    echo "-i input_pairs : input file in pairs.gz format"
    echo "-o out_prefix : default out"
    echo "-p ncores : default 1"
    echo "-c chunksize : default 10000000"
    echo "-j : use Juicer resolutions (default HiGlass resolutions)"
    exit "$1"
}

while getopts "i:o:p:c:j" opt; do
    case $opt in
        i) input=$OPTARG;;
        o) outprefix=$OPTARG;;
        p) ncores=$OPTARG;;
        c) chunksize=$OPTARG;;
        j) juicer_res=1;;
        h) printHelpAndExit 0;;
        [?]) printHelpAndExit 1;;
        esac
done


if [[ $juicer_res == "1" ]]; then
    RES_ARG="-r 5000,10000,25000,50000,100000,250000,500000,1000000,2500000"
fi

cooler zoomify --balance $input -n $ncores -o $outprefix.multires.cool -c $chunksize $RES_ARG

