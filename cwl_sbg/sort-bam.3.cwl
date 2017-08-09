{
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "sbg:revision": 3,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:validationErrors": [],
    "sbg:createdBy": "duplexa",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdOn": 1478224605,
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
    "sbg:job": {
        "inputs": {
            "prefix": "prefix-string-value",
            "input_bam": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/input_bam.ext"
            }
        },
        "allocatedResources": {
            "mem": 4000,
            "cpu": 2
        }
    },
    "label": "sort-bam",
    "sbg:project": "4dn-dcic/dev",
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.sorted.bam"
            },
            "id": "#out_sorted_bam",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BAM"
        },
        {
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            },
            "id": "#out_sorted_bam_index",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BAI"
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
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/sort-bam:v1"
        }
    ],
    "stdin": "",
    "sbg:sbgMaintained": false,
    "successCodes": [],
    "arguments": [],
    "sbg:modifiedOn": 1478225129,
    "stdout": "",
    "sbg:image_url": null,
    "baseCommand": [
        "run.sh"
    ],
    "class": "CommandLineTool",
    "sbg:cmdPreview": "run.sh",
    "sbg:projectName": "Dev",
    "temporaryFailCodes": [],
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "sbg:latestRevision": 5,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "inputs": [
        {
            "id": "#input_bam",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BAM"
        },
        {
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#prefix"
        }
    ],
    "cwlVersion": "sbg:draft-2"
}