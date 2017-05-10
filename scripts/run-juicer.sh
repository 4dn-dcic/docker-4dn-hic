#!/bin/bash

fastq1=$1
fastq2=$2
index_file=$3
chromsize_file=$4
restriction_file=$5


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


juicer_dir=/usr/local/bin/
mkdir -p data_dir/fastq data_dir/splits data_dir/aligned
mv $fastq1 $fastq2 data_dir/fastq/
juicer.sh -z $index -d data_dir -p $chromsize_file -y $restriction_file -D $juicer_dir


