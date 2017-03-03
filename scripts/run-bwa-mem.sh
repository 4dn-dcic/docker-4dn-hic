#!/bin/bash

fastq1=$1
fastq2=$2
index_file=$3
prefix=$4
nThreads=$5

# unzip index
tar -xzf $index_file
index=`ls -1 *.bwt | head -1 | sed 's/\.bwt//g'`

# unzip fastq files
if [[ $fastq1 =~ \.gz$ ]]
then
  gunzip $fastq1
  fastq1=${fastq1/%\.gz/}
fi

if [[ $fastq2 =~ \.gz$ ]]
then
  gunzip $fastq2
  fastq2=${fastq2/%\.gz/}
fi

# run bwa
bwa mem -t $nThreads -SP5 $index $fastq1 $fastq2 | samtools view -Shb - > $prefix.bam

