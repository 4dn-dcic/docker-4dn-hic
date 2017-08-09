{
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "class": "CommandLineTool",
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
    "outputs": [
        {
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
            ],
            "id": "#sorted_bam_pe"
        },
        {
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
            ],
            "id": "#split_bam1"
        },
        {
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
            ],
            "id": "#split_bam2"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedBy": "duplexa",
    "arguments": [],
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "sbg:sbgMaintained": false,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274829,
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14",
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "label": "hictool-fastq2bam",
    "sbg:project": "4dn-dcic/dev",
    "sbg:projectName": "Dev",
    "stdin": "",
    "sbg:validationErrors": [],
    "baseCommand": [
        "preprocessing.sh"
    ],
    "temporaryFailCodes": [],
    "sbg:modifiedOn": 1473274829,
    "sbg:createdOn": 1473274829,
    "sbg:createdBy": "duplexa",
    "stdout": "",
    "sbg:image_url": null,
    "sbg:revision": 0,
    "successCodes": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "sbg:revisionNotes": "docker version 3. A sort step skipped.",
    "sbg:latestRevision": 0,
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "inputBinding": {
                "position": 2,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "type": [
                "File"
            ],
            "id": "#input_fastq1"
        },
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "inputBinding": {
                "position": 3,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "type": [
                "File"
            ],
            "id": "#input_fastq2"
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 4,
                "separate": false,
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.output_dir || '.'"
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
            "sbg:fileTypes": "TGZ",
            "inputBinding": {
                "position": 1,
                "separate": false,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#bowtie_index"
        }
    ],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 4,
            "mem": 24000
        },
        "inputs": {
            "input_fastq1": {
                "path": "/path/to/input_fastq1.fastq",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            },
            "output_dir": "output_dir",
            "bowtie_index": {
                "path": "/path/to/bowtie_index.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            },
            "input_fastq2": {
                "path": "/path/to/input_fastq2.fastq",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            }
        }
    },
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq"
}