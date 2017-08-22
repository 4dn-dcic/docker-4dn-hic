{
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
    "class": "CommandLineTool",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedBy": "duplexa",
    "sbg:image_url": null,
    "sbg:revision": 2,
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "requirements": [],
    "stdin": "",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478232564,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478232733,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478233222,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 3,
            "sbg:revisionNotes": "bam2pairs:v2",
            "sbg:modifiedOn": 1488515633,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 4,
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedOn": 1488524333,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1490716999,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "stdout": "",
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
    "sbg:contributors": [
        "duplexa"
    ],
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
            "cpu": 1,
            "mem": 1000
        }
    },
    "sbg:createdOn": 1478232564,
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "label": "bam2pairs",
    "sbg:validationErrors": [],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:modifiedOn": 1478233222,
    "sbg:projectName": "Dev",
    "temporaryFailCodes": [],
    "sbg:sbgMaintained": false,
    "successCodes": [],
    "sbg:latestRevision": 5,
    "sbg:createdBy": "duplexa",
    "arguments": [],
    "inputs": [
        {
            "sbg:fileTypes": "BAM",
            "id": "#input_bam",
            "type": [
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
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
                "position": 2,
                "separate": true
            }
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "cwlVersion": "sbg:draft-2"
}