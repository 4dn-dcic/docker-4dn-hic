{
    "sbg:sbgMaintained": false,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "sbg:image_url": null,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274829,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14"
        }
    ],
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "sbg:projectName": "Dev",
    "stdin": "",
    "baseCommand": [
        "preprocessing.sh"
    ],
    "sbg:latestRevision": 0,
    "label": "hictool-fastq2bam",
    "sbg:revision": 0,
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
    "inputs": [
        {
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "id": "#input_fastq1",
            "sbg:fileTypes": "FASTQ, FQ",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "id": "#input_fastq2",
            "sbg:fileTypes": "FASTQ, FQ",
            "type": [
                "File"
            ]
        },
        {
            "sbg:toolDefaultValue": ".",
            "id": "#output_dir",
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 4,
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'"
                }
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "separate": false,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "id": "#bowtie_index",
            "sbg:fileTypes": "TGZ",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
    "stdout": "",
    "sbg:validationErrors": [],
    "sbg:contributors": [
        "duplexa"
    ],
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
    "sbg:createdBy": "duplexa",
    "sbg:modifiedOn": 1473274829,
    "sbg:project": "4dn-dcic/dev",
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
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "successCodes": [],
    "sbg:createdOn": 1473274829,
    "arguments": [],
    "class": "CommandLineTool",
    "temporaryFailCodes": [],
    "sbg:job": {
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        },
        "inputs": {
            "input_fastq1": {
                "secondaryFiles": [],
                "size": 0,
                "class": "File",
                "path": "/path/to/input_fastq1.fastq"
            },
            "bowtie_index": {
                "secondaryFiles": [],
                "size": 0,
                "class": "File",
                "path": "/path/to/bowtie_index.ext"
            },
            "input_fastq2": {
                "secondaryFiles": [],
                "size": 0,
                "class": "File",
                "path": "/path/to/input_fastq2.fastq"
            },
            "output_dir": "output_dir"
        }
    }
}