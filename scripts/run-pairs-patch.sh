#!/bin/bash

input_pairs=$1
output_prefix=$2
gunzip -c $input_pairs | util/duplicate_header_remover.pl | util/column_remover.pl - sam1 sam2 | util/column_remover.pl -d - 8 | bgzip -c > $outprefix.pairs.gz
pairix -f $outprefix.pairs.gz


