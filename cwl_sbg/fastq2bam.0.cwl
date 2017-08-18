{
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:modifiedOn": 1473274829,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:revision": 0,
    "successCodes": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:image_url": null,
    "sbg:modifiedBy": "duplexa",
    "sbg:validationErrors": [],
    "sbg:modifiedOn": 1473274829,
    "sbg:project": "4dn-dcic/dev",
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
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "baseCommand": [
        "preprocessing.sh"
    ],
    "inputs": [
        {
            "id": "#input_fastq1",
            "inputBinding": {
                "separate": false,
                "position": 2,
                "sbg:cmdInclude": true
            },
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "id": "#input_fastq2",
            "inputBinding": {
                "separate": false,
                "position": 3,
                "sbg:cmdInclude": true
            },
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "inputBinding": {
                "valueFrom": {
                    "script": "$job.inputs.output_dir || '.'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                },
                "separate": false,
                "position": 4,
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
            "id": "#bowtie_index",
            "inputBinding": {
                "separate": false,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "TGZ"
        }
    ],
    "stdout": "",
    "label": "hictool-fastq2bam",
    "description": "",
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "sbg:latestRevision": 0,
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "sbg:sbgMaintained": false,
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "stdin": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        },
        "inputs": {
            "input_fastq1": {
                "path": "/path/to/input_fastq1.fastq",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "input_fastq2": {
                "path": "/path/to/input_fastq2.fastq",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "output_dir": "output_dir",
            "bowtie_index": {
                "path": "/path/to/bowtie_index.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            }
        }
    },
    "class": "CommandLineTool",
    "outputs": [
        {
            "id": "#sorted_bam_pe",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            }
        },
        {
            "id": "#split_bam1",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            }
        },
        {
            "id": "#split_bam2",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            }
        }
    ],
    "sbg:projectName": "Dev",
    "temporaryFailCodes": [],
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "arguments": [],
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:createdOn": 1473274829,
    "sbg:contributors": [
        "duplexa"
    ]
}