{
    "sbg:validationErrors": [],
    "arguments": [],
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
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:modifiedOn": 1473274829,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        }
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
    "sbg:modifiedBy": "duplexa",
    "successCodes": [],
    "stdin": "",
    "stdout": "",
    "sbg:project": "4dn-dcic/dev",
    "baseCommand": [
        "preprocessing.sh"
    ],
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "sbg:createdBy": "duplexa",
    "description": "",
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedOn": 1473274829,
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "sbg:image_url": null,
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
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
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
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
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam2"
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "sbg:latestRevision": 0,
    "label": "hictool-fastq2bam",
    "temporaryFailCodes": [],
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "sbg:sbgMaintained": false,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "class": "CommandLineTool",
    "sbg:contributors": [
        "duplexa"
    ],
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
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                },
                "position": 4
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir",
            "sbg:toolDefaultValue": "."
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
    "sbg:revision": 0,
    "sbg:createdOn": 1473274829,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        },
        "inputs": {
            "input_fastq2": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_fastq2.fastq",
                "class": "File"
            },
            "output_dir": "output_dir",
            "input_fastq1": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_fastq1.fastq",
                "class": "File"
            },
            "bowtie_index": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/bowtie_index.ext",
                "class": "File"
            }
        }
    }
}