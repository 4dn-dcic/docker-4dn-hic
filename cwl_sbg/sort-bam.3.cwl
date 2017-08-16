{
    "sbg:job": {
        "inputs": {
            "prefix": "prefix-string-value",
            "input_bam": {
                "path": "/path/to/input_bam.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            }
        },
        "allocatedResources": {
            "mem": 4000,
            "cpu": 2
        }
    },
    "cwlVersion": "sbg:draft-2",
    "baseCommand": [
        "run.sh"
    ],
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
            "dockerPull": "duplexa/sort-bam:v1",
            "class": "DockerRequirement"
        }
    ],
    "sbg:createdOn": 1478224605,
    "temporaryFailCodes": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "arguments": [],
    "label": "sort-bam",
    "sbg:revision": 3,
    "sbg:createdBy": "duplexa",
    "stdin": "",
    "sbg:modifiedBy": "duplexa",
    "outputs": [
        {
            "id": "#out_sorted_bam",
            "outputBinding": {
                "glob": "*.sorted.bam"
            },
            "sbg:fileTypes": "BAM",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#out_sorted_bam_index",
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            },
            "sbg:fileTypes": "BAI",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedOn": 1478225129,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:image_url": null,
    "class": "CommandLineTool",
    "sbg:validationErrors": [],
    "sbg:projectName": "Dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "requirements": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1478224605
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1478224740
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedOn": 1478224969
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedOn": 1478225129
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1488524436
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 5,
            "sbg:modifiedOn": 1490717033
        }
    ],
    "stdout": "",
    "successCodes": [],
    "inputs": [
        {
            "id": "#input_bam",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BAM",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            }
        },
        {
            "id": "#prefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "out"
        }
    ],
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "sbg:latestRevision": 5,
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "sbg:cmdPreview": "run.sh"
}