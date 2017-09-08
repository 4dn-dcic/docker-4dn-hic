# pipelines-cwl
* This is a collection of pipelines built by 4DN-DCIC that were created and run either on the SevenBridges platform or on the 4DN platform, AWSEM.
* Starting from 0.0.5, the repo contains a benchmarking script for some of the CWLs, that returns total space, mem and CPUs required per given input size.

### Example usage of benchmarking script
```python
from Benchmark import Benchmark as B
B.md5({'input_size_in_MB': {'input_file':20000}})
```
```
{'total_mem_in_MB': 4, 'total_size_in_MB': 23000, 'min_CPU': 1}
```
```python
B.fastqc_0_11_4_1({'input_size_in_MB': {'input_fastq':20000},'threads': 4})
```
```
{'total_mem_in_MB': 1200, 'total_size_in_MB': 43000, 'min_CPU': 4}
```

### Notes on SBG/AWSEM

#### Freeze >=0.0.2
* Directory `cwl_awsem` is manually updated starting from freeze 0.0.2 (after Sep 1, 2017), since we no longer use SevenBridges.

#### Freeze `0.0.1` 
* Freeze `0.0.1` contains exported SBG CWLs and AWSEM CWL files auto-converted from SBG CWLs. The following is a description of how freeze 0.0.1 was generated.

    The content has been generated by the following command.
    ```
    source download.sh 
    ```
    For this to work, you need to have SBG_TOKEN as an environmental variable on your machine.



    To convert sbg cwl to awsem cwl in a batch, do the following
    ```
    source convert.sh
    ```
    This conversion uses script `convert_sbgcwl_to_awsemcwl.py` individually.
    The shell script assumes Mac (`xargs -I{}` instead of `xargs -i`).


