{
    "sbg:cmdPreview": "run.sh",
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
    "temporaryFailCodes": [],
    "arguments": [],
    "hints": [
        {
            "class": "sbg:CPURequirement",
            "value": 2
        },
        {
            "class": "sbg:MemRequirement",
            "value": 4000
        },
        {
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sort-bam:v1"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedBy": "duplexa",
    "class": "CommandLineTool",
    "sbg:createdOn": 1478224605,
    "stdout": "",
    "successCodes": [],
    "sbg:createdBy": "duplexa",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:revision": 3,
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1478225129,
    "sbg:job": {
        "allocatedResources": {
            "cpu": 2,
            "mem": 4000
        },
        "inputs": {
            "prefix": "prefix-string-value",
            "input_bam": {
                "class": "File",
                "path": "/path/to/input_bam.ext",
                "size": 0,
                "secondaryFiles": []
            }
        }
    },
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.sorted.bam"
            },
            "sbg:fileTypes": "BAM",
            "id": "#out_sorted_bam",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            },
            "sbg:fileTypes": "BAI",
            "id": "#out_sorted_bam_index",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:image_url": null,
    "inputs": [
        {
            "sbg:fileTypes": "BAM",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_bam"
        },
        {
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#prefix"
        }
    ],
    "sbg:validationErrors": [],
    "sbg:latestRevision": 5,
    "requirements": [],
    "label": "sort-bam",
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "stdin": "",
    "baseCommand": [
        "run.sh"
    ]
}