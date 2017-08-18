{
    "sbg:validationErrors": [],
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
            "dockerPull": "duplexa/sort-bam:v1",
            "dockerImageId": ""
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478224605,
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478224740,
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478224969,
            "sbg:revision": 2
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478225129,
            "sbg:revision": 3
        },
        {
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524436,
            "sbg:revision": 4
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1490717033,
            "sbg:revision": 5
        }
    ],
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "sbg:revision": 3,
    "arguments": [],
    "sbg:job": {
        "inputs": {
            "input_bam": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/input_bam.ext"
            },
            "prefix": "prefix-string-value"
        },
        "allocatedResources": {
            "cpu": 2,
            "mem": 4000
        }
    },
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1478224605,
    "stdin": "",
    "requirements": [],
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "successCodes": [],
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1478225129,
    "sbg:sbgMaintained": false,
    "baseCommand": [
        "run.sh"
    ],
    "class": "CommandLineTool",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdBy": "duplexa",
    "temporaryFailCodes": [],
    "sbg:modifiedBy": "duplexa",
    "stdout": "",
    "sbg:latestRevision": 5,
    "sbg:cmdPreview": "run.sh",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "id": "#input_bam",
            "sbg:fileTypes": "BAM"
        },
        {
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ],
            "id": "#prefix",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            }
        }
    ],
    "label": "sort-bam",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.sorted.bam"
            },
            "id": "#out_sorted_bam",
            "sbg:fileTypes": "BAM"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            },
            "id": "#out_sorted_bam_index",
            "sbg:fileTypes": "BAI"
        }
    ],
    "sbg:image_url": null,
    "cwlVersion": "sbg:draft-2"
}