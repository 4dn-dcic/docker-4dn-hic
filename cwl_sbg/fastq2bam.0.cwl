{
    "sbg:modifiedOn": 1473274829,
    "outputs": [
        {
            "id": "#sorted_bam_pe",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#split_bam1",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#split_bam2",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:modifiedOn": 1473274829,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "sbg:job": {
        "inputs": {
            "input_fastq1": {
                "size": 0,
                "path": "/path/to/input_fastq1.fastq",
                "secondaryFiles": [],
                "class": "File"
            },
            "output_dir": "output_dir",
            "input_fastq2": {
                "size": 0,
                "path": "/path/to/input_fastq2.fastq",
                "secondaryFiles": [],
                "class": "File"
            },
            "bowtie_index": {
                "size": 0,
                "path": "/path/to/bowtie_index.ext",
                "secondaryFiles": [],
                "class": "File"
            }
        },
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        }
    },
    "sbg:createdOn": 1473274829,
    "inputs": [
        {
            "inputBinding": {
                "position": 2,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq1",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq2",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": false,
                "position": 4,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                },
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir",
            "sbg:toolDefaultValue": "."
        },
        {
            "inputBinding": {
                "position": 1,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "TGZ",
            "id": "#bowtie_index",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "successCodes": [],
    "baseCommand": [
        "preprocessing.sh"
    ],
    "sbg:projectName": "Dev",
    "sbg:sbgMaintained": false,
    "stdin": "",
    "hints": [
        {
            "value": 24000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
            "class": "DockerRequirement",
            "dockerImageId": ""
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
    "class": "CommandLineTool",
    "sbg:contributors": [
        "duplexa"
    ],
    "arguments": [],
    "sbg:validationErrors": [],
    "stdout": "",
    "temporaryFailCodes": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "sbg:image_url": null,
    "cwlVersion": "sbg:draft-2",
    "sbg:project": "4dn-dcic/dev",
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
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
    "description": "",
    "sbg:revision": 0,
    "label": "hictool-fastq2bam",
    "sbg:modifiedBy": "duplexa",
    "sbg:createdBy": "duplexa",
    "sbg:latestRevision": 0,
    "sbg:appVersion": [
        "sbg:draft-2"
    ]
}