#!/usr/bin/env bash
if [ $# -le 2 ] ; then
    echo "Usage: bash pipeline_Sorted2noDups.sh PAIRSAM OUTPUT_PREFIX CHR_SIZES"
    echo ""
    echo "A example Sorted2noDups.sh pipeline for processing sorted reads to get nodup pairs file"
    echo ""
    echo "positional arguments:"
    echo ""
    echo "PAIRSAM             The path to a PAIRSAM file."
    echo "OUTPUT_PREFIX       The prefix to the paths of generated outputs. "
    echo "CHR_SIZES           Chromosomes and their sizes "
    echo ""
    echo ""

    exit 0
fi
set -o errexit
set -o nounset
set -o pipefail

PAIRSAM=$1
OUTPREFIX=$2
CHR_SIZES=$3

UNMAPPED_SAMPAIRS=${OUTPREFIX}.unmapped.sam.pairs.gz
DEDUP_PAIRS=${OUTPREFIX}.dedup.pairs.gz
LOSSLESS_BAM=${OUTPREFIX}.lossless.bam
TEMPFILE=temp.gz
TEMPFILE1=temp1.gz

## Generate lossless bam
pairsamtools split --output-sam ${LOSSLESS_BAM} ${PAIRSAM}


# Select CX LL reads
pairsamtools select '(pair_type == "CX") or (pair_type == "LL")' \
    --output-rest ${UNMAPPED_SAMPAIRS} \
    --output ${TEMPFILE} \
    ${PAIRSAM}

pairsamtools split --output-pairs ${TEMPFILE1} ${TEMPFILE}

pairsamtools select 'True' --chrom-subset ${CHR_SIZES} -o ${DEDUP_PAIRS} ${TEMPFILE1}
    

## remove PAIRSAM (i.e. marked pairsamfile) file 
rm ${PAIRSAM}   ## delete the lossless pairsam file
rm ${TEMPFILE}
rm ${TEMPFILE1}



