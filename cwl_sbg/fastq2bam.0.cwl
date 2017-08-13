{
    "stdin": "",
    "sbg:latestRevision": 0,
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "sbg:revision": 0,
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        },
        "inputs": {
            "input_fastq1": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_fastq1.fastq"
            },
            "input_fastq2": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_fastq2.fastq"
            },
            "output_dir": "output_dir",
            "bowtie_index": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/bowtie_index.ext"
            }
        }
    },
    "sbg:modifiedBy": "duplexa",
    "baseCommand": [
        "preprocessing.sh"
    ],
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "description": "",
    "hints": [
        {
            "class": "sbg:MemRequirement",
            "value": 24000
        },
        {
            "dockerImageId": "",
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
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
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1473274829,
    "arguments": [],
    "sbg:sbgMaintained": false,
    "sbg:image_url": null,
    "class": "CommandLineTool",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1473274829,
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
    "sbg:projectName": "Dev",
    "outputs": [
        {
            "id": "#sorted_bam_pe",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'",
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
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                    "class": "Expression"
                }
            }
        }
    ],
    "stdout": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "inputs": [
        {
            "id": "#input_fastq1",
            "type": [
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": false
            },
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "id": "#input_fastq2",
            "type": [
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": false
            },
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "sbg:toolDefaultValue": ".",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 4,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'",
                    "class": "Expression"
                },
                "separate": false
            },
            "id": "#output_dir"
        },
        {
            "id": "#bowtie_index",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": false
            },
            "sbg:fileTypes": "TGZ"
        }
    ],
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "successCodes": [],
    "label": "hictool-fastq2bam",
    "cwlVersion": "sbg:draft-2",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:validationErrors": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274829
        }
    ],
    "sbg:createdBy": "duplexa",
    "temporaryFailCodes": []
}