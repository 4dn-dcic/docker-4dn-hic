{
    "stdout": "",
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "id": "#cwl-js-engine"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "sbg:sbgMaintained": false,
    "sbg:createdBy": "duplexa",
    "description": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "label": "hictool-fastq2bam",
    "successCodes": [],
    "hints": [
        {
            "class": "sbg:MemRequirement",
            "value": 24000
        },
        {
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
            "dockerImageId": "",
            "class": "DockerRequirement"
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
    "arguments": [],
    "sbg:image_url": null,
    "sbg:modifiedBy": "duplexa",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1473274829,
    "sbg:job": {
        "inputs": {
            "bowtie_index": {
                "secondaryFiles": [],
                "path": "/path/to/bowtie_index.ext",
                "size": 0,
                "class": "File"
            },
            "input_fastq2": {
                "secondaryFiles": [],
                "path": "/path/to/input_fastq2.fastq",
                "size": 0,
                "class": "File"
            },
            "input_fastq1": {
                "secondaryFiles": [],
                "path": "/path/to/input_fastq1.fastq",
                "size": 0,
                "class": "File"
            },
            "output_dir": "output_dir"
        },
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        }
    },
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:modifiedOn": 1473274829,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:validationErrors": [],
    "baseCommand": [
        "preprocessing.sh"
    ],
    "sbg:projectName": "Dev",
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
    "class": "CommandLineTool",
    "cwlVersion": "sbg:draft-2",
    "sbg:revision": 0,
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "sbg:project": "4dn-dcic/dev",
    "stdin": "",
    "sbg:latestRevision": 0,
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "inputBinding": {
                "separate": false,
                "position": 2,
                "sbg:cmdInclude": true
            },
            "id": "#input_fastq1",
            "type": [
                "File"
            ]
        },
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "inputBinding": {
                "separate": false,
                "position": 3,
                "sbg:cmdInclude": true
            },
            "id": "#input_fastq2",
            "type": [
                "File"
            ]
        },
        {
            "sbg:toolDefaultValue": ".",
            "inputBinding": {
                "separate": false,
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "position": 4,
                "sbg:cmdInclude": true
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
                "separate": false,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "id": "#bowtie_index",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "temporaryFailCodes": [],
    "sbg:createdOn": 1473274829
}