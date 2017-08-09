{
    "label": "sort-bam",
    "outputs": [
        {
            "id": "#out_sorted_bam",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BAM",
            "outputBinding": {
                "glob": "*.sorted.bam"
            }
        },
        {
            "id": "#out_sorted_bam_index",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BAI",
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            }
        }
    ],
    "sbg:job": {
        "inputs": {
            "input_bam": {
                "class": "File",
                "size": 0,
                "path": "/path/to/input_bam.ext",
                "secondaryFiles": []
            },
            "prefix": "prefix-string-value"
        },
        "allocatedResources": {
            "cpu": 2,
            "mem": 4000
        }
    },
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
    "sbg:projectName": "Dev",
    "sbg:createdBy": "duplexa",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdout": "",
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
    "sbg:validationErrors": [],
    "arguments": [],
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "temporaryFailCodes": [],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:modifiedOn": 1478225129,
    "requirements": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:latestRevision": 5,
    "sbg:sbgMaintained": false,
    "sbg:cmdPreview": "run.sh",
    "sbg:modifiedBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:image_url": null,
    "inputs": [
        {
            "id": "#input_bam",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BAM",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            }
        },
        {
            "id": "#prefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "out"
        }
    ],
    "successCodes": [],
    "stdin": "",
    "sbg:revision": 3,
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "sbg:createdOn": 1478224605,
    "class": "CommandLineTool"
}