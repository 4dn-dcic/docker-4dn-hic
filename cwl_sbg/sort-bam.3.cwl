{
    "requirements": [],
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "sbg:fileTypes": "BAM",
            "id": "#input_bam",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            },
            "id": "#prefix",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "sbg:validationErrors": [],
    "stdout": "",
    "sbg:job": {
        "inputs": {
            "input_bam": {
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_bam.ext",
                "size": 0
            },
            "prefix": "prefix-string-value"
        },
        "allocatedResources": {
            "cpu": 2,
            "mem": 4000
        }
    },
    "baseCommand": [
        "run.sh"
    ],
    "sbg:project": "4dn-dcic/dev",
    "temporaryFailCodes": [],
    "sbg:latestRevision": 5,
    "sbg:projectName": "Dev",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478224605
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478224740
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478224969
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478225129
        },
        {
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524436
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1490717033
        }
    ],
    "successCodes": [],
    "sbg:createdBy": "duplexa",
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
    "sbg:cmdPreview": "run.sh",
    "class": "CommandLineTool",
    "sbg:revision": 3,
    "sbg:image_url": null,
    "sbg:modifiedBy": "duplexa",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:sbgMaintained": false,
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.sorted.bam"
            },
            "id": "#out_sorted_bam",
            "sbg:fileTypes": "BAM",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            },
            "id": "#out_sorted_bam_index",
            "sbg:fileTypes": "BAI",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:createdOn": 1478224605,
    "label": "sort-bam",
    "sbg:modifiedOn": 1478225129,
    "stdin": "",
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "arguments": [],
    "cwlVersion": "sbg:draft-2",
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2."
}