#!/usr/bin/env bash
if [ $# -le 2 ] ; then
    echo "Usage: bash pipeline_bam2sortedPairsam.sh BAM OUTPUT_PREFIX CHR_SIZES THREADS COMPRESS_PROGRAM"
    echo ""
    echo "A example of a bam2sortedPairs.sh pipeline"
    echo ""
    echo "positional arguments:"
    echo ""
    echo "BAM             The path to a BAM file."
    echo "OUTPUT_PREFIX   The prefix to the paths of generated outputs. "
    echo "CHR_SIZES       The path to a chromosome sizes file."
    echo "THREADS         Number of threads"
    echo "COMPRESS_PROGRAM    Program for file compression"
    echo ""
    echo ""

    exit 0
fi

set -o errexit
set -o nounset
set -o pipefail

BAM=$1
OUTPREFIX=$2
CHR_SIZES=$3
THREADS=${4:-8}
COMPRESS_PROGRAM=${5:=lz4c}
SORTED_PAIRS_PATH=${OUTPREFIX}.sam.pairs.gz

samtools view -h "${BAM}" | {
    # Classify Hi-C molecules as unmapped/single-sided/multimapped/chimeric/etc
    # and output one line per read, containing the following, separated by \\v:
    #  * triu-flipped pairs
    #  * read id
    #  * type of a Hi-C molecule
    #  * corresponding sam entries
    pairsamtools parse -c $CHR_SIZES
} | {
    # Block-sort pairs together with SAM entries
    pairsamtools sort --nproc ${THREADS} --compress-program ${COMPRESS_PROGRAM}\
    --output ${SORTED_PAIRS_PATH}
}

