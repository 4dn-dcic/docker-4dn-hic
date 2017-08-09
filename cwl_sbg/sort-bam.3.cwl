{
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
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
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "id": "#prefix"
        }
    ],
    "successCodes": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_sorted_bam",
            "outputBinding": {
                "glob": "*.sorted.bam"
            },
            "sbg:fileTypes": "BAM"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_sorted_bam_index",
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            },
            "sbg:fileTypes": "BAI"
        }
    ],
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "stdin": "",
    "sbg:latestRevision": 5,
    "sbg:project": "4dn-dcic/dev",
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
    "sbg:modifiedBy": "duplexa",
    "sbg:cmdPreview": "run.sh",
    "temporaryFailCodes": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "stdout": "",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:projectName": "Dev",
    "sbg:job": {
        "inputs": {
            "prefix": "prefix-string-value",
            "input_bam": {
                "size": 0,
                "path": "/path/to/input_bam.ext",
                "class": "File",
                "secondaryFiles": []
            }
        },
        "allocatedResources": {
            "mem": 4000,
            "cpu": 2
        }
    },
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:validationErrors": [],
    "arguments": [],
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "cwlVersion": "sbg:draft-2",
    "label": "sort-bam",
    "requirements": [],
    "sbg:createdBy": "duplexa",
    "sbg:createdOn": 1478224605,
    "sbg:modifiedOn": 1478225129,
    "sbg:sbgMaintained": false,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revision": 3,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478224605,
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478224740,
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478224969,
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478225129,
            "sbg:revisionNotes": null,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524436,
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:revision": 4
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1490717033,
            "sbg:revisionNotes": null,
            "sbg:revision": 5
        }
    ],
    "class": "CommandLineTool",
    "sbg:image_url": null
}