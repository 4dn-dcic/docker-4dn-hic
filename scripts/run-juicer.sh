#!/bin/bash

fastq1=$1
fastq2=$2
index_file=$3
fasta=$4
chromsize_file=$5
restriction_file=$6


# unzip index
tar -xzf $index_file
index=`ls -1 *.bwt | head -1 | sed 's/\.bwt//g'`

# reference fasta 
# (they must have the same prefix as the contents of the index file 
# and they should be in the same directory.)
if [[ $fasta =~ \.gz$ ]]
then
  gunzip $fasta
  fasta=${fasta/%\.gz/}
fi
mv $fasta .

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


juicer_dir=/usr/local/bin/juicer/
mkdir -p data_dir/fastq
mv $fastq1 $fastq2 data_dir/fastq/
juicer.sh -z $index -d /usr/local/bindata_dir -p $chromsize_file -y $restriction_file -D $juicer_dir -S early
mv data_dir/fastq data_dir/splits data_dir/aligned/merged_nodups.txt .
