{
    "sbg:sbgMaintained": false,
    "sbg:project": "4dn-dcic/dev",
    "sbg:contributors": [
        "duplexa"
    ],
    "cwlVersion": "sbg:draft-2",
    "label": "hictool-fastq2bam",
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "sbg:revision": 0,
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
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "successCodes": [],
    "sbg:latestRevision": 0,
    "baseCommand": [
        "preprocessing.sh"
    ],
    "description": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "sbg:createdBy": "duplexa",
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "sbg:modifiedOn": 1473274829,
    "sbg:job": {
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        },
        "inputs": {
            "bowtie_index": {
                "path": "/path/to/bowtie_index.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            },
            "output_dir": "output_dir",
            "input_fastq1": {
                "path": "/path/to/input_fastq1.fastq",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            },
            "input_fastq2": {
                "path": "/path/to/input_fastq2.fastq",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            }
        }
    },
    "sbg:validationErrors": [],
    "stdin": "",
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
    "temporaryFailCodes": [],
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": false
            },
            "id": "#input_fastq1",
            "type": [
                "File"
            ]
        },
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": false
            },
            "id": "#input_fastq2",
            "type": [
                "File"
            ]
        },
        {
            "sbg:toolDefaultValue": ".",
            "id": "#output_dir",
            "inputBinding": {
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "sbg:cmdInclude": true,
                "position": 4,
                "separate": false
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:fileTypes": "TGZ",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": false
            },
            "id": "#bowtie_index",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:image_url": null,
    "sbg:createdOn": 1473274829,
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
    "class": "CommandLineTool",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedBy": "duplexa",
    "arguments": [],
    "stdout": "",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274829,
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:revision": 0
        }
    ],
    "sbg:projectName": "Dev"
}