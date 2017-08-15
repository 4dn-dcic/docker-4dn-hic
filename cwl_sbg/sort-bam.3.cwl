{
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedOn": 1478225129,
    "sbg:job": {
        "inputs": {
            "input_bam": {
                "path": "/path/to/input_bam.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            },
            "prefix": "prefix-string-value"
        },
        "allocatedResources": {
            "cpu": 2,
            "mem": 4000
        }
    },
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1478224605,
    "stdin": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "inputs": [
        {
            "sbg:fileTypes": "BAM",
            "id": "#input_bam",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
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
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            },
            "sbg:toolDefaultValue": "out"
        }
    ],
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "stdout": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:cmdPreview": "run.sh",
    "successCodes": [],
    "temporaryFailCodes": [],
    "sbg:latestRevision": 5,
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
    "sbg:modifiedBy": "duplexa",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:revision": 3,
    "sbg:sbgMaintained": false,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
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
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "sbg:createdBy": "duplexa",
    "arguments": [],
    "label": "sort-bam",
    "sbg:image_url": null,
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478224605,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478224740,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478224969,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478225129,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedOn": 1488524436,
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1490717033,
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "class": "CommandLineTool",
    "requirements": [],
    "sbg:validationErrors": []
}