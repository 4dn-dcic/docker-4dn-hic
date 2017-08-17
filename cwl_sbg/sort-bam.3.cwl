{
    "sbg:revision": 3,
    "inputs": [
        {
            "sbg:fileTypes": "BAM",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "id": "#input_bam",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "id": "#prefix",
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out"
        }
    ],
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "outputs": [
        {
            "sbg:fileTypes": "BAM",
            "id": "#out_sorted_bam",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.sorted.bam"
            }
        },
        {
            "sbg:fileTypes": "BAI",
            "id": "#out_sorted_bam_index",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            }
        }
    ],
    "requirements": [],
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:job": {
        "inputs": {
            "input_bam": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_bam.ext"
            },
            "prefix": "prefix-string-value"
        },
        "allocatedResources": {
            "mem": 4000,
            "cpu": 2
        }
    },
    "sbg:createdBy": "duplexa",
    "temporaryFailCodes": [],
    "baseCommand": [
        "run.sh"
    ],
    "arguments": [],
    "hints": [
        {
            "value": 2,
            "class": "sbg:CPURequirement"
        },
        {
            "value": 4000,
            "class": "sbg:MemRequirement"
        },
        {
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/sort-bam:v1"
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:cmdPreview": "run.sh",
    "sbg:latestRevision": 5,
    "sbg:projectName": "Dev",
    "label": "sort-bam",
    "class": "CommandLineTool",
    "cwlVersion": "sbg:draft-2",
    "sbg:validationErrors": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478224605
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478224740
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478224969
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478225129
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedOn": 1488524436
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1490717033
        }
    ],
    "sbg:image_url": null,
    "stdin": "",
    "sbg:modifiedBy": "duplexa",
    "successCodes": [],
    "sbg:modifiedOn": 1478225129,
    "stdout": "",
    "sbg:createdOn": 1478224605,
    "sbg:project": "4dn-dcic/dev"
}