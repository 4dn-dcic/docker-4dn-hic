{
    "arguments": [],
    "requirements": [],
    "sbg:createdOn": 1478224605,
    "class": "CommandLineTool",
    "sbg:modifiedOn": 1478225129,
    "sbg:sbgMaintained": false,
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
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:cmdPreview": "run.sh",
    "sbg:modifiedBy": "duplexa",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1478224605,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1478224740,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1478224969,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedOn": 1478225129,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1488524436,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:revision": 4
        },
        {
            "sbg:modifiedOn": 1490717033,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 5
        }
    ],
    "sbg:latestRevision": 5,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:createdBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "stdout": "",
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.sorted.bam"
            },
            "sbg:fileTypes": "BAM",
            "type": [
                "null",
                "File"
            ],
            "id": "#out_sorted_bam"
        },
        {
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            },
            "sbg:fileTypes": "BAI",
            "type": [
                "null",
                "File"
            ],
            "id": "#out_sorted_bam_index"
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:fileTypes": "BAM",
            "type": [
                "null",
                "File"
            ],
            "id": "#input_bam"
        },
        {
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
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
    "successCodes": [],
    "label": "sort-bam",
    "sbg:revision": 3,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdin": "",
    "sbg:project": "4dn-dcic/dev",
    "cwlVersion": "sbg:draft-2",
    "temporaryFailCodes": [],
    "sbg:job": {
        "inputs": {
            "prefix": "prefix-string-value",
            "input_bam": {
                "class": "File",
                "path": "/path/to/input_bam.ext",
                "secondaryFiles": [],
                "size": 0
            }
        },
        "allocatedResources": {
            "mem": 4000,
            "cpu": 2
        }
    },
    "sbg:validationErrors": [],
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2."
}