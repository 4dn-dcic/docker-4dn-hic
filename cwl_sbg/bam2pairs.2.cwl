{
    "class": "CommandLineTool",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdOn": 1478232564,
    "sbg:contributors": [
        "duplexa"
    ],
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "sbg:fileTypes": "BAM",
            "type": [
                "File"
            ],
            "id": "#input_bam"
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            },
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ],
            "id": "#out_prefix"
        }
    ],
    "label": "bam2pairs",
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "outputs": [
        {
            "id": "#out_pairs",
            "sbg:fileTypes": "GZ",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            }
        },
        {
            "id": "#out_pairs_index",
            "sbg:fileTypes": "PX2",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            }
        }
    ],
    "successCodes": [],
    "sbg:modifiedBy": "duplexa",
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
    "stdout": "",
    "temporaryFailCodes": [],
    "sbg:sbgMaintained": false,
    "requirements": [],
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "arguments": [],
    "sbg:project": "4dn-dcic/dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "sbg:projectName": "Dev",
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1478232564,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1478232733,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1478233222,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedOn": 1488515633,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "bam2pairs:v2",
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1488524333,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:revision": 4
        },
        {
            "sbg:modifiedOn": 1490716999,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 5
        }
    ],
    "sbg:createdBy": "duplexa",
    "stdin": "",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
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
    "sbg:modifiedOn": 1478233222,
    "sbg:validationErrors": [],
    "sbg:image_url": null,
    "sbg:latestRevision": 5,
    "sbg:revision": 2
}