{
    "sbg:createdBy": "duplexa",
    "class": "CommandLineTool",
    "label": "bam2pairs",
    "sbg:modifiedOn": 1478233222,
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "sbg:validationErrors": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "temporaryFailCodes": [],
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "sbg:image_url": null,
    "sbg:revision": 2,
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "id": "#out_pairs",
            "sbg:fileTypes": "GZ"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "id": "#out_pairs_index",
            "sbg:fileTypes": "PX2"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478232564
        },
        {
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478232733
        },
        {
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478233222
        },
        {
            "sbg:revision": 3,
            "sbg:revisionNotes": "bam2pairs:v2",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488515633
        },
        {
            "sbg:revision": 4,
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524333
        },
        {
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1490716999
        }
    ],
    "stdout": "",
    "sbg:sbgMaintained": false,
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "out_prefix": "out_prefix-string-value",
            "input_bam": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/input_bam.ext"
            }
        }
    },
    "sbg:projectName": "Dev",
    "cwlVersion": "sbg:draft-2",
    "arguments": [],
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
    "requirements": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#input_bam",
            "sbg:fileTypes": "BAM"
        },
        {
            "id": "#out_prefix",
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
    "sbg:modifiedBy": "duplexa",
    "sbg:contributors": [
        "duplexa"
    ],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:latestRevision": 5,
    "stdin": "",
    "successCodes": [],
    "sbg:createdOn": 1478232564
}