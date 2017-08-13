{
    "sbg:validationErrors": [],
    "arguments": [],
    "baseCommand": [
        "run.sh"
    ],
    "stdin": "",
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
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
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "requirements": [],
    "sbg:createdOn": 1478232564,
    "outputs": [
        {
            "sbg:fileTypes": "GZ",
            "id": "#out_pairs",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:fileTypes": "PX2",
            "id": "#out_pairs_index",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:sbgMaintained": false,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "inputs": [
        {
            "sbg:fileTypes": "BAM",
            "id": "#input_bam",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "type": [
                "File"
            ]
        },
        {
            "sbg:toolDefaultValue": "out",
            "id": "#out_prefix",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "sbg:modifiedOn": 1478233222,
    "class": "CommandLineTool",
    "successCodes": [],
    "stdout": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "cwlVersion": "sbg:draft-2",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:latestRevision": 5,
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "sbg:projectName": "Dev",
    "sbg:image_url": null,
    "temporaryFailCodes": [],
    "sbg:revision": 2,
    "sbg:job": {
        "inputs": {
            "input_bam": {
                "path": "/path/to/input_bam.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            },
            "out_prefix": "out_prefix-string-value"
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        }
    },
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1478232564,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1478232733,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1478233222,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2
        },
        {
            "sbg:modifiedOn": 1488515633,
            "sbg:revisionNotes": "bam2pairs:v2",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1488524333,
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4
        },
        {
            "sbg:modifiedOn": 1490716999,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "label": "bam2pairs"
}