{
    "sbg:revision": 0,
    "sbg:modifiedOn": 1473274829,
    "sbg:sbgMaintained": false,
    "sbg:createdBy": "duplexa",
    "stdin": "",
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "stdout": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274829,
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:createdOn": 1473274829,
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "sbg:latestRevision": 0,
    "description": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:image_url": null,
    "temporaryFailCodes": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:validationErrors": [],
    "class": "CommandLineTool",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "id": "#input_fastq1",
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 3
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
                "separate": false,
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "position": 4
            },
            "id": "#output_dir",
            "sbg:toolDefaultValue": "."
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "id": "#bowtie_index",
            "sbg:fileTypes": "TGZ"
        }
    ],
    "sbg:projectName": "Dev",
    "arguments": [],
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "class": "ExpressionEngineRequirement"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "successCodes": [],
    "sbg:modifiedBy": "duplexa",
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'"
                }
            },
            "id": "#sorted_bam_pe",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'"
                }
            },
            "id": "#split_bam1",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'"
                }
            },
            "id": "#split_bam2",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "label": "hictool-fastq2bam",
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
    "baseCommand": [
        "preprocessing.sh"
    ],
    "sbg:job": {
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        },
        "inputs": {
            "input_fastq1": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_fastq1.fastq"
            },
            "input_fastq2": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_fastq2.fastq"
            },
            "output_dir": "output_dir",
            "bowtie_index": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/bowtie_index.ext"
            }
        }
    },
    "sbg:revisionNotes": "docker version 3. A sort step skipped."
}