# pipelines-cwl
* This is a collection of pipelines built by 4DN-DCIC that were created and run either on the SevenBridges platform or on the 4DN platform, AWSEM.
* The repo contains a benchmarking script for some of the CWLs, that returns total space, mem and CPUs required per given input size and a recommended AWS EC2 instance type.


### Specification for 4DN
* Currently, 4DN DCIC uses CWL `draft-3`.
* The following 4DN custom fields are added, for automated conversion from cwl to the workflow metadata used by the 4DN Data Portal.
  * `fdn_meta` (top level field) : a dictionary that contains `data_types`, `category`, `workflow_type`, `description`.
    * `title` : Human-friendly title of the workflow. e.g.) 'Repli-seq Processing Part A'
    * `workflow` : machine-friendly name of the workflow. e.g.) 'repliseq-parta'
    * `data_types` : an array of strings that correspond to the data types to be processed. e.g.) [ 'Repli-seq' ]
    * `category` : a string describing the steps. e.g.) 'clip + align + filter + sort + dedup + count'
    * `workflow_type` : a string describing the purpose of the workflow in short. e.g.) 'Repli-seq data processing'
    * `description` : a string describing the workflow. e.g.) 'Repli-seq data processing pipeline'
  * `fdn_step_meta` (within each `steps` element) : a dictionary that contains `software_used`, `description`, `analysis_step_types`.
    * `software_used` : an array of strings that refer to the names and version/commit of the software used. The name must match the name and version/commit used in the `downloads.sh` in an accompanying Docker source repo. In case of commit, the first 6 character should be used. e.g.) [ 'cutadapt_1.14' ], [ 'repli-seq-pipeline_f2eb460' ]
    * `description` : a string that describes the step. e.g.) 'Adapter removal according to the Repli-seq pipeline'
    * `analysis_step_types` : an array of strings that refer to the step types (i.e. purpose). e.g.) [ 'adapter removal' ]
  * `fdn_format` (within each top-level `inputs` and `outputs` element and in each step 'inputs' and 'outputs' element) : a string. e.g.) 'bam'
  * `fdn_output_type` (within each top-level `outputs` element) : a string that corresponds to one of the following three - 'processed', 'QC', 'report'
    * processed : generic output file
    * QC : output will be used to generate a quality_metric object (e.g. fastqc report)
    * report : output will be used to add a metric to input (e.g. md5)
  * `fdn_type` (in each step 'inputs' and 'outputs' element) : a string that corresponds to one of the following three - 'data file', 'reference file', 'report', 'QC', 'parameter'
    * 'data file' : input file and output processed file that is data dependent
    * 'reference file' : input file that serves as a reference file (e.g. genome reference)
    * 'QC' : same as the 'QC' category in `fdn_output_type` (output will be used to generate a quality_metric object (e.g. fastqc report))
    * 'report' : same as the 'report' category in `fdn_output_type` (output will be used to add a metric to input (e.g. md5))
    * 'parameter' : input or output that is not a file
  * `fdn_secondary_file_formats`  (within a top-level `inputs` and `outputs` element that contains a secondary file) : an array of strings that refer to the format name used by 4DN e.g.) ["pairs_px2"]


### How to run the cwl
To run docker through CWL, you need a cwl executor - we use `cwltool` (https://github.com/common-workflow-language/cwltool) to run CWL with a json/yml file describing input data. Some example input data are inside the `tests/test_input_json` directory and you can see some `cwltool` (=`cwl-runner`) commands inside the `tests/tests.sh` script.


### Testing CWL
To test cwls in this repo against the test files in `tests`, use `tests/tests.sh` with cwl name (without .cwl).
```bash
source tests/tests.sh bwa-mem
```

### Example usage of benchmarking script
* importing the module
```python
from Benchmark import Benchmark as B
```

* md5
```python
app_name = 'md5'
input_json = {'input_size_in_bytes': {'input_file': 20000}}
B.benchmark(app_name, input_json)
```
```
{'aws': {'recommended_instance_type': 't2.xlarge', 'EBS_optimized': False, 'cost_in_usd': 0.188, 'EBS_optimization_surcharge': None, 'mem_in_gb': 16.0, 'cpu': 4}, 'total_size_in_GB': 14.855186462402344, 'total_mem_in_MB': 13142.84375, 'min_CPU': 4}
```

* fastqc-0-11-4-1
```python
app_name = 'fastqc-0-11-4-1'
input_json = {'input_size_in_bytes': {'input_fastq':20000},
              'parameters': {'threads': 2}}
B.benchmark(app_name, input_json)
```
```
{'recommended_instance_type': 't2.nano', 'EBS_optimized': False, 'cost_in_usd': 0.006, 'EBS_optimization_surcharge': None, 'mem_in_gb': 0.5, 'cpu': 1}
```

* bwa-mem
```python
app_name = 'bwa-mem'
input_json = {'input_size_in_bytes': {'fastq1':93520000,
                                      'fastq2':97604000,
                                      'bwa_index':3364568000},
              'parameters': {'nThreads': 4}}
B.benchmark(app_name, input_json)
```
```
{'aws': {'cost_in_usd': 0.188, 'EBS_optimization_surcharge': None, 'EBS_optimized': False, 'cpu': 4, 'mem_in_gb': 16.0, 'recommended_instance_type': 't2.xlarge'}, 'total_mem_in_MB': 12834.808349609375, 'total_size_in_GB': 15.502477258443832, 'min_CPU': 4}
```

To use Benchmark in from other places, install it as below.
```
pip install git+git://github.com/4dn-dcic/pipelines-cwl.git
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


