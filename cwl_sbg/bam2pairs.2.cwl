{
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revision": 2,
    "sbg:modifiedBy": "duplexa",
    "sbg:project": "4dn-dcic/dev",
    "sbg:image_url": null,
    "sbg:createdBy": "duplexa",
    "outputs": [
        {
            "id": "#out_pairs",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "GZ",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            }
        },
        {
            "id": "#out_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "PX2",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            }
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "stdin": "",
    "sbg:job": {
        "inputs": {
            "out_prefix": "out_prefix-string-value",
            "input_bam": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_bam.ext"
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        }
    },
    "sbg:sbgMaintained": false,
    "sbg:latestRevision": 5,
    "class": "CommandLineTool",
    "label": "bam2pairs",
    "requirements": [],
    "sbg:projectName": "Dev",
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
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
    "arguments": [],
    "temporaryFailCodes": [],
    "baseCommand": [
        "run.sh"
    ],
    "successCodes": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1478232564,
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1478232733,
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1478233222,
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1488515633,
            "sbg:revision": 3,
            "sbg:revisionNotes": "bam2pairs:v2",
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1488524333,
            "sbg:revision": 4,
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1490716999,
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:modifiedOn": 1478233222,
    "sbg:contributors": [
        "duplexa"
    ],
    "stdout": "",
    "sbg:validationErrors": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "sbg:createdOn": 1478232564,
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "id": "#input_bam",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "BAM"
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            },
            "id": "#out_prefix",
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out"
        }
    ],
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext"
}