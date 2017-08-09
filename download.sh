#!/bin/bash
#python get_cwl.py -a hi-c-processing-parta -r 9 -t $SBG_TOKEN
python get_cwl.py -a hi-c-processing-parta-juicer -r 5 -t $SBG_TOKEN
python get_cwl.py -a hi-c-processing-partb -r 38 -t $SBG_TOKEN
python get_cwl.py -a hi-c-processing-partc -r 1 -t $SBG_TOKEN
python get_cwl.py -a sha256 -r 2 -t $SBG_TOKEN
python get_cwl.py -a md5-validate -r 1 -t $SBG_TOKEN
python get_cwl.py -a validate -r 10 -t $SBG_TOKEN
python get_cwl.py -a md5 -r 4 -t $SBG_TOKEN
python get_cwl.py -a merge-pairs -r 25 -t $SBG_TOKEN
python get_cwl.py -a pairs2hic -r 15 -t $SBG_TOKEN
python get_cwl.py -a cooler -r 19 -t $SBG_TOKEN
python get_cwl.py -a bam2pairs -r 2 -t $SBG_TOKEN
python get_cwl.py -a sort-bam -r 3 -t $SBG_TOKEN
python get_cwl.py -a fastqc-0-11-4-1 -r 7 -t $SBG_TOKEN
python get_cwl.py -a fastqc-0-11-4 -r 4 -t $SBG_TOKEN
python get_cwl.py -a bam2matrix2 -r 0 -t $SBG_TOKEN
python get_cwl.py -a bam2hdf5 -r 0 -t $SBG_TOKEN
python get_cwl.py -a fastq2bam -r 0 -t $SBG_TOKEN
python get_cwl.py -a gitar-v0-2 -r 0 -t $SBG_TOKEN

