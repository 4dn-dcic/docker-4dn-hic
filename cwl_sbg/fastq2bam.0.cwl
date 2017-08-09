{
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "arguments": [],
    "stdout": "",
    "temporaryFailCodes": [],
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
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
    "sbg:contributors": [
        "duplexa"
    ],
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
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "stdin": "",
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "sbg:modifiedBy": "duplexa",
    "label": "hictool-fastq2bam",
    "sbg:image_url": null,
    "sbg:createdBy": "duplexa",
    "sbg:validationErrors": [],
    "sbg:latestRevision": 0,
    "sbg:revision": 0,
    "sbg:createdOn": 1473274829,
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "sbg:modifiedOn": 1473274829,
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "id": "#split_bam2",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "class": "CommandLineTool",
    "baseCommand": [
        "preprocessing.sh"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274829,
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14"
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:job": {
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        },
        "inputs": {
            "output_dir": "output_dir",
            "input_fastq1": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_fastq1.fastq",
                "size": 0
            },
            "bowtie_index": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/bowtie_index.ext",
                "size": 0
            },
            "input_fastq2": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_fastq2.fastq",
                "size": 0
            }
        }
    },
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "hints": [
        {
            "class": "sbg:MemRequirement",
            "value": 24000
        },
        {
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-fastq2bam:v3"
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
    "successCodes": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/"
}