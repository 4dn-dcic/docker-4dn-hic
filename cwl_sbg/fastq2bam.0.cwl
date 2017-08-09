{
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq1",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 2
            },
            "type": [
                "File"
            ]
        },
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq2",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 3
            },
            "type": [
                "File"
            ]
        },
        {
            "sbg:toolDefaultValue": ".",
            "id": "#output_dir",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 4,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:fileTypes": "TGZ",
            "id": "#bowtie_index",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:job": {
        "inputs": {
            "input_fastq1": {
                "path": "/path/to/input_fastq1.fastq",
                "size": 0,
                "secondaryFiles": [],
                "class": "File"
            },
            "bowtie_index": {
                "path": "/path/to/bowtie_index.ext",
                "size": 0,
                "secondaryFiles": [],
                "class": "File"
            },
            "output_dir": "output_dir",
            "input_fastq2": {
                "path": "/path/to/input_fastq2.fastq",
                "size": 0,
                "secondaryFiles": [],
                "class": "File"
            }
        },
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        }
    },
    "arguments": [],
    "stdout": "",
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
    "sbg:revision": 0,
    "sbg:modifiedOn": 1473274829,
    "label": "hictool-fastq2bam",
    "baseCommand": [
        "preprocessing.sh"
    ],
    "cwlVersion": "sbg:draft-2",
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
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "successCodes": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274829,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "temporaryFailCodes": [],
    "sbg:image_url": null,
    "sbg:createdOn": 1473274829,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "sbg:projectName": "Dev",
    "sbg:latestRevision": 0,
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:validationErrors": [],
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
    "sbg:createdBy": "duplexa",
    "sbg:project": "4dn-dcic/dev",
    "description": "",
    "sbg:modifiedBy": "duplexa",
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "sbg:sbgMaintained": false,
    "stdin": "",
    "class": "CommandLineTool"
}