{
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
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
    "sbg:validationErrors": [],
    "arguments": [],
    "class": "CommandLineTool",
    "sbg:createdOn": 1478232564,
    "requirements": [],
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "stdout": "",
    "sbg:project": "4dn-dcic/dev",
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
    "stdin": "",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:sbgMaintained": false,
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "label": "bam2pairs",
    "cwlVersion": "sbg:draft-2",
    "temporaryFailCodes": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:latestRevision": 5,
    "outputs": [
        {
            "id": "#out_pairs",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "GZ"
        },
        {
            "id": "#out_pairs_index",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "PX2"
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:revision": 2,
    "sbg:image_url": null,
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
    "sbg:modifiedOn": 1478233222,
    "sbg:createdBy": "duplexa",
    "sbg:job": {
        "inputs": {
            "out_prefix": "out_prefix-string-value",
            "input_bam": {
                "class": "File",
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_bam.ext"
            }
        },
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        }
    },
    "sbg:projectName": "Dev",
    "successCodes": []
}