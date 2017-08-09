{
    "successCodes": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "sbg:modifiedBy": "duplexa",
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "cwlVersion": "sbg:draft-2",
    "arguments": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "inputs": [
        {
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq1"
        },
        {
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq2"
        },
        {
            "inputBinding": {
                "separate": false,
                "position": 4,
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": ".",
            "id": "#output_dir"
        },
        {
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "TGZ",
            "id": "#bowtie_index"
        }
    ],
    "sbg:image_url": null,
    "sbg:revision": 0,
    "stdout": "",
    "sbg:createdBy": "duplexa",
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
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "baseCommand": [
        "preprocessing.sh"
    ],
    "sbg:latestRevision": 0,
    "sbg:job": {
        "inputs": {
            "output_dir": "output_dir",
            "bowtie_index": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/bowtie_index.ext",
                "size": 0
            },
            "input_fastq1": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_fastq1.fastq",
                "size": 0
            },
            "input_fastq2": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_fastq2.fastq",
                "size": 0
            }
        },
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        }
    },
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:createdOn": 1473274829,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274829,
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:projectName": "Dev",
    "label": "hictool-fastq2bam",
    "sbg:validationErrors": [],
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "sbg:sbgMaintained": false,
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "class": "CommandLineTool",
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
    "description": "",
    "stdin": "",
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "sbg:modifiedOn": 1473274829,
    "temporaryFailCodes": []
}