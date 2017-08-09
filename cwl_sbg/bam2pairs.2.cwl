{
    "sbg:createdBy": "duplexa",
    "sbg:project": "4dn-dcic/dev",
    "baseCommand": [
        "run.sh"
    ],
    "label": "bam2pairs",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
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
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "out_prefix": "out_prefix-string-value",
            "input_bam": {
                "size": 0,
                "path": "/path/to/input_bam.ext",
                "class": "File",
                "secondaryFiles": []
            }
        }
    },
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
            "dockerImageId": "",
            "dockerPull": "duplexa/bam2pairs:v1",
            "class": "DockerRequirement"
        }
    ],
    "sbg:projectName": "Dev",
    "temporaryFailCodes": [],
    "stdout": "",
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "sbg:createdOn": 1478232564,
    "sbg:latestRevision": 5,
    "outputs": [
        {
            "sbg:fileTypes": "GZ",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "id": "#out_pairs"
        },
        {
            "sbg:fileTypes": "PX2",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "id": "#out_pairs_index"
        }
    ],
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "sbg:modifiedBy": "duplexa",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:sbgMaintained": false,
    "stdin": "",
    "sbg:image_url": null,
    "inputs": [
        {
            "sbg:fileTypes": "BAM",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "type": [
                "File"
            ],
            "id": "#input_bam"
        },
        {
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#out_prefix"
        }
    ],
    "requirements": [],
    "sbg:validationErrors": [],
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "successCodes": [],
    "sbg:revision": 2,
    "cwlVersion": "sbg:draft-2",
    "class": "CommandLineTool",
    "arguments": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/"
}