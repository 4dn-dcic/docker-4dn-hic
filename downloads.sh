#!/bin/sh

## SOFTWARE: fastqc
## VERSION: 0.11.5
#wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip
#unzip fastqc_v0.11.5.zip
#cd FastQC/
#chmod 755 fastqc
#cd ..


## SOFTWARE: bwa
## VERSION: 0.7.16a-r1185-dirty
## COMMIT: 340babdd671eeeb3c7bfbf2e4ad1e761ece94983
## This version of bwa is used because it has the -5 option.
git clone https://github.com/lh3/bwa
cd bwa
git checkout 340babdd671eeeb3c7bfbf2e4ad1e761ece94983
make
cd ..
mv bwa bwa-0.7.16a-r1185-dirty
ln -s bwa-0.7.16a-r1185-dirty bwa


## SOFTWARE: samtools
## VERSION: 1.2
wget https://github.com/samtools/samtools/releases/download/1.2/samtools-1.2.tar.bz2
tar -xjf samtools-1.2.tar.bz2
cd samtools-1.2
make
cd ..
ln -s samtools-1.2 samtools


## SOFTWARE: pairix
## VERSION: 0.2.5
wget https://github.com/4dn-dcic/pairix/archive/0.2.5.tar.gz
tar -xzf 0.2.5.tar.gz
rm 0.2.5.tar.gz
cd pairix-0.2.5
make
cd ..
ln -s pairix-0.2.5 pairix


## SOFTWARE: cooler
## VERSION: 0.7.4
pip3 install cooler==0.7.4


## SOFTWARE: pairsqc
## VERSION: 0.2.0
wget https://github.com/4dn-dcic/pairsqc/archive/0.2.0.tar.gz
tar -xzf 0.2.0.tar.gz
rm 0.2.0.tar.gz
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
pip3 install -r requirements.txt
cd ..


## SOFTWARE: mcool2hic
## COMMIT: f2d1283
git clone https://github.com/SooLee/mcool2hic.git
cd mcool2hic
git checkout f2d1283
cd ..


## SOFTWARE: pairsamtools
## COMMIT: 9c30f5a6e6d5cd07076d8229df8bbd505004e151
pip3 install numpy Cython click
conda config --add channels conda-forge
conda config --add channels bioconda
conda install -y pbgzip
conda install -y coreutils
pip3 install git+https://github.com/mirnylab/pairsamtools.git@9c30f5a6e6d5cd07076d8229df8bbd505004e151

