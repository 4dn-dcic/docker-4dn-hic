{
    "label": "sort-bam",
    "sbg:contributors": [
        "duplexa"
    ],
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
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "class": "CommandLineTool",
    "sbg:image_url": null,
    "cwlVersion": "sbg:draft-2",
    "arguments": [],
    "sbg:modifiedOn": 1478225129,
    "sbg:project": "4dn-dcic/dev",
    "sbg:revision": 3,
    "successCodes": [],
    "stdin": "",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1478224605,
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1478224740,
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1478224969,
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1478225129,
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1488524436,
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1490717033,
            "sbg:revisionNotes": null,
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:cmdPreview": "run.sh",
    "temporaryFailCodes": [],
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
    "sbg:modifiedBy": "duplexa",
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "sbg:validationErrors": [],
    "baseCommand": [
        "run.sh"
    ],
    "inputs": [
        {
            "sbg:fileTypes": "BAM",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "id": "#input_bam"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#prefix",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            },
            "sbg:toolDefaultValue": "out"
        }
    ],
    "sbg:sbgMaintained": false,
    "requirements": [],
    "sbg:createdOn": 1478224605,
    "sbg:projectName": "Dev",
    "sbg:createdBy": "duplexa",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdout": "",
    "sbg:latestRevision": 5,
    "outputs": [
        {
            "sbg:fileTypes": "BAM",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.sorted.bam"
            },
            "id": "#out_sorted_bam"
        },
        {
            "sbg:fileTypes": "BAI",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.sorted.bam.bai"
            },
            "id": "#out_sorted_bam_index"
        }
    ],
    "sbg:job": {
        "inputs": {
            "prefix": "prefix-string-value",
            "input_bam": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_bam.ext"
            }
        },
        "allocatedResources": {
            "cpu": 2,
            "mem": 4000
        }
    }
}