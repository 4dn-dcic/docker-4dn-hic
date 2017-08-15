{
    "sbg:validationErrors": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "inputs": [
        {
            "id": "#input_bam",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "type": [
                "File"
            ],
            "sbg:fileTypes": "BAM"
        },
        {
            "id": "#out_prefix",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:image_url": null,
    "temporaryFailCodes": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdout": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "sbg:createdBy": "duplexa",
    "class": "CommandLineTool",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478232564,
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478232733,
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1478233222,
            "sbg:revision": 2
        },
        {
            "sbg:revisionNotes": "bam2pairs:v2",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488515633,
            "sbg:revision": 3
        },
        {
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524333,
            "sbg:revision": 4
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1490716999,
            "sbg:revision": 5
        }
    ],
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
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
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedOn": 1478233222,
    "sbg:revision": 2,
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
    "sbg:job": {
        "inputs": {
            "input_bam": {
                "class": "File",
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_bam.ext"
            },
            "out_prefix": "out_prefix-string-value"
        },
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        }
    },
    "successCodes": [],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:sbgMaintained": false,
    "sbg:modifiedBy": "duplexa",
    "sbg:createdOn": 1478232564,
    "requirements": [],
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "stdin": "",
    "label": "bam2pairs",
    "sbg:projectName": "Dev",
    "arguments": [],
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed."
}