{
    "cwlVersion": "sbg:draft-2",
    "sbg:revision": 2,
    "baseCommand": [
        "run.sh"
    ],
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "sbg:job": {
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        },
        "inputs": {
            "out_prefix": "out_prefix-string-value",
            "input_bam": {
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_bam.ext",
                "size": 0
            }
        }
    },
    "sbg:createdBy": "duplexa",
    "sbg:image_url": null,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:createdOn": 1478232564,
    "sbg:project": "4dn-dcic/dev",
    "stdin": "",
    "label": "bam2pairs",
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478232564,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478232733,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478233222,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488515633,
            "sbg:revisionNotes": "bam2pairs:v2"
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524333,
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1490716999,
            "sbg:revisionNotes": null
        }
    ],
    "stdout": "",
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1478233222,
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#input_bam",
            "sbg:fileTypes": "BAM",
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
    "successCodes": [],
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
            "dockerPull": "duplexa/bam2pairs:v1",
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "sbg:validationErrors": [],
    "temporaryFailCodes": [],
    "sbg:projectName": "Dev",
    "sbg:modifiedBy": "duplexa",
    "requirements": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "outputs": [
        {
            "id": "#out_pairs",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "sbg:fileTypes": "GZ",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#out_pairs_index",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "sbg:fileTypes": "PX2",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "CommandLineTool",
    "sbg:latestRevision": 5,
    "arguments": []
}