# Docker-4dn-hic

This repo contains the source files for a docker image stored in 4dndcic/4dn-hic:v44. This branch is in development!

## Table of contents
* [Cloning the repo](#cloning-the-repo)
* [Tool specifications](#tool-specifications)
* [Building docker image](#building-docker-image)
* [Benchmarking tools](#benchmarking-tools)
* [Sample data](#sample-data)
* [Tool wrappers](#tool-wrappers)
  * [run-list.sh](#run-listsh)
  * [run-bwa-mem.sh](#run-bwa-memsh)
  * [run-sort-bam.sh](#run-sort-bamsh)
  * [run-bam2pairs.sh](#run-bam2pairssh)
  * [run-merge-pairs.sh](#run-merge-pairssh)
  * [run-cooler.sh](#run-coolersh) 
  * [run-cooler-balance.sh](#run-cooler-balancesh) 
  * [run-cool2multirescool.sh](#run-cool2multirescoolsh)
  * [run-pairsqc-single.sh](#run-pairsqc-singlesh)
  * [run-addfrag2pairs.sh](#run-addfrag2pairssh)
  * [run-juicebox-pre.sh](#run-juicebox-presh)
  * [run-juicer.sh](#run-juicersh)
  * [run-add-hicnormvector-to-mcool.sh](#run-add-hicnormvector-to-mcoolsh)
  * [run-mcool2hic.sh](#run-mcool2hicsh)
  * [run-fastqc.sh](#run-fastqcsh)
  * [run-pairsam-parse-sort.sh](#run-pairsam-parse-sortsh)
  * [run-pairsam-merge.sh](#run-pairsam-mergesh)
  * [run-pairsam-markasdup.sh](#run-pairsam-markasdupsh)
  * [run-pairsam-filter.sh](#run-pairsam-filtersh)
  * [run-mapq-pairs.sh](#run-mapq-pairssh)


## Cloning the repo
```
git clone https://github.com/4dn-dcic/docker-4dn-hic
cd docker-4dn-hic
```

## Tool specifications
Major software tools used inside the docker container are downloaded by the script `downloads.sh`. This script also creates a symlink to a version-independent folder for each software tool. In order to build an updated docker image with a new version of the tools, ideally only `downloads.sh` should be modified, but not `Dockerfile`, unless the new tool requires a specific APT tool that need to be downloaded. 
The `downloads.sh` file also contains comment lines that specifies the name and version of individual software tools.

## Building docker image
You need docker daemon to rebuild the docker image. If you want to push it to a different docker repo, replace 4dndcic/4dn-hic:v44 with your desired docker repo name. You need permission to push to 4dndcic/4dn-hic:v44.
```
docker build -t 4dndcic/4dn-hic:v44 .
docker push 4dndcic/4dn-hic:v44
```
You can skip this if you want to use an already built image on docker hub (image name 4dndcic/4dn-hic:v44). The command 'docker run' (below) automatically pulls the image from docker hub.


## Benchmarking tools
To obtain run time and max mem stats, use `usr/bin/time` that is installed in the docker container. For example, run the following to benchmark `du`.
```
docker run 4dndcic/4dn-hic:v44 /usr/bin/time du 2> log
cat log
```
The output looks as follows:
```
0.02user 0.82system 0:00.87elapsed 96%CPU (0avgtext+0avgdata 2024maxresident)k
0inputs+0outputs (0major+103minor)pagefaults 0swaps
```
The benchmarking result goes to STDERR, which can be collected by a file by redirecting with `2>`.
Maxmem is 2024KB in this case ('maxresident'). Run time is 0.87 second. ('elapsed')


## Sample data
Sample data files that can be used for testing the tools are included in the `sample_data` folder. These data are not included in the docker image.

## Tool wrappers

Tool wrappers are under the `scripts` directory and follow naming conventions `run-xx.sh`. These wrappers are copied to the docker image at built time and may be used as a single step in a workflow.

```
# default
docker run 4dndcic/4dn-hic:v44

# specific run command
docker run 4dndcic/4dn-hic:v44 <run-xx.sh> <arg1> <arg2> ...

# may need -v option to mount data file/folder if they are used as arguments.
docker run -v /data1/:/d1/:rw -v /data2/:/d2/:rw 4dndcic/4dn-hic:v44 <run-xx.sh> /d1/file1 /d2/file2 ...
```

### run-list.sh
Default command for this docker image. It lists the run commands available.

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
# outdir : output directory
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
run-merge-pairs.sh <output_prefix> <pairs1> <pairs2> [<pairs3> [...]]  
# output_prefix : prefix of the output pairs file.
# pairs1, pairs2, ... : input pairs files
```

### run-cooler.sh
Runs cooler to create an unnormalized matrix .cool file, taking in a (4dn-style) pairs file
* Input : a pairs file (.gz, along with .px2), chrom.size file
* Output : a contact matrix file (.cool)

#### Usage
Run the following in the container.
```
run-cooler.sh <input_pairs> <chromsize> <binsize> <ncores> <output_prefix> <max_split>
# input_pairs : a pairs file
# chromsize : a chromsize file
# binsize : binsize in bp
# ncores : number of cores to use
# output_prefix : prefix of the output cool file
# max_split : max_split argument for cooler (e.g. 2 which is default for cooler) 
```

### run-cooler-balance.sh
Runs cooler to create a normalized matrix file, taking in an unnormalized .cool file
* Input: a cool file (.cool)
* Output : a cool file (.cool)

#### Usage
Run the following in the container.
```
run-cooler-balance.sh <input_cool> <max_iter> <output_prefix> <chunksize>
# input_cool : a cool file (without normalization vector)
# max_iter : maximum number of iterations
# output_prefix : prefix of the output cool file
# chunksize : chunksize argument for cooler (e.g. 10000000 which is default for cooler)
```

### run-cool2multirescool.sh
Runs cooler coarsegrain to create multi-res cool file from a .cool file.
* Input : a cool file (.cool)
* Output : a multires.cool file (.multires.cool)

#### Usage
Run the following in the container.
```
run-cool2multirescool.sh -i <input_cool> [-p <ncores>] [-o <output_prefix>] [-c <chunksize>] [-j] [-u custom_res] [-B]
# input_cool : a (singe-res) cool file with the highest resolution you want in the multi-res cool file
# -p ncores: number of cores to use (default: 1)
# -o output_prefix: prefix of the output multires.cool file (default: out)
# -c chunksize : chunksize argument of cooler (e.g. default: 10000000)
# -j : juicer resolutions (default: use HiGlass resolutions)
# -u custom_res : custom resolutions separated by commas (e.g. 100000,200000,500000). The minimun of this set must match min_res (-r).
# -B : no balancing/normalization
```

### run-pairsqc-single.sh
Runs pairsqc on a single pairs file and generates a report zip file.
* Input: a pairs file, chromsize file
* Output: a zipped QC report file 

#### Usage
Run the following in the container.
```
run-pairsqc-single.sh <input_pairs> <chromsize> <sample_name> <enzyme> <outdir>
# input_pairs : a gzipped pairs file (.pairs.gz) with its pairix index (.px2)
# chromsize : a chromsize file
# sample_name : sample name - to be used as both the prefix of the report and the title of the sample in the report.
# enzyme : either 4 (4-cutter) or 6 (6-cutter)
# outdir : output directory
```

### run-addfrag2pairs.sh
Adds juicer frag information to pairs file and creates an updated pairs file.
* Input: a pairs file, a (juicer-style) restriction_site_file
* Output: a pairs file

#### Usage
Run the following in the container
```
run-addfrag2pairs.sh <input_pairs> <restriction_site_file> <output_prefix>
# input_pairs : a gzipped pairs file (.pairs.gz) with its pairix index (.px2)
# restriction_site_file : a text file containing positions of restriction enzyme sites, separated by space, one chromosome per line (Juicer style).
# output prefix: prefix of the output pairs file
```

### run-juicebox-pre.sh
Runs juicebox pre and addNorm on a pairs file and creates a hic file.
* Input: a pairs file, a chromsize file
* Output: a hic file

#### Usage
Run the following in the container
```
run-juicebox-pre.sh -i <input_pairs> -c <chromsize_file> [-o <output_prefix>] [-r <min_res>] [-g] [-u custom_res] [-m <maxmem>] [-q mapqfilter] [-B]
# -i input_pairs : a gzipped pairs file (.pairs.gz) with its pairix index (.px2), preferably containing frag information.
# -c chromsize_file : a chromsize file
# -o output prefix: prefix of the output hic file
# -r min_res : minimum resolution for whole-genome normalization (e.g. 5000)
# -g : higlass-compatible : if this flag is used, zoom levels are set in a Hi-Glass compatible way, if not, default juicebox zoom levels.
# -u custom_res : custom resolutions separated by commas (e.g. 100000,200000,500000). The minimun of this set must match min_res (-r).
# -m maxmem : java max mem (e.g. 14g)
# -q mapqfilter : mapq filter (e.g. 30, default 0)
# -n : normalization only : if this flag is used, binning is skipped.
# -B : no balancing/normalization
```

### run-juicer.sh
Runs juicer to create a merged_nodups file.
* Input: a pair of fastq files, bwa Index (tgz), reference genome sequence, chrom size file and a (juicer-formatted) restriction enzyme site file.
* Output: a merged_nodups file.

#### Usage
Run the following in the container
```
run-juicer.sh <input_fastq1> <input_fastq2> <bwaIndex> <reference_genome_fasta> <chromsize_file> <restriction_enzyme_site_file> <ncores> <outdir>
# input_fastq1, input_fastq2 : input fastq files, either gzipped or not
# bwaIndex : tarball for bwa index, .tgz.
# reference_genome_fasta : fasta file for reference genome matching the bwaIndex
# chromsize_file : a chromsize file
# restriction_enzyme_site_file : juicer-formatted restriction enzyme site file, each line containing a chromosome name followed by all the positions of the specific restriction enzyme sites on that chromosome, space-delimited.
# ncores : number of threads to use
# outdir : output directory (This should be a mounted host directory, so that the output files are visible from the host and to avoid any bus error)
```

### run-add-hicnormvector-to-mcool.sh
Adds a normalization vector from a hic file to an mcool file.
* Input: a .hic file and an .mcool file
* Output: an .mcool file that contains an additional normalization vector.

#### Usage
Run the following in the container
```
run-add-hicnormvector-to-mcool.sh <input_hic> <input_mcool> <outdir>
# input_hic : a hic file
# input_mcool : an mcool file
# outdir : output directory
```

### run-mcool2hic.sh
**As of v43, this script is no longer used in the Hi-C Pipeline. You can still view this script in the branches containing earlier versions of this repo.**

Extracts a normalization vector from a mcool file to visualize with a hic file.
* Input: an .mcool file, a chrom size file
* Output: an juicer-format normvector file that contains a series of cooler normalization vectors.

#### Usage
Run the following in the container
```
run-mcool2hic.sh -i <input_mcool> -c <chromsize_file> [-r <min_res> -l <nres>] [-u <custom_res>] [-d <outdir>] [-o <output_prefix>]
# -i input_mcool : an mcool file
# -c chromsize_file : a chromsize file
# -r min_res : minimum resolution for whole-genome normalization (e.g. 5000)
# -l nres : number of resolutions (e.g. 13)
# -u custom_res : custom resolutions separated by commas (e.g. 100000,200000,500000) (default higlass resolutions).
# -d outdir : output directory
# -o output prefix: prefix of the output file
```


### run-fastqc.sh
Runs fastqc on a given fastq(.gz) file and produces a fastqc report.
* Input: a fastq file (either gzipped or not)
* Output: a fastqc report (data_report.zip)

#### Usage
Run the following in the container
```
run-fastqc.sh <input_fastq> <nthread> <outdir>
# input_fastq : an input fastq file, either gzipped or not.
# nthread : number of threads to use
# outdir : output directory (This should be a mounted host directory, so that the output files are visible from the host and to avoid any bus error)
```


### run-pairsam-parse-sort.sh
Runs pairsam parse and sort on a bwa-produced bam file and produces a sorted pairsam file
* Input: a bam file
* Output: a pairsam file

#### Usage
Run the following in the container
```
run-pairsam-parse-sort.sh <input_bam> <chromsizes> <outdir> <outprefix> <nthread> <compress_program>
# input_bam : an input bam file.
# chromsizes : a chromsize file
# outdir : output directory
# outprefix : prefix of output files
# nthread : number of threads to use
```

### run-pairsam-merge.sh
Merges a list of pairsam files
* Input: a list of pairsam files
* Output: a merged pairsam file

#### Usage
Run the following in the container
```
run-pairsam-merge.sh <outprefix> <nthreads> <input_pairsam1> [<input_pairsam2> [<input_pairsam3> [...]]]
# outprefix : prefix of output files
# nthreads : number of threads to use
# input_pairsam : an input pairsam file.
```

### run-pairsam-markasdup.sh
Takes a pairsam file in and creates a pairsam file with duplicate reads marked
* Input: a pairsam file
* Output: a duplicate-marked pairsam file

#### Usage
Run the following in the container
```
run-pairsam-markasdup.sh <input_pairsam> <outprefix>
# input_pairsam : an input pairsam file.
# outprefix : prefix of output files
```

### run-pairsam-filter.sh
Takes in a pairsam file and creates a lossless, annotated bam file and a filtered pairs file.
* Input: a pairsam file
* Output: an annotated bam file and a filtered pairs file

#### Usage
Run the following in the container
```
run-pairsam-filter.sh <input_pairsam> <outprefix> <chromsizes>
# input_pairsam : an input pairsam file.
# outprefix : prefix of output files
# chromsizes : a chromsize file
```

### run-mapq-pairs.sh
Takes in a pairs file and creates a mapq>30 filtered pairs file
* Input: a pairs file
* Output: a filtered pairs file

#### Usage
Run the following in the container
```
run-mapq-pairs.sh <input_pairs> <outprefix>
# input_pairs : an input pairs file.
# outprefix : prefix of output files
```
