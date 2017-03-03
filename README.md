# Docker-4dn-hic

This repo contains the source files for a docker image stored in duplexa/4dn-hic:v1. (we will change the docker hub account soon)

## Table of contents
* [Cloning the repo](#cloning-the-repo)
* [Tool specifications](#tool-specifications)
* [Building docker image](#building-docker-image)
* [Sample data](#sample-data)
* [Tool wrappers](#tool-wrappers)
  * [run-bwa-mem.sh](#run-bwa-memsh)
  * [run-sort-bam.sh](#run-sort-bamsh)
  * [run-bam2pairs.sh](#run-bam2pairssh)
  * [run-merge-pairs.sh](#run-merge-pairssh)
  * [run-cooler.sh](#run-coolersh)


## Cloning the repo
```
git clone https://github.com/4dn-dcic/docker-4dn-hic
cd docker-4dn-hic
```

## Tool specifications
Major software tools used inside the docker container are downloaded by the script `downloads.sh`. This script also creates a symlink to a version-independent folder for each software tool. In order to build an updated docker image with a new version of the tools, ideally only `downloads.sh` should be modified, but not `Dockerfile`, unless the new tool requires a specific APT tool that need to be downloaded. 
The `downloads.sh` file also contains comment lines that specifies the name and version of individual software tools.

## Building docker image
You need docker daemon to rebuild the docker image. If you want to push it to a different docker repo, replace duplexa/4dn-hic:v1 with your desired docker repo name. You need permission to push to duplexa/4dn-hic:v1.
```
docker build -t duplexa/4dn-hic:v1 .
docker push duplexa/4dn-hic:v1
```

## Sample data
Sample data files that can be used for testing the tools are included in the `sample_data` folder. These data are not included in the docker image.

## Tool wrappers

Tool wrappers follow naming conventions `run-xx.sh`. These wrappers are copied to the docker image at built time and may be used as a single step in a workflow.

### run-bwa-mem.sh
Alignment module for Hi-C data, based on bwa-mem.
* Input : a pair of Hi-C fastq files
* Output : a bam file (Lossless, not sorted by coordinate)

#### Usage
Run the following in the container.
```
run-bwa-mem.sh <fastq1> <fastq2> <bwaIndex> <output_prefix> <nThreads>
# fastq1, fastq2 : input fastq files, either gzipped or not
# bwaIndex : tarball for bwa index, .tgz.
# output_prefix : prefix of the output bam file.
# nThreads : number of threads 
```

### run-sort-bam.sh
Data-type-independent, generic bam sorting module
* Input : any unsorted bam file (.bam)
* Output : a bam file sorted by coordinate (.sorted.bam) and its index (.sorted.bam.bai).

#### Usage
Run the following in the container.
```
run-sort-bam.sh <input_bam> <output_prefix>
# input_bam : any bam file to be sorted
# output_prefix : prefix of the output bam file.
```

### run-bam2pairs.sh
Bam to pairs conversion module for Hi-C data, based on samtools, bgzip and pairix.
* Input : any paired-end bam file
* Output : a chromosome-block-sorted and bgzipped pairs pairs file that contains all the mapped read pairs in the bam file, along with its index (.bsorted.pairs.gz and .bsorted.pairs.gz.px2)

#### Usage
Run the following in the container.
```
run-bam2pairs.sh <input_bam> <output_prefix>
# input_bam : input bam file.
# output_prefix : prefix of the output pairs file.
```

### run-merge-pairs.sh
Alignment module for Hi-C data, based on merge-pairs.
* Input : a set of pairs files, with their associated indices
* Output : a merged pairs file and its index

#### Usage
Run the following in the container.
```
run-merge-pairs.sh <outdir> <output_prefix> <pairs1> <pairs2> [<pairs3> [...]]  
# outdir: output directory
# output_prefix : prefix of the output pairs file.
# pairs1, pairs2, ... : input pairs files
```

### run-cooler.sh
Data-type-independent, generic bam sorting module
* Input : a pairs file (.gz, along with .px2), chrom.size file
* Output : a contact matrix file (.cool)

#### Usage
Run the following in the container.
```
run-cooler.sh <input_pairs> <chromsize> <binsize> <max_iter> <output_prefix>
# input_pairs : a pairs file
# chromsize : a chromsize file
# binsize : binsize in bp
# max_iter : max number of iteration (default is 200)
# output_prefix : prefix of the output cool file
```
