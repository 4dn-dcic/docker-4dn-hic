{
    "baseCommand": [
        "run.sh"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1478232564,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1478232733,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1478233222,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1488515633,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "bam2pairs:v2"
        },
        {
            "sbg:modifiedOn": 1488524333,
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:modifiedOn": 1490716999,
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "outputs": [
        {
            "sbg:fileTypes": "GZ",
            "id": "#out_pairs",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:fileTypes": "PX2",
            "id": "#out_pairs_index",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "stdin": "",
    "sbg:createdOn": 1478232564,
    "sbg:contributors": [
        "duplexa"
    ],
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "sbg:revision": 2,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:sbgMaintained": false,
    "hints": [
        {
            "value": 1,
            "class": "sbg:CPURequirement"
        },
        {
            "value": 1000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerImageId": "",
            "dockerPull": "duplexa/bam2pairs:v1",
            "class": "DockerRequirement"
        }
    ],
    "stdout": "",
    "sbg:projectName": "Dev",
    "sbg:createdBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "class": "CommandLineTool",
    "sbg:validationErrors": [],
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "requirements": [],
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "sbg:latestRevision": 5,
    "temporaryFailCodes": [],
    "inputs": [
        {
            "sbg:fileTypes": "BAM",
            "id": "#input_bam",
            "type": [
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            }
        },
        {
            "id": "#out_prefix",
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            }
        }
    ],
    "sbg:image_url": null,
    "sbg:modifiedOn": 1478233222,
    "sbg:project": "4dn-dcic/dev",
    "label": "bam2pairs",
    "successCodes": [],
    "arguments": [],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "input_bam": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_bam.ext",
                "class": "File"
            },
            "out_prefix": "out_prefix-string-value"
        }
    },
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/"
}