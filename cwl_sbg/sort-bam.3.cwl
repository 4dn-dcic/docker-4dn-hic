{
    "sbg:projectName": "Dev",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478224605,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478224740,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478224969,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478225129,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524436,
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1490717033,
            "sbg:revisionNotes": null
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "label": "sort-bam",
    "sbg:createdBy": "duplexa",
    "successCodes": [],
    "sbg:cmdPreview": "run.sh",
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
            "dockerPull": "duplexa/sort-bam:v1",
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "arguments": [],
    "sbg:validationErrors": [],
    "outputs": [
        {
            "sbg:fileTypes": "BAM",
            "id": "#out_sorted_bam",
            "outputBinding": {
                "glob": "*.sorted.bam"
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:fileTypes": "BAI",
            "id": "#out_sorted_bam_index",
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "requirements": [],
    "stdout": "",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:revision": 3,
    "sbg:latestRevision": 5,
    "inputs": [
        {
            "sbg:fileTypes": "BAM",
            "id": "#input_bam",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            }
        },
        {
            "id": "#prefix",
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            }
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "temporaryFailCodes": [],
    "sbg:job": {
        "allocatedResources": {
            "mem": 4000,
            "cpu": 2
        },
        "inputs": {
            "prefix": "prefix-string-value",
            "input_bam": {
                "secondaryFiles": [],
                "size": 0,
                "class": "File",
                "path": "/path/to/input_bam.ext"
            }
        }
    },
    "class": "CommandLineTool",
    "sbg:createdOn": 1478224605,
    "sbg:modifiedOn": 1478225129,
    "cwlVersion": "sbg:draft-2",
    "sbg:sbgMaintained": false,
    "sbg:image_url": null,
    "stdin": "",
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "sbg:modifiedBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/"
}