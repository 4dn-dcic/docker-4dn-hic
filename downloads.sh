#!/bin/sh

## SOFTWARE: fastqc
## VERSION: 0.11.5
#wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip
#unzip fastqc_v0.11.5.zip
#cd FastQC/
#chmod 755 fastqc
#cd ..


## SOFTWARE: bwa
## VERSION: 0.7.17
## TYPE: aligner
wget https://github.com/lh3/bwa/archive/v0.7.17.tar.gz
tar -xzf v0.7.17.tar.gz
cd bwa-0.7.17
make
cd ..
ln -s bwa-0.7.17 bwa


## SOFTWARE: samtools
## VERSION: 1.2
wget https://github.com/samtools/samtools/releases/download/1.2/samtools-1.2.tar.bz2
tar -xjf samtools-1.2.tar.bz2
cd samtools-1.2
make
cd ..
ln -s samtools-1.2 samtools


## SOFTWARE: pairix
## VERSION: 0.3.3
wget https://github.com/4dn-dcic/pairix/archive/0.3.3.tar.gz
tar -xzf 0.3.3.tar.gz
rm 0.3.3.tar.gz
cd pairix-0.3.3
make
cd ..
ln -s pairix-0.3.3 pairix


## SOFTWARE: cooler
## VERSION: 0.7.6
pip3 install cooler==0.7.6


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
## COMMIT: 49489c
pip3 install numpy Cython click
conda config --add channels conda-forge
conda config --add channels bioconda
conda install -y pbgzip
conda install -y coreutils
pip3 install git+https://github.com/mirnylab/pairsamtools.git#49489c

