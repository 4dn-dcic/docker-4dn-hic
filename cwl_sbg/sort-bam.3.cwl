{
    "sbg:contributors": [
        "duplexa"
    ],
    "label": "sort-bam",
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
    "successCodes": [],
    "sbg:createdOn": 1478224605,
    "sbg:image_url": null,
    "sbg:modifiedBy": "duplexa",
    "stdin": "",
    "sbg:projectName": "Dev",
    "class": "CommandLineTool",
    "sbg:job": {
        "allocatedResources": {
            "mem": 4000,
            "cpu": 2
        },
        "inputs": {
            "input_bam": {
                "path": "/path/to/input_bam.ext",
                "secondaryFiles": [],
                "class": "File",
                "size": 0
            },
            "prefix": "prefix-string-value"
        }
    },
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_bam",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "sbg:fileTypes": "BAM"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#prefix",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "sbg:toolDefaultValue": "out"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "cwlVersion": "sbg:draft-2",
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "arguments": [],
    "stdout": "",
    "sbg:modifiedOn": 1478225129,
    "requirements": [],
    "sbg:revision": 3,
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
    "sbg:cmdPreview": "run.sh",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:createdBy": "duplexa",
    "sbg:sbgMaintained": false,
    "temporaryFailCodes": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:validationErrors": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ]
}