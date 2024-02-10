#!/usr/bin/env bash
if [ $# -le 1 ] ; then
    echo "Usage: bash run-mapq-pairs.sh PAIRS OUTPUT_PREFIX"
    echo ""
    echo "A example run-mapq-pairs.sh pipeline for processing pairs to mapq>30 filtered pairs file"
    echo ""
    echo "positional arguments:"
    echo ""
    echo "PAIRS             The path to a PAIRS file."
    echo "OUTPUT_PREFIX       The prefix to the paths of generated outputs. "
    echo ""
    echo ""

    exit 0
fi
set -o errexit
set -o nounset
set -o pipefail

PAIRS=$1
OUTPREFIX=$2

FILTERED_PAIRS=${OUTPREFIX}".mapq_filt.pairs.gz"

# Perform mapq filtering
pairtools select "mapq1>30 and mapq2>30" -o ${FILTERED_PAIRS} ${PAIRS}
pairix ${FILTERED_PAIRS}
