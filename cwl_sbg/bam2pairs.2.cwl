{
    "stdout": "",
    "sbg:projectName": "Dev",
    "arguments": [],
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1478233222,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "out_prefix": "out_prefix-string-value",
            "input_bam": {
                "class": "File",
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_bam.ext"
            }
        }
    },
    "sbg:modifiedBy": "duplexa",
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "class": "CommandLineTool",
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "temporaryFailCodes": [],
    "sbg:latestRevision": 5,
    "sbg:image_url": null,
    "inputs": [
        {
            "sbg:fileTypes": "BAM",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#input_bam"
        },
        {
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#out_prefix"
        }
    ],
    "sbg:validationErrors": [],
    "sbg:revision": 2,
    "successCodes": [],
    "sbg:sbgMaintained": false,
    "requirements": [],
    "cwlVersion": "sbg:draft-2",
    "hints": [
        {
            "class": "sbg:CPURequirement",
            "value": 1
        },
        {
            "class": "sbg:MemRequirement",
            "value": 1000
        },
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/bam2pairs:v1",
            "dockerImageId": ""
        }
    ],
    "sbg:createdBy": "duplexa",
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
    "label": "bam2pairs",
    "stdin": "",
    "sbg:project": "4dn-dcic/dev",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:createdOn": 1478232564
}