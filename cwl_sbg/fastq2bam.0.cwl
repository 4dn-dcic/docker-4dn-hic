{
    "cwlVersion": "sbg:draft-2",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "sbg:latestRevision": 0,
    "baseCommand": [
        "preprocessing.sh"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
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
    "class": "CommandLineTool",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274829,
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "label": "hictool-fastq2bam",
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "sbg:job": {
        "inputs": {
            "output_dir": "output_dir",
            "bowtie_index": {
                "size": 0,
                "path": "/path/to/bowtie_index.ext",
                "class": "File",
                "secondaryFiles": []
            },
            "input_fastq2": {
                "size": 0,
                "path": "/path/to/input_fastq2.fastq",
                "class": "File",
                "secondaryFiles": []
            },
            "input_fastq1": {
                "size": 0,
                "path": "/path/to/input_fastq1.fastq",
                "class": "File",
                "secondaryFiles": []
            }
        },
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        }
    },
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "sbg:validationErrors": [],
    "description": "",
    "sbg:projectName": "Dev",
    "sbg:createdOn": 1473274829,
    "successCodes": [],
    "outputs": [
        {
            "id": "#sorted_bam_pe",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'"
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'"
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'"
                }
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "hints": [
        {
            "value": 24000,
            "class": "sbg:MemRequirement"
        },
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
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
    "stdout": "",
    "sbg:project": "4dn-dcic/dev",
    "arguments": [],
    "sbg:revision": 0,
    "sbg:modifiedOn": 1473274829,
    "temporaryFailCodes": [],
    "sbg:createdBy": "duplexa",
    "sbg:modifiedBy": "duplexa",
    "stdin": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "sbg:image_url": null,
    "inputs": [
        {
            "inputBinding": {
                "position": 2,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "id": "#input_fastq1",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "id": "#input_fastq2",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "inputBinding": {
                "position": 4,
                "separate": false,
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'"
                },
                "sbg:cmdInclude": true
            },
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "."
        },
        {
            "inputBinding": {
                "position": 1,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "id": "#bowtie_index",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "TGZ"
        }
    ],
    "sbg:sbgMaintained": false
}