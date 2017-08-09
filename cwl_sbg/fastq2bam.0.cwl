{
    "sbg:modifiedOn": 1473274829,
    "sbg:validationErrors": [],
    "temporaryFailCodes": [],
    "sbg:sbgMaintained": false,
    "sbg:image_url": null,
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "sbg:createdBy": "duplexa",
    "description": "",
    "label": "hictool-fastq2bam",
    "stdout": "",
    "sbg:projectName": "Dev",
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 2
            },
            "sbg:fileTypes": "FASTQ, FQ",
            "type": [
                "File"
            ],
            "id": "#input_fastq1"
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 3
            },
            "sbg:fileTypes": "FASTQ, FQ",
            "type": [
                "File"
            ],
            "id": "#input_fastq2"
        },
        {
            "sbg:toolDefaultValue": ".",
            "inputBinding": {
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 4
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir"
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 1
            },
            "sbg:fileTypes": "TGZ",
            "type": [
                "null",
                "File"
            ],
            "id": "#bowtie_index"
        }
    ],
    "sbg:revision": 0,
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "stdin": "",
    "baseCommand": [
        "preprocessing.sh"
    ],
    "arguments": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam2"
        }
    ],
    "successCodes": [],
    "class": "CommandLineTool",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274829,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14"
        }
    ],
    "sbg:createdOn": 1473274829,
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "sbg:modifiedBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "sbg:project": "4dn-dcic/dev",
    "cwlVersion": "sbg:draft-2",
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
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
    "sbg:job": {
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        },
        "inputs": {
            "input_fastq2": {
                "size": 0,
                "class": "File",
                "path": "/path/to/input_fastq2.fastq",
                "secondaryFiles": []
            },
            "output_dir": "output_dir",
            "bowtie_index": {
                "size": 0,
                "class": "File",
                "path": "/path/to/bowtie_index.ext",
                "secondaryFiles": []
            },
            "input_fastq1": {
                "size": 0,
                "class": "File",
                "path": "/path/to/input_fastq1.fastq",
                "secondaryFiles": []
            }
        }
    },
    "sbg:latestRevision": 0,
    "hints": [
        {
            "class": "sbg:MemRequirement",
            "value": 24000
        },
        {
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
            "class": "DockerRequirement",
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
    "sbg:contributors": [
        "duplexa"
    ]
}