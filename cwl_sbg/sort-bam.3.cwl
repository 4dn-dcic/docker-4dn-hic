{
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "sbg:latestRevision": 5,
    "label": "sort-bam",
    "cwlVersion": "sbg:draft-2",
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedOn": 1478225129,
    "sbg:job": {
        "inputs": {
            "input_bam": {
                "secondaryFiles": [],
                "path": "/path/to/input_bam.ext",
                "size": 0,
                "class": "File"
            },
            "prefix": "prefix-string-value"
        },
        "allocatedResources": {
            "mem": 4000,
            "cpu": 2
        }
    },
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1478224605,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1478224740,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1478224969,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1478225129,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1488524436,
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:modifiedOn": 1490717033,
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        }
    ],
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "sbg:revision": 3,
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_bam",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:fileTypes": "BAM"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out",
            "id": "#prefix",
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            }
        }
    ],
    "class": "CommandLineTool",
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
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "stdin": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdOn": 1478224605,
    "successCodes": [],
    "sbg:createdBy": "duplexa",
    "sbg:image_url": null,
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "duplexa"
    ],
    "arguments": [],
    "sbg:cmdPreview": "run.sh",
    "stdout": "",
    "sbg:modifiedBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "requirements": [],
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
    "sbg:projectName": "Dev",
    "sbg:validationErrors": [],
    "baseCommand": [
        "run.sh"
    ],
    "temporaryFailCodes": []
}