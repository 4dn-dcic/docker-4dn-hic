## Example commands

The following are an example run of the actual commands for the current Hi-C pipeline on the 4DN Data Portal.

```
run-bwa-mem.sh \
    /var/lib/cwl/stgc2042ace-5194-4afa-b19f-3333295b0afc/4DNFI74FHUH6.fastq.gz \
    /var/lib/cwl/stg77712e5d-9cf4-4909-b554-407cd9286042/4DNFIUT9GCZL.fastq.gz \
    /var/lib/cwl/stgc9006e13-858f-47e5-9d98-5ac079efd385/4DNFIZQZ39L9.bwaIndex.tgz \
    . \
    out \
    16
```
```
run-pairsam-parse-sort.sh \
    /var/lib/cwl/stgbdbee468-1bb0-4c21-b787-fce8bafd3be5/4DNFI1XCVK6M.bam \
    /var/lib/cwl/stg58fca694-ecd7-402c-b0d3-fe4452e1abaa/4DNFI823LSII.chrom.sizes \
    . \
    out \
    16 \
    lz4c
```
```
run-pairsam-merge.sh \
    out \
    16 \
    '/var/lib/cwl/stg59047d8d-6c79-4e8d-9bb9-7ddc85ad9dc0/out.sam.pairs.gz /var/lib/cwl/stgf293a8da-593b-4922-938b-64f74fbe3809/out.sam.pairs.gz /var/lib/cwl/stgeae7c3e0-bc8c-4dd3-b9f7-574586f2c3bb/out.sam.pairs.gz /var/lib/cwl/stg62b5529e-4a40-41f9-bb40-27fe12e7a156/out.sam.pairs.gz /var/lib/cwl/stg1b7face1-69a7-49cd-a974-13677b2e0865/out.sam.pairs.gz /var/lib/cwl/stg26a1902a-8788-4060-9456-6e5259107182/out.sam.pairs.gz /var/lib/cwl/stgeb4c013b-38e9-4c97-9773-d5c85499e219/out.sam.pairs.gz /var/lib/cwl/stg64d6c3d5-319d-427e-b775-1a950024b14d/out.sam.pairs.gz /var/lib/cwl/stg0062d694-7a03-426c-b1bb-3fcc60216689/out.sam.pairs.gz'
```
```
run-pairsam-markasdup.sh \
    /var/lib/cwl/stg9ddd1009-f71f-46c3-90ca-deb486de4774/out.merged.sam.pairs.gz \
    out
```
```
run-pairsam-filter.sh \
    /var/lib/cwl/stgff7a545b-1892-4a43-9062-5a3fc26247a8/out.marked.sam.pairs.gz \
    out \
    /var/lib/cwl/stg971507ac-daab-4fdc-98cf-56027f3dc411/4DNFI823LSII.chrom.sizes
```
```
run-pairsqc-single.sh \
    /var/lib/cwl/stg3f209dd8-644b-486c-aa8e-b4ed0c235cec/4DNFI3G7ACRU.pairs.gz \
    /var/lib/cwl/stgd0f8d862-d460-4e5b-b234-2ba651395aa8/4DNFI823LSII.chrom.sizes \
    4DNFI3G7ACRU \
    6 \
    .
```
```
run-merge-pairs.sh \
    out \
    /var/lib/cwl/stg6e5744ea-fa67-4075-9999-682cf123ccd2/4DNFIS5PRTL5.pairs.gz
```
```
run-addfrag2pairs.sh \
     /var/lib/cwl/stgafb5b43e-0465-49cf-8464-87d2c2b34ab5/out.pairs.gz \
     /var/lib/cwl/stgb747dbc9-7068-478d-a250-3b8a3b369487/4DNFI823L812.txt \
     out
```
```
run-cooler.sh \
     /var/lib/cwl/stg284aa703-4d0e-4085-8eb4-6139c57e4ba0/out.pairs.gz \
     /var/lib/cwl/stg6fc477a4-cec5-49cf-8dec-cdc3924dc54d/4DNFI823LSII.chrom.sizes \
     1000 \
     1 \
     out \
     2
```
```
run-juicebox-pre.sh \
      -i /var/lib/cwl/stg1a472be2-add8-4412-a837-64f0bfb5e1fa/out.ff.pairs.gz \
      -c /var/lib/cwl/stga9376f9f-c838-488e-bd3e-312659afa95b/4DNFI823LSII.chrom.sizes \
      -o out \
      -r 1000 \
      -m 32g \
      -q 0 \
      -u 1000,2000,5000,10000,25000,50000,100000,250000,500000,1000000,2500000,5000000,10000000
```
```
run-cool2multirescool.sh \
      -i /var/lib/cwl/stgce797073-b04e-48ce-b11b-f2865c4f39b9/out.cool \
      -p 1 \
      -o out \
      -c 10000000 \
      -u 1000,2000,5000,10000,25000,50000,100000,250000,500000,1000000,2500000,5000000,10000000
```
```
run-add-hicnormvector-to-mcool.sh \
      /var/lib/cwl/stgf94132ba-8dce-4879-a3b2-c42456b24b04/out.hic \
      /var/lib/cwl/stgc774ceb2-de86-4169-a256-6faad2a13067/out.multires.cool
```


