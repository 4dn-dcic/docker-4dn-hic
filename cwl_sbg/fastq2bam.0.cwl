{
    "sbg:revision": 0,
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:image_url": null,
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "sbg:validationErrors": [],
    "label": "hictool-fastq2bam",
    "sbg:projectName": "Dev",
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:modifiedOn": 1473274829,
    "baseCommand": [
        "preprocessing.sh"
    ],
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
    "sbg:latestRevision": 0,
    "sbg:createdOn": 1473274829,
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
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "sbg:createdBy": "duplexa",
    "temporaryFailCodes": [],
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "stdin": "",
    "sbg:project": "4dn-dcic/dev",
    "arguments": [],
    "stdout": "",
    "class": "CommandLineTool",
    "successCodes": [],
    "description": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "inputs": [
        {
            "id": "#input_fastq1",
            "sbg:fileTypes": "FASTQ, FQ",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": false
            },
            "type": [
                "File"
            ]
        },
        {
            "id": "#input_fastq2",
            "sbg:fileTypes": "FASTQ, FQ",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": false
            },
            "type": [
                "File"
            ]
        },
        {
            "id": "#output_dir",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                },
                "position": 4
            },
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "."
        },
        {
            "id": "#bowtie_index",
            "sbg:fileTypes": "TGZ",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": false
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274829,
            "sbg:revision": 0
        }
    ],
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "cwlVersion": "sbg:draft-2",
    "sbg:job": {
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        },
        "inputs": {
            "input_fastq2": {
                "path": "/path/to/input_fastq2.fastq",
                "size": 0,
                "secondaryFiles": [],
                "class": "File"
            },
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
            "output_dir": "output_dir"
        }
    }
}