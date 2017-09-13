#!/bin/bash

fastq1=$1
fastq2=$2
index_file=$3
outdir=$4
prefix=$5
nThreads=$6

cd $outdir

# unzip index
tar -xzf $index_file
index=`ls -1 *.bwt | head -1 | sed 's/\.bwt//g'`

# unzip fastq files
if [[ $fastq1 =~ \.gz$ ]]
then
  cp $fastq1 $outdir/fastq1.gz
  gunzip $oudir/fastq1.gz
else
  cp $fastq1 $outdir/fastq1
fi
  fastq1=$outdir/fastq1

if [[ $fastq2 =~ \.gz$ ]]
then
  cp $fastq2 $outdir/fastq2.gz
  gunzip $oudir/fastq2.gz
else
  cp $fastq2 $outdir/fastq2
fi
  fastq2=$outdir/fastq2


# run bwa
bwa mem -t $nThreads -SP5M $index $fastq1 $fastq2 | samtools view -Shb - > $prefix.bam

