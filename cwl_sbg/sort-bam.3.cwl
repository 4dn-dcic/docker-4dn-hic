{
    "temporaryFailCodes": [],
    "sbg:modifiedOn": 1478225129,
    "baseCommand": [
        "run.sh"
    ],
    "sbg:revision": 3,
    "stdin": "",
    "inputs": [
        {
            "id": "#input_bam",
            "sbg:fileTypes": "BAM",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            }
        },
        {
            "id": "#prefix",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:latestRevision": 5,
    "stdout": "",
    "sbg:image_url": null,
    "sbg:sbgMaintained": false,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:job": {
        "inputs": {
            "prefix": "prefix-string-value",
            "input_bam": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_bam.ext",
                "class": "File"
            }
        },
        "allocatedResources": {
            "mem": 4000,
            "cpu": 2
        }
    },
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
            "dockerImageId": "",
            "dockerPull": "duplexa/sort-bam:v1",
            "class": "DockerRequirement"
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1478224605,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1478224740,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1478224969,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1478225129,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1488524436,
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:modifiedOn": 1490717033,
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:cmdPreview": "run.sh",
    "arguments": [],
    "outputs": [
        {
            "id": "#out_sorted_bam",
            "sbg:fileTypes": "BAM",
            "outputBinding": {
                "glob": "*.sorted.bam"
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#out_sorted_bam_index",
            "sbg:fileTypes": "BAI",
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "label": "sort-bam",
    "requirements": [],
    "sbg:validationErrors": [],
    "class": "CommandLineTool",
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "successCodes": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1478224605,
    "sbg:createdBy": "duplexa"
}