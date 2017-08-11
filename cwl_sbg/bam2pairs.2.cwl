{
    "sbg:projectName": "Dev",
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:sbgMaintained": false,
    "cwlVersion": "sbg:draft-2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:project": "4dn-dcic/dev",
    "requirements": [],
    "sbg:job": {
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        },
        "inputs": {
            "input_bam": {
                "secondaryFiles": [],
                "path": "/path/to/input_bam.ext",
                "class": "File",
                "size": 0
            },
            "out_prefix": "out_prefix-string-value"
        }
    },
    "sbg:createdBy": "duplexa",
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
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/bam2pairs:v1"
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:latestRevision": 5,
    "sbg:revision": 2,
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs",
            "sbg:fileTypes": "GZ",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs_index",
            "sbg:fileTypes": "PX2",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            }
        }
    ],
    "stdout": "",
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "class": "CommandLineTool",
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
    "sbg:image_url": null,
    "sbg:modifiedOn": 1478233222,
    "label": "bam2pairs",
    "stdin": "",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_bam",
            "sbg:fileTypes": "BAM",
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
            "id": "#out_prefix",
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            }
        }
    ],
    "sbg:createdOn": 1478232564,
    "successCodes": [],
    "sbg:validationErrors": [],
    "arguments": [],
    "temporaryFailCodes": [],
    "sbg:modifiedBy": "duplexa"
}