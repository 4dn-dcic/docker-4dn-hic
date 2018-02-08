#!/bin/sh


## SOFTWARE: bwa
## VERSION: 0.7.17
## TYPE: aligner
## SOURCE_URL: https://github.com/lh3/bwa
wget https://github.com/lh3/bwa/archive/v0.7.17.tar.gz
tar -xzf v0.7.17.tar.gz
cd bwa-0.7.17
make
cd ..
ln -s bwa-0.7.17 bwa


## SOFTWARE: samtools
## VERSION: 1.2
## TYPE: file format converter
## SOURCE_URL: https://github.com/samtools/samtools
wget https://github.com/samtools/samtools/releases/download/1.2/samtools-1.2.tar.bz2
tar -xjf samtools-1.2.tar.bz2
cd samtools-1.2
make
cd ..
ln -s samtools-1.2 samtools


## SOFTWARE: pairix
## VERSION: 0.3.3
## TYPE: file format converter,indexer
## SOURCE_URL: https://github.com/4dn-dcic/pairix
wget https://github.com/4dn-dcic/pairix/archive/0.3.3.tar.gz
tar -xzf 0.3.3.tar.gz
rm 0.3.3.tar.gz
cd pairix-0.3.3
make
cd ..
ln -s pairix-0.3.3 pairix


## SOFTWARE: cooler
## VERSION: 0.7.6
## TYPE: aggregator,normalizer
## SOURCE_URL: https://github.com/mirnylab/cooler
pip3 install cooler==0.7.6


## SOFTWARE: pairsqc
## VERSION: 0.2.3
## TYPE: quality metric generator
## SOURCE_URL: https://github.com/4dn-dcic/pairsqc
wget https://github.com/4dn-dcic/pairsqc/archive/0.2.3.tar.gz
tar -xzf 0.2.3.tar.gz
rm 0.2.3.tar.gz
ln -s pairsqc-0.2.3 pairsqc


## SOFTWARE: juicer_tools
## VERSION: 1.8.9-cuda8
## TYPE: aggregator,normalizer
## SOURCE_URL: https://github.com/theaidenlab/juicebox
wget http://hicfiles.tc4ga.com.s3.amazonaws.com/public/juicer/juicer_tools.1.8.9_jcuda.0.8.jar
ln -s /usr/local/bin/juicer_tools.1.8.9_jcuda.0.8.jar juicer_tools.jar


## SOFTWARE: juicer
## COMMIT: e6d60097e589878bdf277fba6d88075430041273
## TYPE: aligner,file format converter,sorter,annotater,filter,aggregator,normalizer
## SOURCE_URL: https://github.com/theaidenlab/juicer
git clone https://github.com/SooLee/juicer.git
cd juicer
chmod +x CPU/* CPU/common/*
ln -s CPU scripts
cd ..


## SOFTWARE: hic2cool
## VERSION: 0.4.1
## TYPE: file format converter
## SOURCE_URL: https://github.com/4dn-dcic/hic2cool
git clone https://github.com/4dn-dcic/hic2cool.git
cd hic2cool
git checkout 0.4.1
pip3 install -r requirements.txt
pip3 install hic2cool==0.4.1
cd ..

## SOFTWARE: mcool2hic
## COMMIT: 87a912c
## TYPE: file format converter
## SOURCE_URL: https://github.com/SooLee/mcool2hic
git clone https://github.com/SooLee/mcool2hic.git
cd mcool2hic
git checkout 87a912c
cd ..


## SOFTWARE: pairsamtools
## COMMIT: eccd21
## TYPE: file format converter,sorter,annotater,filter
## SOURCE_URL: https://github.com/mirnylab/pairsamtools
pip3 install numpy Cython click
conda config --add channels conda-forge
conda config --add channels bioconda
conda install -y pbgzip
conda install -y coreutils
pip3 install git+https://github.com/mirnylab/pairsamtools.git#eccd21

