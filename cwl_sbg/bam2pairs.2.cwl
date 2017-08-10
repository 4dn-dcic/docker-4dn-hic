{
    "sbg:revision": 2,
    "stdin": "",
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
    "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
    "temporaryFailCodes": [],
    "cwlVersion": "sbg:draft-2",
    "class": "CommandLineTool",
    "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
    "requirements": [],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "sbg:fileTypes": "BAM",
            "id": "#input_bam",
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
            "sbg:toolDefaultValue": "out",
            "id": "#out_prefix",
            "inputBinding": {
                "position": 2,
                "separate": true,
                "sbg:cmdInclude": true
            }
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:latestRevision": 5,
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1478233222,
    "label": "bam2pairs",
    "arguments": [],
    "sbg:projectName": "Dev",
    "successCodes": [],
    "sbg:validationErrors": [],
    "sbg:createdBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/bam2pairs/2/raw/",
    "sbg:createdOn": 1478232564,
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
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "baseCommand": [
        "run.sh"
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "GZ",
            "id": "#out_pairs",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "PX2",
            "id": "#out_pairs_index",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            }
        }
    ],
    "sbg:image_url": null,
    "stdout": "",
    "sbg:id": "4dn-dcic/dev/bam2pairs/2",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:job": {
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        },
        "inputs": {
            "out_prefix": "out_prefix-string-value",
            "input_bam": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_bam.ext"
            }
        }
    }
}