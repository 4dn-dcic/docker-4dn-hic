{
    "baseCommand": [
        "run.sh"
    ],
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
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:projectName": "Dev",
    "sbg:createdBy": "duplexa",
    "sbg:project": "4dn-dcic/dev",
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_bam",
            "sbg:fileTypes": "BAM"
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#prefix",
            "sbg:toolDefaultValue": "out"
        }
    ],
    "outputs": [
        {
            "id": "#out_sorted_bam",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.sorted.bam"
            },
            "sbg:fileTypes": "BAM"
        },
        {
            "id": "#out_sorted_bam_index",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            },
            "sbg:fileTypes": "BAI"
        }
    ],
    "arguments": [],
    "sbg:revision": 3,
    "sbg:sbgMaintained": false,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478224605
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478224740
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478224969
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478225129
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4,
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedOn": 1488524436
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1490717033
        }
    ],
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "stdin": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "sbg:job": {
        "inputs": {
            "prefix": "prefix-string-value",
            "input_bam": {
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_bam.ext",
                "size": 0
            }
        },
        "allocatedResources": {
            "cpu": 2,
            "mem": 4000
        }
    },
    "sbg:cmdPreview": "run.sh",
    "sbg:modifiedOn": 1478225129,
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "requirements": [],
    "cwlVersion": "sbg:draft-2",
    "temporaryFailCodes": [],
    "sbg:createdOn": 1478224605,
    "sbg:contributors": [
        "duplexa"
    ],
    "label": "sort-bam",
    "sbg:latestRevision": 5,
    "stdout": "",
    "successCodes": [],
    "sbg:modifiedBy": "duplexa",
    "sbg:validationErrors": [],
    "class": "CommandLineTool",
    "sbg:image_url": null
}