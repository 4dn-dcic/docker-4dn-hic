# cwl
* This is a collection of pipelines built by 4DN-DCIC that were created and run either on the SevenBridges platform or on the 4DN platform, AWSEM.

### Specification for 4DN
* Starting from Docker version 42.3, 4DN DCIC uses CWL `v1.0` (previously we used CWL `draft-3`.)
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
  * `fdn_cardinatlity` (in each step 'inputs' and 'outputs' element) : either 'array' or 'single', referring to whether the input/output is an array or a singlet.
    * 'array' : the input/output is an array
    * 'single' : the input/output is not an array
  * `fdn_secondary_file_formats`  (within a top-level `inputs` and `outputs` element that contains a secondary file) : an array of strings that refer to the format name used by 4DN e.g.) ["pairs_px2"]


### How to run the cwl
To run docker through CWL, you need a cwl executor - we use `cwltool` (https://github.com/common-workflow-language/cwltool) to run CWL with a json/yml file describing input data. Some example input data are inside the `tests/test_input_json` directory and you can see some `cwltool` (=`cwl-runner`) commands inside the `tests/tests.sh` script.


### Testing CWL
To test cwls in this repo against the test files in `tests`, use `tests/tests.sh` with cwl name (without .cwl).
```bash
source tests/tests_cwl.sh bwa-mem
```

or, to test all CWL files in batch,
```bash
source tests_cwl_all.sh
```

### Benchmark (calculating CPU, Memory, space and determining an instance type)
The Benchmark is now moved to https://github.com/SooLee/Benchmark

