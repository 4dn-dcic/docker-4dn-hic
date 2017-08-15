{
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:createdOn": 1478232564,
    "sbg:modifiedBy": "duplexa",
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "sbg:latestRevision": 5,
    "arguments": [],
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "sbg:sbgMaintained": false,
    "sbg:createdBy": "duplexa",
    "sbg:modifiedOn": 1478233222,
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
    "class": "CommandLineTool",
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
    "sbg:revision": 2,
    "requirements": [],
    "stdin": "",
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "stdout": "",
    "successCodes": [],
    "sbg:projectName": "Dev",
    "temporaryFailCodes": [],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "input_bam": {
                "path": "/path/to/input_bam.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "out_prefix": "out_prefix-string-value"
        }
    },
    "label": "bam2pairs",
    "sbg:image_url": null,
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
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:validationErrors": [],
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_bam",
            "sbg:fileTypes": "BAM",
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#out_prefix",
            "inputBinding": {
                "position": 2,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:toolDefaultValue": "out"
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ]
}