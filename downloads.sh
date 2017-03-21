#!/bin/sh

## SOFTWARE: bwa
## VERSION: 0.7.15-1142-dirty
## COMMIT: 5961611c358e480110793bbf241523a3cfac049
## This version of bwa is used because it has the -5 option.
git clone https://github.com/lh3/bwa
cd bwa
git checkout 5961611c358e480110793bbf241523a3cfac049b
make
cd ..
mv bwa bwa-0.7.15-1142-dirty
ln -s bwa-0.7.15-1142-dirty bwa


## SOFTWARE: samtools
## VERSION: 1.2
wget https://github.com/samtools/samtools/releases/download/1.2/samtools-1.2.tar.bz2
tar -xjf samtools-1.2.tar.bz2
cd samtools-1.2
make
cd ..
ln -s samtools-1.2 samtools


## SOFTWARE: pairix
## VERSION: 0.1.0
wget https://github.com/4dn-dcic/pairix/archive/0.1.0.tar.gz
tar -xzf 0.1.0.tar.gz
cd pairix-0.1.0
make
cd ..
ln -s pairix-0.1.0 pairix


## SOFTWARE: bam2pairs
## VERSION: 0.0.2
wget https://github.com/4dn-dcic/bam2pairs/archive/0.0.2.tar.gz
tar -xzf 0.0.2.tar.gz
ln -s bam2pairs-0.0.2 bam2pairs


## SOFTWARE: cooler
## VERSION: 0.6.6
pip install cooler==0.6.6
