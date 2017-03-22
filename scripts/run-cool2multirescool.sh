#!/bin/sh
input=$1
ncores=$2
cooler coarsegrain $input -n $ncores

