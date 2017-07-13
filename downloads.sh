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
## VERSION: 0.2.0
wget https://github.com/4dn-dcic/pairix/archive/0.2.0.tar.gz
tar -xzf 0.2.0.tar.gz
cd pairix-0.2.0
make
cd ..
ln -s pairix-0.2.0 pairix


## SOFTWARE: cooler
## VERSION: 0.7.4
pip install cooler==0.7.4


## SOFTWARE: pairsqc
## VERSION: 0.2.0
wget https://github.com/4dn-dcic/pairsqc/archive/0.2.0.tar.gz
tar -xzf 0.2.0.tar.gz
ln -s pairsqc-0.2.0 pairsqc


## SOFTWARE: juicebox
## VERSION: 1.6.2-cuda8
wget http://hicfiles.tc4ga.com.s3.amazonaws.com/public/juicer/juicer_tools.1.6.2_linux_jcuda.0.8.jar
ln -s /usr/local/bin/juicer_tools.1.6.2_linux_jcuda.0.8.jar juicer_tools.jar


## SOFTWARE: juicer
## COMMIT: e6d60097e589878bdf277fba6d88075430041273
git clone https://github.com/SooLee/juicer.git
cd juicer
chmod +x CPU/* CPU/common/*
ln -s CPU scripts
cd ..


## SOFTWARE: hic2cool
## COMMIT: 1aee5e744d36a4a44c8b7dd13bab4563d7f56a09
git clone https://github.com/SooLee/hic2cool.git
cd hic2cool
git checkout 1aee5e744d36a4a44c8b7dd13bab4563d7f56a09
pip install -r requirements.txt
cd ..


## SOFTWARE: mcool2hic
## COMMIT: 34b5430e8b9cfd8f01203e0821b68efe4897b18f 
git clone https://github.com/SooLee/mcool2hic.git
cd mcool2hic
get checkout 34b5430e8b9cfd8f01203e0821b68efe4897b18f
cd ..
 
