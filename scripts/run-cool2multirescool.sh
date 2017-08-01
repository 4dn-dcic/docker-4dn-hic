#!/bin/sh
input=$1
ncores=$2
outprefix=$3
chunksize=$4

cooler zoomify --balance $input -n $ncores -o $outprefix.multires.cool -c $chunksize

