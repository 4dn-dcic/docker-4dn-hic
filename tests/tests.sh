#!/bin/sh

version=v5

## run-cooler test
cwd=$(pwd)
mkdir -p tmp_out
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw duplexa/4dn-hic:$version run-cooler.sh /d/tst.gz /d/hg19.chrom.sizes.mainonly 100000 5000 2 /e/tst
cooler dump --join tmp_out/tst.cool > tmp_out/tst.cooldump
diff tests/tst.cooldump tmp_out/tst.cooldump


## run-pairsqc-single test
docker run -it -v $(pwd)/sample_data/:/sample_data/:ro -v $(pwd)/tmp_out/:/out/:rw duplexa/4dn-hic:$version run-pairsqc-single.sh /sample_data/tst.gz /sample_data/hg19.chrom.sizes.mainonly tst 4 /out/tst
cd tmp_out/tst/
unzip -o tst_report.zip
ls -lhtr tst_report
cd ../../

