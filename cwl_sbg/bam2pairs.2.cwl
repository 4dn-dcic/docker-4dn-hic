{
    "inputs": [
        {
            "sbg:fileTypes": "BAM",
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "id": "#input_bam",
            "type": [
                "File"
            ]
        },
        {
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 2,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "id": "#out_prefix"
        }
    ],
    "arguments": [],
    "sbg:createdOn": 1478232564,
    "sbg:job": {
        "inputs": {
            "out_prefix": "out_prefix-string-value",
            "input_bam": {
                "path": "/path/to/input_bam.ext",
                "size": 0,
                "secondaryFiles": [],
                "class": "File"
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        }
    },
    "sbg:image_url": null,
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "duplexa",
    "sbg:revision": 2,
    "class": "CommandLineTool",
    "label": "bam2pairs",
    "sbg:contributors": [
        "duplexa"
    ],
    "successCodes": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478232564
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478232733
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478233222
        },
        {
            "sbg:revisionNotes": "bam2pairs:v2",
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488515633
        },
        {
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524333
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1490716999
        }
    ],
    "requirements": [],
    "stdout": "",
    "sbg:project": "4dn-dcic/dev",
    "stdin": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:projectName": "Dev",
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedOn": 1478233222,
    "outputs": [
        {
            "sbg:fileTypes": "GZ",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "id": "#out_pairs"
        },
        {
            "sbg:fileTypes": "PX2",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "id": "#out_pairs_index"
        }
    ],
    "sbg:latestRevision": 5,
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/bam2pairs:v1"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "sbg:sbgMaintained": false,
    "sbg:createdBy": "duplexa",
    "temporaryFailCodes": [],
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "baseCommand": [
        "run.sh"
    ]
}