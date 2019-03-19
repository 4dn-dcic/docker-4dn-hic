#!/bin/sh
#set -e

image_name=docker-4dn-hic_local  # local image name for testing

## run-cooler test
cwd=$(pwd)
mkdir -p tmp_out
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw $image_name run-cooler.sh /d/test.pairs.gz /d/hg19.chrom.sizes.mainonly 100000 2 /e/test 2
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw $image_name cooler dump --join /e/test.cool | tail -n+3  > tmp_out/test.cooldump  ## tail is a temporary fix to remove warning printed out to stdout
if [ ! -z "$(diff tests/test_files/test.cooldump tmp_out/test.cooldump)" ]; then
  echo "cooler test failed"
  exit 1;
fi

## run-cool2multirescool test
echo "testing run-cool2multirescool..."
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw $image_name run-cool2multirescool.sh -i /d/test.cool -p 2 -o /e/test
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw $image_name python3 -c 'import cooler; print(cooler.io.ls("/e/test.multires.cool"))' > mcool.log1
docker run -it -v $cwd/tests/test_files/:/f/:ro -v $cwd/tmp_out/:/e/:rw $image_name python3 -c 'import cooler; print(cooler.io.ls("/f/test.multires.cool"))' > mcool.log2
if [ ! -z "$(diff mcool.log1 mcool.log2)" ]; then
  echo "zoomify test failed"
  exit 1;
fi

# run-cool2multirescool custom res test
echo "testing run-cool2multirescool with custom resolutions..."
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw $image_name run-cool2multirescool.sh -i /d/test.cool -p 2 -o /e/test -u 100000,200000,500000
docker run -it -v $cwd/sample_data/:/d/:ro -v $cwd/tmp_out/:/e/:rw $image_name python3 -c 'import cooler; print(cooler.io.ls("/e/test.multires.cool"))' > mcool.log1
if [ ! -z "$(diff mcool.log1 $cwd/tests/test_files/test.multires.cool.customres.log)"]; then
  echo "zoomify custom res test failed"
  exit 1;
fi


## run-addfrag2pairs & run-juicebox-pre test
docker run -it -v $(pwd)/sample_data/:/sample_data/:ro -v $(pwd)/tmp_out/:/out/:rw $image_name run-addfrag2pairs.sh -i /sample_data/test2.pairs.gz -r /sample_data/hg19_DpnII.mainonly.txt -o /out/test
docker run -it -v $(pwd)/sample_data/:/sample_data/:ro -v $(pwd)/tmp_out/:/out/:rw $image_name run-juicebox-pre.sh -i /out/test.ff.pairs.gz -c /sample_data/hg19.chrom.sizes.mainonly -o /out/test -r 5000 -m 4g -q 0
docker run -it -v $(pwd)/sample_data/:/sample_data/:ro -v $(pwd)/tmp_out/:/out/:rw $image_name java -jar /usr/local/bin/juicer_tools.jar dump observed NONE /out/test.hic chr1 chr1 BP 5000 > tmp_out/test.hicdump
gunzip -c tmp_out/test.ff.pairs.gz | grep -v "^#" | awk '$2=="chr1" && $4=="chr1" && $8!=$9' |wc -l | sed 's/ //g' > juicebox-pre.log1
cut -f3 tmp_out/test.hicdump | perl -ne 'chomp; $s+=$_; print "$s\n";' - |tail -1 > juicebox-pre.log2
if [ ! -z "$(diff juicebox-pre.log1 juicebox-pre.log2)" ]; then
  echo "juicebox pre test failed"
  exit 1;
fi
docker run -it -v $(pwd)/sample_data/:/sample_data/:ro -v $(pwd)/tmp_out/:/out/:rw $image_name java -jar juicer_tools.jar dump observed KR /out/test.hic chr1 chr1 BP 500000 > tmp_out/test.hicdump3
cut -f3 tmp_out/test.hicdump3 | tail -n +4 | perl -ne 'chomp; $s+=$_; print "$s\n";' - |tail -1 | cut -c1-2 > juicebox-norm.log1
gunzip -c tmp_out/test.ff.pairs.gz | grep -v "^#" | awk '$2=="chr1" && $4=="chr1" && $8!=$9' |wc -l | sed 's/ //g' | cut -c1-2 > juicebox-norm.log2
if [ ! -z "$(diff juicebox-norm.log1 juicebox-norm.log2)" ]; then
  echo "juicebox norm test failed"
  exit 1;
fi

# run-juicebox-pre custom_res test
docker run -it -v $(pwd)/sample_data/:/sample_data/:ro -v $(pwd)/tmp_out/:/out/:rw $image_name run-juicebox-pre.sh -i /out/test.ff.pairs.gz -c /sample_data/hg19.chrom.sizes.mainonly -o /out/test -r 100000 -u 100000,200000,500000 -m 4g > juicebox-custom.log
if [[ $(grep "Calculating norms" juicebox-custom.log | wc -l | sed "s/ //g") != '3' ]]; then
   echo "juicebox custom res test failed"
   exit 1;
fi

# run-add-hicnormvector-to-mcool.sh test for custom_res
docker run -it -v $(pwd)/sample_data/:/sample_data/:ro -v $(pwd)/tmp_out/:/out/:rw $image_name run-add-hicnormvector-to-mcool.sh /out/test.hic /out/test.multires.cool

# run-juicebox-pre test with higlass-compatible zoom levels and normlization only
docker run -it -v $(pwd)/sample_data/:/sample_data/:ro -v $(pwd)/tmp_out/:/out/:rw $image_name run-juicebox-pre.sh -i /out/test.ff.pairs.gz -c /sample_data/hg19.chrom.sizes.mainonly -o /out/test -r 5000 -g -m 4g -n 

exit 0;
