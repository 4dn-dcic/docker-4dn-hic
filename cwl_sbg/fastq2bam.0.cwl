{
    "baseCommand": [
        "preprocessing.sh"
    ],
    "sbg:modifiedOn": 1473274829,
    "sbg:job": {
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        },
        "inputs": {
            "bowtie_index": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/bowtie_index.ext",
                "class": "File"
            },
            "input_fastq1": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_fastq1.fastq",
                "class": "File"
            },
            "output_dir": "output_dir",
            "input_fastq2": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_fastq2.fastq",
                "class": "File"
            }
        }
    },
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
    "description": "",
    "successCodes": [],
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "sbg:sbgMaintained": false,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274829,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14"
        }
    ],
    "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
    "arguments": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "sbg:latestRevision": 0,
    "class": "CommandLineTool",
    "sbg:createdBy": "duplexa",
    "temporaryFailCodes": [],
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "duplexa",
    "sbg:revision": 0,
    "sbg:createdOn": 1473274829,
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "hints": [
        {
            "class": "sbg:MemRequirement",
            "value": 24000
        },
        {
            "class": "DockerRequirement",
            "dockerImageId": "",
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
    "sbg:project": "4dn-dcic/dev",
    "sbg:image_url": null,
    "cwlVersion": "sbg:draft-2",
    "stdout": "",
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'"
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
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'"
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
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam2"
        }
    ],
    "label": "hictool-fastq2bam",
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "sbg:contributors": [
        "duplexa"
    ],
    "stdin": "",
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "id": "#input_fastq1"
        },
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 3,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "id": "#input_fastq2"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 4,
                "separate": false,
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'"
                }
            },
            "sbg:toolDefaultValue": ".",
            "id": "#output_dir"
        },
        {
            "sbg:fileTypes": "TGZ",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "id": "#bowtie_index"
        }
    ]
}