{
    "successCodes": [],
    "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
    "requirements": [],
    "arguments": [],
    "sbg:revision": 3,
    "temporaryFailCodes": [],
    "sbg:createdBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sort-bam/3/raw/",
    "sbg:modifiedBy": "duplexa",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1478224605,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1478224740,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1478224969,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1478225129,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:job": {
        "allocatedResources": {
            "mem": 4000,
            "cpu": 2
        },
        "inputs": {
            "prefix": "prefix-string-value",
            "input_bam": {
                "path": "/path/to/input_bam.ext",
                "secondaryFiles": [],
                "class": "File",
                "size": 0
            }
        }
    },
    "sbg:id": "4dn-dcic/dev/sort-bam/3",
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
                "position": 1,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#prefix",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            },
            "sbg:toolDefaultValue": "out"
        }
    ],
    "sbg:modifiedOn": 1478225129,
    "sbg:latestRevision": 3,
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
    "baseCommand": [
        "run.sh"
    ],
    "sbg:image_url": null,
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
    "label": "sort-bam",
    "sbg:validationErrors": [],
    "sbg:cmdPreview": "run.sh",
    "class": "CommandLineTool",
    "stdout": "",
    "sbg:createdOn": 1478224605,
    "stdin": "",
    "cwlVersion": "sbg:draft-2",
    "sbg:sbgMaintained": false,
    "sbg:project": "4dn-dcic/dev"
}