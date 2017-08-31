{
    "sbg:projectName": "Dev",
    "stdin": "",
    "hints": [
        {
            "value": 6000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerPull": "duplexa/4dn-hic:v6",
            "class": "DockerRequirement",
            "dockerImageId": ""
        },
        {
            "value": 4,
            "class": "sbg:CPURequirement"
        }
    ],
    "stdout": "",
    "sbg:image_url": null,
    "label": "bwa-mem",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bwa-mem/10/raw/",
    "sbg:createdBy": "duplexa",
    "sbg:revision": 10,
    "cwlVersion": "sbg:draft-2",
    "successCodes": [],
    "sbg:validationErrors": [],
    "sbg:cmdPreview": "run-bwa-mem.sh  /path/to/fastq1.ext  /path/to/fastq2.ext  /path/to/bwa_index.ext  9",
    "sbg:project": "4dn-dcic/dev",
    "inputs": [
        {
            "id": "#fastq1",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            }
        },
        {
            "id": "#fastq2",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            }
        },
        {
            "id": "#bwa_index",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "TGZ",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 3
            }
        },
        {
            "sbg:toolDefaultValue": "4",
            "id": "#nThreads",
            "type": [
                "int"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 5
            }
        },
        {
            "sbg:toolDefaultValue": "out",
            "id": "#prefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 4
            }
        }
    ],
    "sbg:latestRevision": 10,
    "requirements": [],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 4,
            "mem": 6000
        },
        "inputs": {
            "fastq2": {
                "size": 0,
                "path": "/path/to/fastq2.ext",
                "class": "File",
                "secondaryFiles": []
            },
            "prefix": "prefix-string-value",
            "bwa_index": {
                "size": 0,
                "path": "/path/to/bwa_index.ext",
                "class": "File",
                "secondaryFiles": []
            },
            "fastq1": {
                "size": 0,
                "path": "/path/to/fastq1.ext",
                "class": "File",
                "secondaryFiles": []
            },
            "nThreads": 9
        }
    },
    "class": "CommandLineTool",
    "baseCommand": [
        "run-bwa-mem.sh"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478104724
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478105028
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478105153
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478105188
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478110115
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478110198
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 6,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478110296
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 7,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478111709
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 8,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478217741
        },
        {
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:revision": 9,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524196
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 10,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1490717019
        }
    ],
    "description": "Alignment of a pair of fastq files with bwa mem for Hi-C data.",
    "outputs": [
        {
            "id": "#out_bam",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BAM",
            "outputBinding": {
                "glob": "*.bam"
            }
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:createdOn": 1478104724,
    "temporaryFailCodes": [],
    "sbg:id": "4dn-dcic/dev/bwa-mem/10",
    "sbg:modifiedOn": 1490717019,
    "arguments": [],
    "sbg:sbgMaintained": false,
    "sbg:modifiedBy": "duplexa",
    "sbg:appVersion": [
        "sbg:draft-2"
    ]
}