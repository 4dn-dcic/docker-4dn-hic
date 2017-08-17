{
    "sbg:validationErrors": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "class": "CommandLineTool",
    "sbg:image_url": null,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1478233222,
    "sbg:latestRevision": 5,
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "sbg:job": {
        "inputs": {
            "input_bam": {
                "path": "/path/to/input_bam.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
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
    "arguments": [],
    "cwlVersion": "sbg:draft-2",
    "successCodes": [],
    "sbg:createdBy": "duplexa",
    "sbg:projectName": "Dev",
    "baseCommand": [
        "run.sh"
    ],
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/bam2pairs:v1"
        }
    ],
    "temporaryFailCodes": [],
    "inputs": [
        {
            "id": "#input_bam",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "BAM",
            "type": [
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true
            },
            "id": "#out_prefix",
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "requirements": [],
    "sbg:createdOn": 1478232564,
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "label": "bam2pairs",
    "sbg:project": "4dn-dcic/dev",
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
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "sbg:modifiedBy": "duplexa",
    "stdin": "",
    "sbg:sbgMaintained": false,
    "sbg:revision": 2,
    "stdout": ""
}