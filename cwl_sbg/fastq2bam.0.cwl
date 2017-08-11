{
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "arguments": [],
    "stdin": "",
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "hints": [
        {
            "class": "sbg:MemRequirement",
            "value": 24000
        },
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
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
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:modifiedOn": 1473274829
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        },
        "inputs": {
            "output_dir": "output_dir",
            "input_fastq1": {
                "class": "File",
                "path": "/path/to/input_fastq1.fastq",
                "secondaryFiles": [],
                "size": 0
            },
            "bowtie_index": {
                "class": "File",
                "path": "/path/to/bowtie_index.ext",
                "secondaryFiles": [],
                "size": 0
            },
            "input_fastq2": {
                "class": "File",
                "path": "/path/to/input_fastq2.fastq",
                "secondaryFiles": [],
                "size": 0
            }
        }
    },
    "sbg:modifiedBy": "duplexa",
    "temporaryFailCodes": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:validationErrors": [],
    "class": "CommandLineTool",
    "label": "hictool-fastq2bam",
    "sbg:sbgMaintained": false,
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
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
    "sbg:project": "4dn-dcic/dev",
    "sbg:revision": 0,
    "successCodes": [],
    "stdout": "",
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "id": "#cwl-js-engine"
        }
    ],
    "sbg:image_url": null,
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "description": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdOn": 1473274829,
    "baseCommand": [
        "preprocessing.sh"
    ],
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:modifiedOn": 1473274829,
    "sbg:latestRevision": 0,
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
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
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "id": "#input_fastq2",
            "type": [
                "File"
            ]
        },
        {
            "sbg:toolDefaultValue": ".",
            "inputBinding": {
                "position": 4,
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "sbg:cmdInclude": true,
                "separate": false
            },
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:fileTypes": "TGZ",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": false
            },
            "id": "#bowtie_index",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:createdBy": "duplexa"
}