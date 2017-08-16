{
    "sbg:modifiedBy": "duplexa",
    "sbg:projectName": "Dev",
    "sbg:revision": 0,
    "stdin": "",
    "label": "hictool-fastq2bam",
    "sbg:sbgMaintained": false,
    "class": "CommandLineTool",
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "sbg:modifiedOn": 1473274829,
    "sbg:image_url": null,
    "description": "",
    "baseCommand": [
        "preprocessing.sh"
    ],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_fastq1",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "type": [
                "File"
            ],
            "id": "#input_fastq2",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "sbg:toolDefaultValue": ".",
            "type": [
                "null",
                "string"
            ],
            "id": "#output_dir",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 4,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#bowtie_index",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "sbg:fileTypes": "TGZ"
        }
    ],
    "stdout": "",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274829
        }
    ],
    "sbg:validationErrors": [],
    "sbg:project": "4dn-dcic/dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:job": {
        "inputs": {
            "input_fastq1": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/input_fastq1.fastq"
            },
            "bowtie_index": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/bowtie_index.ext"
            },
            "output_dir": "output_dir",
            "input_fastq2": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/input_fastq2.fastq"
            }
        },
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        }
    },
    "sbg:createdOn": 1473274829,
    "sbg:latestRevision": 0,
    "temporaryFailCodes": [],
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "sbg:createdBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#sorted_bam_pe",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam1",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'"
                }
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam2",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'"
                }
            }
        }
    ],
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "successCodes": [],
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ]
        }
    ],
    "arguments": [],
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
    ]
}