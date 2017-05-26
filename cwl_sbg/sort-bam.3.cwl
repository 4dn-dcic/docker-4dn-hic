{
    "label": "sort-bam",
    "sbg:cmdPreview": "run.sh",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdOn": 1478224605,
    "sbg:latestRevision": 5,
    "stdin": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "stdout": "",
    "sbg:image_url": null,
    "sbg:projectName": "Dev",
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sort-bam:v1",
            "dockerImageId": ""
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478224605,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478224740,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478224969,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478225129,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedOn": 1488524436,
            "sbg:revision": 4
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1490717033,
            "sbg:revision": 5
        }
    ],
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
    "sbg:job": {
        "inputs": {
            "prefix": "prefix-string-value",
            "input_bam": {
                "secondaryFiles": [],
                "path": "/path/to/input_bam.ext",
                "size": 0,
                "class": "File"
            }
        },
        "allocatedResources": {
            "cpu": 2,
            "mem": 4000
        }
    },
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "sbg:createdBy": "duplexa",
    "baseCommand": [
        "run.sh"
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BAM",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "id": "#input_bam"
        },
        {
            "id": "#prefix",
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "requirements": [],
    "arguments": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BAM",
            "outputBinding": {
                "glob": "*.sorted.bam"
            },
            "id": "#out_sorted_bam"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BAI",
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            },
            "id": "#out_sorted_bam_index"
        }
    ],
    "sbg:revision": 3,
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "sbg:modifiedOn": 1478225129,
    "successCodes": [],
    "sbg:project": "4dn-dcic/dev",
    "class": "CommandLineTool",
    "temporaryFailCodes": [],
    "cwlVersion": "sbg:draft-2"
}