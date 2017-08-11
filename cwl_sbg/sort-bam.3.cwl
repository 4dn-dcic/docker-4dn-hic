{
    "baseCommand": [
        "run.sh"
    ],
    "cwlVersion": "sbg:draft-2",
    "stdout": "",
    "arguments": [],
    "successCodes": [],
    "sbg:modifiedOn": 1478225129,
    "class": "CommandLineTool",
    "sbg:modifiedBy": "duplexa",
    "sbg:projectName": "Dev",
    "requirements": [],
    "sbg:createdBy": "duplexa",
    "sbg:image_url": null,
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
    "temporaryFailCodes": [],
    "sbg:revision": 3,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:cmdPreview": "run.sh",
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "stdin": "",
    "label": "sort-bam",
    "inputs": [
        {
            "id": "#input_bam",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "sbg:fileTypes": "BAM"
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
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:latestRevision": 5,
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
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "sbg:validationErrors": [],
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sort-bam:v1",
            "dockerImageId": ""
        }
    ],
    "sbg:createdOn": 1478224605,
    "sbg:sbgMaintained": false,
    "sbg:job": {
        "allocatedResources": {
            "mem": 4000,
            "cpu": 2
        },
        "inputs": {
            "prefix": "prefix-string-value",
            "input_bam": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_bam.ext",
                "size": 0
            }
        }
    }
}