{
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1478232564,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1478232733,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedOn": 1478233222,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "arguments": [],
    "temporaryFailCodes": [],
    "cwlVersion": "sbg:draft-2",
    "label": "bam2pairs",
    "sbg:createdBy": "duplexa",
    "requirements": [],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:modifiedOn": 1478233222,
    "sbg:sbgMaintained": false,
    "sbg:latestRevision": 2,
    "sbg:modifiedBy": "duplexa",
    "successCodes": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "sbg:fileTypes": "BAM",
            "type": [
                "File"
            ],
            "id": "#input_bam"
        },
        {
            "id": "#out_prefix",
            "sbg:toolDefaultValue": "out",
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
    "stdin": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:project": "4dn-dcic/dev",
    "stdout": "",
    "sbg:createdOn": 1478232564,
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "class": "CommandLineTool",
    "sbg:job": {
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        },
        "inputs": {
            "input_bam": {
                "secondaryFiles": [],
                "path": "/path/to/input_bam.ext",
                "class": "File",
                "size": 0
            },
            "out_prefix": "out_prefix-string-value"
        }
    },
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
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
    "outputs": [
        {
            "id": "#out_pairs",
            "sbg:fileTypes": "GZ",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            }
        },
        {
            "id": "#out_pairs_index",
            "sbg:fileTypes": "PX2",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            }
        }
    ],
    "sbg:image_url": null,
    "sbg:revision": 2,
    "sbg:validationErrors": []
}