{
    "class": "CommandLineTool",
    "temporaryFailCodes": [],
    "arguments": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:validationErrors": [],
    "sbg:revision": 2,
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "sbg:createdOn": 1478232564,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "successCodes": [],
    "sbg:image_url": null,
    "sbg:createdBy": "duplexa",
    "requirements": [],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "out_prefix": "out_prefix-string-value",
            "input_bam": {
                "class": "File",
                "path": "/path/to/input_bam.ext",
                "size": 0,
                "secondaryFiles": []
            }
        }
    },
    "inputs": [
        {
            "type": [
                "File"
            ],
            "sbg:fileTypes": "BAM",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "id": "#input_bam"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "id": "#out_prefix"
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:modifiedBy": "duplexa",
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "stdin": "",
    "sbg:modifiedOn": 1478233222,
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
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "GZ",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "id": "#out_pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "PX2",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "id": "#out_pairs_index"
        }
    ],
    "label": "bam2pairs",
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
    "cwlVersion": "sbg:draft-2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "sbg:latestRevision": 5,
    "sbg:projectName": "Dev",
    "stdout": "",
    "baseCommand": [
        "run.sh"
    ]
}