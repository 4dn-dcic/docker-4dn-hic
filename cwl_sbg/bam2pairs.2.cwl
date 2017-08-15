{
    "sbg:projectName": "Dev",
    "sbg:revision": 2,
    "sbg:latestRevision": 5,
    "sbg:project": "4dn-dcic/dev",
    "label": "bam2pairs",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "inputs": [
        {
            "id": "#input_bam",
            "type": [
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
            "id": "#out_prefix",
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            }
        }
    ],
    "sbg:image_url": null,
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/bam2pairs:v1",
            "dockerImageId": ""
        }
    ],
    "arguments": [],
    "sbg:createdBy": "duplexa",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1478232564,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1478232733,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1478233222,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1488515633,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:revisionNotes": "bam2pairs:v2"
        },
        {
            "sbg:modifiedOn": 1488524333,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4,
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:modifiedOn": 1490716999,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5,
            "sbg:revisionNotes": null
        }
    ],
    "outputs": [
        {
            "id": "#out_pairs",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "sbg:fileTypes": "GZ",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#out_pairs_index",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "sbg:fileTypes": "PX2",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:modifiedOn": 1478233222,
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "sbg:createdOn": 1478232564,
    "sbg:job": {
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        },
        "inputs": {
            "out_prefix": "out_prefix-string-value",
            "input_bam": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_bam.ext"
            }
        }
    },
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "stdin": "",
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh"
    ],
    "cwlVersion": "sbg:draft-2",
    "temporaryFailCodes": [],
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:sbgMaintained": false,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdout": "",
    "sbg:modifiedBy": "duplexa",
    "successCodes": [],
    "requirements": [],
    "sbg:validationErrors": []
}