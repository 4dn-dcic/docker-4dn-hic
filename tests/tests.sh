#!/bin/sh

image_name=docker-4dn-hic_local  # local image name for testing

## run-cooler test
cwd=$(pwd)
mkdir -p tmp_out
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw $image_name run-cooler.sh /d/test.pairs.gz /d/hg19.chrom.sizes.mainonly 100000 5000 2 /e/test
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw $image_name cooler dump --join /e/test.cool > tmp_out/test.cooldump
if [ ! -z "$(diff tests/test.cooldump tmp_out/test.cooldump)" ]; then
  return 1;
fi

## run-cool2multirescool test
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw $image_name run-cool2multirescool.sh /d/test.cool 2 /e/test
du -s tmp_out/test.multires.cool |cut -f1 > mcool.log1
du -s tests/test.multires.cool |cut -f1 > mcool.log2
python -c 'import cooler; print(cooler.io.ls("tmp_out/test.multires.cool"))' >> mcool.log1
python -c 'import cooler; print(cooler.io.ls("tests/test.multires.cool"))' >> mcool.log2
if [ ! -z "$(diff mcool.log1 mcool.log2)" ]; then
  return 1;
fi

## run-pairsqc-single test
docker run -it -v $(pwd)/sample_data/:/sample_data/:ro -v $(pwd)/tmp_out/:/out/:rw $image_name run-pairsqc-single.sh /sample_data/test.pairs.gz /sample_data/hg19.chrom.sizes.mainonly test 4 /out/test
chmod 777 tmp_out/test/
cd tmp_out/test/
unzip -o test_report.zip
cd ../../
du -s tests/pairsqc/test_report/ |cut -f1 > pairsqc.log1
du -s tmp_out/test/test_report/ | cut -f1 > pairsqc.log2
if [ ! -z "$(diff pairsqc.log1 pairsqc.log2)" ]; then
  return 1;
fi

return 0;

