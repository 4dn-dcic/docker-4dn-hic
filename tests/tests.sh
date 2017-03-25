#!/bin/sh

image_name=docker-4dn-hic_local  # local image name for testing

## run-cooler test
cwd=$(pwd)
mkdir -p tmp_out
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw $image_name run-cooler.sh /d/tst.gz /d/hg19.chrom.sizes.mainonly 100000 5000 2 /e/tst
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw $image_name cooler dump --join /e/tst.cool > tmp_out/tst.cooldump
if [ ! -z "$(diff tests/tst.cooldump tmp_out/tst.cooldump)" ]; then
  return 1;
fi


## run-pairsqc-single test
docker run -it -v $(pwd)/sample_data/:/sample_data/:ro -v $(pwd)/tmp_out/:/out/:rw $image_name run-pairsqc-single.sh /sample_data/tst.gz /sample_data/hg19.chrom.sizes.mainonly tst 4 /out/tst
cd tmp_out/tst/
unzip -o tst_report.zip
cd ../../
du -s tests/pairsqc/tst_report/ |cut -f1 > pairsqc.log1
du -s tmp_out/tst/tst_report/ | cut -f1 > pairsqc.log2
if [ ! -z "$(diff pairsqc.log1 pairsqc.log2)" ]; then
  return 1;
fi

return 0;

