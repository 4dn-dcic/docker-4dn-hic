{
    "class": "CommandLineTool",
    "baseCommand": [
        "run.sh"
    ],
    "requirements": [],
    "sbg:latestRevision": 5,
    "successCodes": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478232564,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478232733,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478233222,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "bam2pairs:v2",
            "sbg:modifiedOn": 1488515633,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedOn": 1488524333,
            "sbg:revision": 4
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1490716999,
            "sbg:revision": 5
        }
    ],
    "sbg:revision": 2,
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
            "dockerImageId": "",
            "dockerPull": "duplexa/bam2pairs:v1"
        }
    ],
    "temporaryFailCodes": [],
    "sbg:modifiedBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "sbg:createdBy": "duplexa",
    "stdin": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:sbgMaintained": false,
    "arguments": [],
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "sbg:image_url": null,
    "stdout": "",
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1478233222,
    "sbg:createdOn": 1478232564,
    "sbg:validationErrors": [],
    "sbg:job": {
        "inputs": {
            "input_bam": {
                "path": "/path/to/input_bam.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            },
            "out_prefix": "out_prefix-string-value"
        },
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        }
    },
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
    "inputs": [
        {
            "id": "#input_bam",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "type": [
                "File"
            ],
            "sbg:fileTypes": "BAM"
        },
        {
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#out_prefix"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "label": "bam2pairs"
}