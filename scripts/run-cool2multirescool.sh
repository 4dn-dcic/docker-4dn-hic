#!/bin/sh
input=$1
ncores=$2
outprefix=$3
cooler coarsegrain $input -n $ncores -o $outprefix.multires.cool

