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
## VERSION: 0.1.6
wget https://github.com/4dn-dcic/pairix/archive/0.1.6.tar.gz
tar -xzf 0.1.6.tar.gz
cd pairix-0.1.6
make
cd ..
ln -s pairix-0.1.6 pairix


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
## COMMIT: 855e6291c6926371aeeab3d5f96b3895c0cdb171
git clone https://github.com/theaidenlab/juicer
cd juicer
git checkout 855e6291c6926371aeeab3d5f96b3895c0cdb171
chmod +x CPU/* CPU/common/*
ln -s CPU scripts
cd ..


## SOFTWARE: hic2cool
## VERSION: 0.3.3
wget https://github.com/4dn-dcic/hic2cool/archive/0.3.3.tar.gz
tar -xzf 0.3.3.tar.gz
cd hic2cool-0.3.3
pip install -r requirements.txt
cd ..
ln -s hic2cool-0.3.3 hic2cool
