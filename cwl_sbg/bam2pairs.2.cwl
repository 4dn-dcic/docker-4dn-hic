{
    "stdout": "",
    "baseCommand": [
        "run.sh"
    ],
    "requirements": [],
    "inputs": [
        {
            "sbg:fileTypes": "BAM",
            "id": "#input_bam",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            }
        },
        {
            "sbg:toolDefaultValue": "out",
            "id": "#out_prefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            }
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:job": {
        "inputs": {
            "input_bam": {
                "secondaryFiles": [],
                "path": "/path/to/input_bam.ext",
                "class": "File",
                "size": 0
            },
            "out_prefix": "out_prefix-string-value"
        },
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        }
    },
    "successCodes": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:sbgMaintained": false,
    "sbg:revision": 2,
    "arguments": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1478232564,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1478232733,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1478233222,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1488515633,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "bam2pairs:v2"
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1488524333,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1490716999,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        }
    ],
    "outputs": [
        {
            "sbg:fileTypes": "GZ",
            "id": "#out_pairs",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            }
        },
        {
            "sbg:fileTypes": "PX2",
            "id": "#out_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            }
        }
    ],
    "sbg:validationErrors": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "sbg:project": "4dn-dcic/dev",
    "cwlVersion": "sbg:draft-2",
    "sbg:createdOn": 1478232564,
    "sbg:modifiedOn": 1478233222,
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "temporaryFailCodes": [],
    "sbg:latestRevision": 5,
    "label": "bam2pairs",
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
    "sbg:image_url": null,
    "sbg:createdBy": "duplexa",
    "stdin": "",
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "class": "CommandLineTool",
    "sbg:projectName": "Dev"
}