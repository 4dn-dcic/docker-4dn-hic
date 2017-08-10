{
    "requirements": [
        {
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "arguments": [],
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:modifiedOn": 1473274829,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "baseCommand": [
        "preprocessing.sh"
    ],
    "temporaryFailCodes": [],
    "sbg:projectName": "Dev",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": false
            },
            "id": "#input_fastq1",
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": false
            },
            "id": "#input_fastq2",
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 4,
                "valueFrom": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine"
                },
                "separate": false
            },
            "sbg:toolDefaultValue": ".",
            "id": "#output_dir"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": false
            },
            "id": "#bowtie_index",
            "sbg:fileTypes": "TGZ"
        }
    ],
    "successCodes": [],
    "sbg:revision": 0,
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "description": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:createdOn": 1473274829,
    "stdin": "",
    "sbg:image_url": null,
    "sbg:project": "4dn-dcic/dev",
    "label": "hictool-fastq2bam",
    "sbg:createdBy": "duplexa",
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "stdout": "",
    "sbg:latestRevision": 0,
    "sbg:validationErrors": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "hints": [
        {
            "value": 24000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-fastq2bam:v3"
        },
        {
            "value": 4,
            "class": "sbg:CPURequirement"
        },
        {
            "value": "i2.xlarge",
            "class": "sbg:AWSInstanceType"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#sorted_bam_pe",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                    "engine": "#cwl-js-engine"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam1",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                    "engine": "#cwl-js-engine"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam2",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                    "engine": "#cwl-js-engine"
                }
            }
        }
    ],
    "sbg:modifiedOn": 1473274829,
    "sbg:modifiedBy": "duplexa",
    "sbg:job": {
        "inputs": {
            "input_fastq1": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/input_fastq1.fastq"
            },
            "bowtie_index": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/bowtie_index.ext"
            },
            "output_dir": "output_dir",
            "input_fastq2": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/input_fastq2.fastq"
            }
        },
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        }
    },
    "class": "CommandLineTool",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:sbgMaintained": false
}