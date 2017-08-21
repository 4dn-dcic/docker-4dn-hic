{
    "temporaryFailCodes": [],
    "sbg:id": "4dn-dcic/dev/fastq2bam/0",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:project": "4dn-dcic/dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastq2bam/0/raw/",
    "hints": [
        {
            "value": 24000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerImageId": "",
            "dockerPull": "duplexa/hictool-fastq2bam:v3",
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
    "sbg:projectName": "Dev",
    "description": "",
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
    "class": "CommandLineTool",
    "sbg:image_url": null,
    "baseCommand": [
        "preprocessing.sh"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274829,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/fastq2bam/14"
        }
    ],
    "stdout": "",
    "successCodes": [],
    "sbg:sbgMaintained": false,
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'"
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair1.bam'"
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
                    "class": "Expression",
                    "script": "$job.inputs.output_dir + '/out_pair2.bam'"
                }
            }
        }
    ],
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "duplexa",
    "sbg:latestRevision": 0,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "cwlVersion": "sbg:draft-2",
    "stdin": "",
    "sbg:modifiedOn": 1473274829,
    "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
    "sbg:createdBy": "duplexa",
    "sbg:copyOf": "gaurav/4dn/fastq2bam/14",
    "inputs": [
        {
            "id": "#input_fastq1",
            "sbg:fileTypes": "FASTQ, FQ",
            "type": [
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 2
            }
        },
        {
            "id": "#input_fastq2",
            "sbg:fileTypes": "FASTQ, FQ",
            "type": [
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 3
            }
        },
        {
            "id": "#output_dir",
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": ".",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 4,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.output_dir || '.'"
                }
            }
        },
        {
            "id": "#bowtie_index",
            "sbg:fileTypes": "TGZ",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": false,
                "position": 1
            }
        }
    ],
    "label": "hictool-fastq2bam",
    "sbg:job": {
        "allocatedResources": {
            "mem": 24000,
            "cpu": 4
        },
        "inputs": {
            "input_fastq1": {
                "size": 0,
                "path": "/path/to/input_fastq1.fastq",
                "class": "File",
                "secondaryFiles": []
            },
            "input_fastq2": {
                "size": 0,
                "path": "/path/to/input_fastq2.fastq",
                "class": "File",
                "secondaryFiles": []
            },
            "output_dir": "output_dir",
            "bowtie_index": {
                "size": 0,
                "path": "/path/to/bowtie_index.ext",
                "class": "File",
                "secondaryFiles": []
            }
        }
    },
    "sbg:createdOn": 1473274829,
    "sbg:revision": 0,
    "arguments": [],
    "sbg:revisionNotes": "docker version 3. A sort step skipped."
}