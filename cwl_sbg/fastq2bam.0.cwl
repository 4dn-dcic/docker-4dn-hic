{
    "sbg:modifiedBy": "duplexa",
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:image_url": null,
    "label": "hictool-fastq2bam",
    "sbg:createdBy": "duplexa",
    "sbg:projectName": "Dev",
    "sbg:revision": 0,
    "description": "",
    "sbg:createdOn": 1473274829,
    "arguments": [],
    "sbg:validationErrors": [],
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "id": "#input_fastq1"
        },
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "id": "#input_fastq2"
        },
        {
            "sbg:toolDefaultValue": ".",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                },
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "id": "#output_dir"
        },
        {
            "sbg:fileTypes": "TGZ",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "id": "#bowtie_index"
        }
    ],
    "stdin": "",
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "sbg:latestRevision": 0,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274829,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:revision": 0
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "stdout": "",
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "baseCommand": [
        "preprocessing.sh"
    ],
    "sbg:modifiedOn": 1473274829,
    "cwlVersion": "sbg:draft-2",
    "class": "CommandLineTool",
    "temporaryFailCodes": [],
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "hints": [
        {
            "class": "sbg:MemRequirement",
            "value": 24000
        },
        {
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
            "class": "DockerRequirement",
            "dockerImageId": ""
        },
        {
            "class": "sbg:CPURequirement",
            "value": 4
        },
        {
            "class": "sbg:AWSInstanceType",
            "value": "i2.xlarge"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                    "class": "Expression"
                }
            },
            "id": "#sorted_bam_pe"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                    "class": "Expression"
                }
            },
            "id": "#split_bam1"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                    "class": "Expression"
                }
            },
            "id": "#split_bam2"
        }
    ],
    "sbg:job": {
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        },
        "inputs": {
            "bowtie_index": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/bowtie_index.ext"
            },
            "output_dir": "output_dir",
            "input_fastq2": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_fastq2.fastq"
            },
            "input_fastq1": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_fastq1.fastq"
            }
        }
    },
    "sbg:sbgMaintained": false,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "successCodes": [],
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "sbg:contributors": [
        "duplexa"
    ]
}