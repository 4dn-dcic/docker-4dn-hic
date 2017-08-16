{
    "class": "CommandLineTool",
    "sbg:projectName": "Dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "hints": [
        {
            "value": 24000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
            "dockerImageId": "",
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
    "arguments": [],
    "sbg:createdBy": "duplexa",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274829,
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "sbg:revision": 0,
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#sorted_bam_pe"
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam1"
        },
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam2"
        }
    ],
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "sbg:image_url": null,
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ]
        }
    ],
    "temporaryFailCodes": [],
    "description": "",
    "sbg:createdOn": 1473274829,
    "sbg:modifiedBy": "duplexa",
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "type": [
                "File"
            ],
            "id": "#input_fastq1"
        },
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "type": [
                "File"
            ],
            "id": "#input_fastq2"
        },
        {
            "inputBinding": {
                "separate": false,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "sbg:cmdInclude": true,
                "position": 4
            },
            "sbg:toolDefaultValue": ".",
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:fileTypes": "TGZ",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#bowtie_index"
        }
    ],
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "sbg:sbgMaintained": false,
    "sbg:project": "4dn-dcic/dev",
    "sbg:latestRevision": 0,
    "sbg:modifiedOn": 1473274829,
    "label": "hictool-fastq2bam",
    "sbg:validationErrors": [],
    "baseCommand": [
        "preprocessing.sh"
    ],
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "successCodes": [],
    "stdout": "",
    "stdin": "",
    "sbg:job": {
        "inputs": {
            "input_fastq1": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_fastq1.fastq",
                "class": "File"
            },
            "input_fastq2": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_fastq2.fastq",
                "class": "File"
            },
            "output_dir": "output_dir",
            "bowtie_index": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/bowtie_index.ext",
                "class": "File"
            }
        },
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        }
    },
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14"
}