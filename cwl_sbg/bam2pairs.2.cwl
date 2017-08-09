{
    "sbg:projectName": "Dev",
    "sbg:createdBy": "duplexa",
    "sbg:modifiedOn": 1478233222,
    "requirements": [],
    "sbg:project": "4dn-dcic/dev",
    "stdout": "",
    "sbg:revision": 2,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "sbg:contributors": [
        "duplexa"
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "sbg:fileTypes": "GZ",
            "id": "#out_pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "sbg:fileTypes": "PX2",
            "id": "#out_pairs_index"
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478232564
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478232733
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478233222
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:revisionNotes": "bam2pairs:v2",
            "sbg:modifiedOn": 1488515633
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4,
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedOn": 1488524333
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1490716999
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "type": [
                "File"
            ],
            "sbg:fileTypes": "BAM",
            "id": "#input_bam"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out",
            "id": "#out_prefix"
        }
    ],
    "sbg:latestRevision": 5,
    "arguments": [],
    "sbg:modifiedBy": "duplexa",
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
            "dockerPull": "duplexa/bam2pairs:v1",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "label": "bam2pairs",
    "stdin": "",
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "sbg:image_url": null,
    "class": "CommandLineTool",
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "sbg:job": {
        "inputs": {
            "out_prefix": "out_prefix-string-value",
            "input_bam": {
                "size": 0,
                "path": "/path/to/input_bam.ext",
                "secondaryFiles": [],
                "class": "File"
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        }
    },
    "sbg:createdOn": 1478232564,
    "sbg:sbgMaintained": false,
    "temporaryFailCodes": [],
    "successCodes": [],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:validationErrors": []
}