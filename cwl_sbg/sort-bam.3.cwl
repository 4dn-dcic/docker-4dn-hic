{
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
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdBy": "duplexa",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "sbg:modifiedBy": "duplexa",
    "sbg:projectName": "Dev",
    "requirements": [],
    "sbg:project": "4dn-dcic/dev",
    "inputs": [
        {
            "id": "#input_bam",
            "sbg:fileTypes": "BAM",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
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
            "dockerPull": "duplexa/sort-bam:v1",
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "class": "CommandLineTool",
    "successCodes": [],
    "sbg:revision": 3,
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:image_url": null,
    "sbg:createdOn": 1478224605,
    "label": "sort-bam",
    "stdout": "",
    "arguments": [],
    "sbg:cmdPreview": "run.sh",
    "temporaryFailCodes": [],
    "sbg:validationErrors": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1478224605,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1478224740,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedOn": 1478224969,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedOn": 1478225129,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1488524436,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 5,
            "sbg:modifiedOn": 1490717033,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:modifiedOn": 1478225129,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "cwlVersion": "sbg:draft-2",
    "sbg:latestRevision": 5,
    "sbg:job": {
        "allocatedResources": {
            "cpu": 2,
            "mem": 4000
        },
        "inputs": {
            "input_bam": {
                "class": "File",
                "path": "/path/to/input_bam.ext",
                "secondaryFiles": [],
                "size": 0
            },
            "prefix": "prefix-string-value"
        }
    },
    "stdin": ""
}