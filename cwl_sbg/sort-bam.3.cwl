{
    "stdin": "",
    "sbg:modifiedBy": "duplexa",
    "label": "sort-bam",
    "sbg:latestRevision": 5,
    "temporaryFailCodes": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:appVersion": [
        "sbg:draft-2"
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
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:sbgMaintained": false,
    "requirements": [],
    "outputs": [
        {
            "sbg:fileTypes": "BAM",
            "id": "#out_sorted_bam",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.sorted.bam"
            }
        },
        {
            "sbg:fileTypes": "BAI",
            "id": "#out_sorted_bam_index",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            }
        }
    ],
    "sbg:modifiedOn": 1478225129,
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "baseCommand": [
        "run.sh"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "sbg:project": "4dn-dcic/dev",
    "stdout": "",
    "sbg:revision": 3,
    "sbg:createdOn": 1478224605,
    "sbg:validationErrors": [],
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
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
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
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "sbg:toolDefaultValue": "out"
        }
    ],
    "class": "CommandLineTool",
    "sbg:job": {
        "allocatedResources": {
            "mem": 4000,
            "cpu": 2
        },
        "inputs": {
            "input_bam": {
                "class": "File",
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_bam.ext"
            },
            "prefix": "prefix-string-value"
        }
    },
    "sbg:createdBy": "duplexa",
    "arguments": [],
    "successCodes": [],
    "sbg:cmdPreview": "run.sh",
    "sbg:image_url": null
}