{
    "sbg:cmdPreview": "run.sh",
    "inputs": [
        {
            "sbg:fileTypes": "BAM",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "id": "#input_bam"
        },
        {
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            },
            "id": "#prefix"
        }
    ],
    "arguments": [],
    "sbg:createdBy": "duplexa",
    "sbg:createdOn": 1478224605,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "temporaryFailCodes": [],
    "sbg:modifiedBy": "duplexa",
    "sbg:sbgMaintained": false,
    "sbg:latestRevision": 5,
    "successCodes": [],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 2,
            "mem": 4000
        },
        "inputs": {
            "prefix": "prefix-string-value",
            "input_bam": {
                "size": 0,
                "path": "/path/to/input_bam.ext",
                "class": "File",
                "secondaryFiles": []
            }
        }
    },
    "requirements": [],
    "sbg:project": "4dn-dcic/dev",
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
    "sbg:revision": 3,
    "sbg:contributors": [
        "duplexa"
    ],
    "outputs": [
        {
            "sbg:fileTypes": "BAM",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.sorted.bam"
            },
            "id": "#out_sorted_bam"
        },
        {
            "sbg:fileTypes": "BAI",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            },
            "id": "#out_sorted_bam_index"
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1478224605
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1478224740
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1478224969
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1478225129
        },
        {
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1488524436
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1490717033
        }
    ],
    "stdout": "",
    "sbg:image_url": null,
    "cwlVersion": "sbg:draft-2",
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "stdin": "",
    "sbg:projectName": "Dev",
    "label": "sort-bam",
    "sbg:validationErrors": [],
    "sbg:modifiedOn": 1478225129,
    "class": "CommandLineTool",
    "sbg:appVersion": [
        "sbg:draft-2"
    ]
}