#!/bin/sh

## run-cooler test
cwd=$(pwd)
mkdir -p tmp_out
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw duplexa/4dn-hic:v4 run-cooler.sh /d/tst.gz /d/hg19.chrom.sizes.mainonly 100000 5000 2 /e/tst
docker run -it -v -v $cwd/tmp_out/:/e/:rw duplexa/4dn-hic:v4 cooler dump --join /e/tst.cool > /e/tst.cooldump
diff sample_data/tst.cooldump tmp_out/tst.cooldump


