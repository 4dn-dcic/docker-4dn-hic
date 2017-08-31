{
    "sbg:job": {
        "inputs": {
            "input_fastq2": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/input_fastq2.fastq"
            },
            "bowtie_index": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/bowtie_index.ext"
            },
            "input_fastq1": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/input_fastq1.fastq"
            },
            "output_dir": "output_dir"
        },
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        }
    },
    "sbg:revision": 0,
    "sbg:modifiedBy": "duplexa",
    "stdout": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "successCodes": [],
    "sbg:modifiedOn": 1473274829,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdin": "",
    "sbg:validationErrors": [],
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "sbg:createdOn": 1473274829,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "hints": [
        {
            "value": 24000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerImageId": "",
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
            "class": "DockerRequirement"
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
    "sbg:projectName": "Dev",
    "sbg:image_url": null,
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:sbgMaintained": false,
    "arguments": [],
    "baseCommand": [
        "preprocessing.sh"
    ],
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
            "id": "#sorted_bam_pe",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            }
        },
        {
            "id": "#split_bam1",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            }
        },
        {
            "id": "#split_bam2",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            }
        }
    ],
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "label": "hictool-fastq2bam",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274829
        }
    ],
    "sbg:createdBy": "duplexa",
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": false
            },
            "id": "#input_fastq1",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": false
            },
            "id": "#input_fastq2",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "sbg:toolDefaultValue": ".",
            "id": "#output_dir",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                },
                "separate": false,
                "position": 4
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": false
            },
            "id": "#bowtie_index",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "TGZ"
        }
    ],
    "sbg:latestRevision": 0,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "description": "",
    "temporaryFailCodes": [],
    "class": "CommandLineTool"
}