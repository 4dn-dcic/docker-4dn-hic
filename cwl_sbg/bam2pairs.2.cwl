{
    "class": "CommandLineTool",
    "sbg:modifiedOn": 1478233222,
    "sbg:createdBy": "duplexa",
    "requirements": [],
    "sbg:projectName": "Dev",
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "temporaryFailCodes": [],
    "sbg:sbgMaintained": false,
    "sbg:latestRevision": 5,
    "sbg:image_url": null,
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
    "arguments": [],
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "cwlVersion": "sbg:draft-2",
    "stdin": "",
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
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/bam2pairs:v1"
        }
    ],
    "sbg:createdOn": 1478232564,
    "successCodes": [],
    "sbg:validationErrors": [],
    "label": "bam2pairs",
    "stdout": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:fileTypes": "BAM",
            "id": "#input_bam",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "out",
            "id": "#out_prefix",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "sbg:project": "4dn-dcic/dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1478232564,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1478232733,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1478233222,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1488515633,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "bam2pairs:v2"
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1488524333,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1490716999,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        }
    ],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "input_bam": {
                "class": "File",
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_bam.ext"
            },
            "out_prefix": "out_prefix-string-value"
        }
    }
}