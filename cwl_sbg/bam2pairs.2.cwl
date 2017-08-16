{
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "sbg:project": "4dn-dcic/dev",
    "requirements": [],
    "sbg:createdOn": 1478232564,
    "sbg:validationErrors": [],
    "class": "CommandLineTool",
    "cwlVersion": "sbg:draft-2",
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
            "dockerPull": "duplexa/bam2pairs:v1",
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "sbg:fileTypes": "GZ",
            "id": "#out_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "sbg:fileTypes": "PX2",
            "id": "#out_pairs_index",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "temporaryFailCodes": [],
    "stdin": "",
    "sbg:modifiedOn": 1478233222,
    "baseCommand": [
        "run.sh"
    ],
    "successCodes": [],
    "sbg:latestRevision": 5,
    "sbg:revision": 2,
    "sbg:modifiedBy": "duplexa",
    "sbg:sbgMaintained": false,
    "sbg:image_url": null,
    "sbg:createdBy": "duplexa",
    "stdout": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "sbg:contributors": [
        "duplexa"
    ],
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "label": "bam2pairs",
    "sbg:projectName": "Dev",
    "arguments": [],
    "sbg:job": {
        "inputs": {
            "out_prefix": "out_prefix-string-value",
            "input_bam": {
                "secondaryFiles": [],
                "path": "/path/to/input_bam.ext",
                "class": "File",
                "size": 0
            }
        },
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        }
    },
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:fileTypes": "BAM",
            "id": "#input_bam",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#out_prefix",
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1478232564,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1478232733,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1478233222,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1488515633,
            "sbg:revisionNotes": "bam2pairs:v2"
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1488524333,
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1490716999,
            "sbg:revisionNotes": null
        }
    ]
}