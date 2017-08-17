{
    "label": "hictool-fastq2bam",
    "description": "",
    "sbg:modifiedBy": "duplexa",
    "class": "CommandLineTool",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                    "engine": "#cwl-js-engine"
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                    "engine": "#cwl-js-engine"
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#split_bam2"
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "arguments": [],
    "stdout": "",
    "temporaryFailCodes": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:image_url": null,
    "sbg:revision": 0,
    "cwlVersion": "sbg:draft-2",
    "successCodes": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:modifiedOn": 1473274829
        }
    ],
    "stdin": "",
    "baseCommand": [
        "preprocessing.sh"
    ],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        },
        "inputs": {
            "bowtie_index": {
                "class": "File",
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/bowtie_index.ext"
            },
            "input_fastq2": {
                "class": "File",
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_fastq2.fastq"
            },
            "input_fastq1": {
                "class": "File",
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_fastq1.fastq"
            },
            "output_dir": "output_dir"
        }
    },
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
    "sbg:projectName": "Dev",
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "sbg:modifiedOn": 1473274829,
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "sbg:sbgMaintained": false,
    "sbg:createdOn": 1473274829,
    "sbg:validationErrors": [],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq1"
        },
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq2"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": ".",
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine"
                },
                "separate": false
            },
            "id": "#output_dir"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "sbg:fileTypes": "TGZ",
            "id": "#bowtie_index"
        }
    ],
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
    "sbg:project": "4dn-dcic/dev",
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "sbg:latestRevision": 0
}