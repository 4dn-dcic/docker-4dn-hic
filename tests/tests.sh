#!/bin/sh

image_name=docker-4dn-hic_local  # local image name for testing

## run-cooler & run-cooler-balance test
cwd=$(pwd)
mkdir -p tmp_out
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw $image_name run-cooler.sh /d/test.pairs.gz /d/hg19.chrom.sizes.mainonly 100000 2 /e/test0
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw $image_name run-cooler-balance.sh /d/test0.cool 5000 /e/test
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw $image_name cooler dump --join /e/test.cool > tmp_out/test.cooldump
if [ ! -z "$(diff tests/test.cooldump tmp_out/test.cooldump)" ]; then
  return 1;
fi

## run-cool2multirescool test
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw $image_name run-cool2multirescool.sh /d/test.cool 2 /e/test
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw $image_name python3 -c 'import cooler; print(cooler.io.ls("/e/test.multires.cool"))' > mcool.log1
docker run -it -v $cwd/tests/:/f/:ro -v $cwd/tmp_out/:/e/:rw $image_name python3 -c 'import cooler; print(cooler.io.ls("/f/test.multires.cool"))' > mcool.log2
if [ ! -z "$(diff mcool.log1 mcool.log2)" ]; then
  return 1;
fi

## run-pairsqc-single test
docker run -it -v $(pwd)/sample_data/:/sample_data/:ro -v $(pwd)/tmp_out/:/out/:rw $image_name run-pairsqc-single.sh /sample_data/test.pairs.gz /sample_data/hg19.chrom.sizes.mainonly test 4 /out/test
sudo chmod 777 tmp_out/test/
cd tmp_out/test/
unzip -o test_report.zip
cd ../../
du -s tests/pairsqc/test_report/ |cut -f1 > pairsqc.log1
du -s tmp_out/test/test_report/ | cut -f1 > pairsqc.log2
if [ ! -z "$(diff pairsqc.log1 pairsqc.log2)" ]; then
  return 1;
fi


## run-addfrag2pairs & run-juicebox-pre test
docker run -it -v $(pwd)/sample_data/:/sample_data/:ro -v $(pwd)/tmp_out/:/out/:rw $image_name run-addfrag2pairs.sh /sample_data/test2.pairs.gz /sample_data/hg19_DpnII.mainonly.txt /out/test
docker run -it -v $(pwd)/sample_data/:/sample_data/:ro -v $(pwd)/tmp_out/:/out/:rw $image_name run-juicebox-pre.sh /out/test.ff.pairs.gz /sample_data/hg19.chrom.sizes.mainonly /out/test 5000 0
docker run -it -v $(pwd)/sample_data/:/sample_data/:ro -v $(pwd)/tmp_out/:/out/:rw $image_name java -jar juicer_tools dump observed NONE /out/test.hic chr1 chr1 BP 5000 > tmp_out/test.hicdump
gunzip -c tmp_out/test.ff.pairs.gz | grep -v "^#" | awk '$2=="chr1" && $4=="chr1" && $8!=$9' |wc -l | sed 's/ //g' > juicebox-pre.log1
cut -f3 tmp_out/test.hicdump | tail -n +4 | perl -ne 'chomp; $s+=$_; print "$s\n";' - |tail -1 > juicebox-pre.log2
if [ ! -z "$(diff juicebox-pre.log1 juicebox-pre.log2)" ]; then
  return 1;
fi
docker run -it -v $(pwd)/sample_data/:/sample_data/:ro -v $(pwd)/tmp_out/:/out/:rw $image_name java -jar juicer_tools.jar dump observed KR /out/test.hic chr1 chr1 BP 500000 > tmp_out/test.hicdump3
cut -f3 tmp_out/test.hicdump3 | tail -n +4 | perl -ne 'chomp; $s+=$_; print "$s\n";' - |tail -1 | cut -c1-2 > juicebox-norm.log1
gunzip -c tmp_out/test.ff.pairs.gz | grep -v "^#" | awk '$2=="chr1" && $4=="chr1" && $8!=$9' |wc -l | sed 's/ //g' | cut -c1-2 > juicebox-norm.log2
if [ ! -z "$(diff juicebox-norm.log1 juicebox-norm.log2)" ]; then
  return 1;
fi

# run-juicebox-pre test with higlass-compatible zoom levels 
docker run -it -v $(pwd)/sample_data/:/sample_data/:ro -v $(pwd)/tmp_out/:/out/:rw $image_name run-juicebox-pre.sh /out/test.ff.pairs.gz /sample_data/hg19.chrom.sizes.mainonly /out/test 5000 1


return 0;
