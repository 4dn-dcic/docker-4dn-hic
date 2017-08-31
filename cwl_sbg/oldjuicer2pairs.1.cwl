{
    "sbg:modifiedOn": 1501735074,
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdOn": 1501734996,
    "class": "CommandLineTool",
    "sbg:projectName": "Dev",
    "stdin": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/oldjuicer2pairs/1/raw/",
    "sbg:id": "4dn-dcic/dev/oldjuicer2pairs/1",
    "successCodes": [],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "arguments": [],
    "description": "",
    "label": "oldjuicer2pairs",
    "sbg:job": {
        "inputs": {
            "max_remove_mapq": 2,
            "outprefix": "outprefix-string-value",
            "nsplit": 8,
            "input_merged_nodups": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_merged_nodups.ext",
                "class": "File"
            },
            "chromsize": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/chromsize.ext",
                "class": "File"
            }
        },
        "allocatedResources": {
            "mem": 12000,
            "cpu": 8
        }
    },
    "inputs": [
        {
            "sbg:fileTypes": ".TXT",
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_merged_nodups"
        },
        {
            "sbg:fileTypes": ".CHROM.SIZES",
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#chromsize"
        },
        {
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "prefix": "-s",
                "separate": true
            },
            "sbg:toolDefaultValue": "100",
            "id": "#nsplit",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "inputBinding": {
                "position": 5,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "out",
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "prefix": "-m",
                "separate": true
            },
            "type": [
                "null",
                "int"
            ],
            "id": "#max_remove_mapq"
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1501734996,
            "sbg:revision": 0,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "Copy of 4dn-dcic/dev/juicer2pairs/8"
        },
        {
            "sbg:modifiedOn": 1501735074,
            "sbg:revision": 1,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        }
    ],
    "hints": [
        {
            "value": 8,
            "class": "sbg:CPURequirement"
        },
        {
            "value": 12000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerImageId": "",
            "dockerPull": "duplexa/4dn-hic:v31",
            "class": "DockerRequirement"
        }
    ],
    "sbg:createdBy": "4dn-dcic",
    "outputs": [
        {
            "sbg:fileTypes": ".PAIRS.GZ",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs"
        },
        {
            "sbg:fileTypes": ".PX2",
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs_px"
        }
    ],
    "sbg:latestRevision": 1,
    "stdout": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:image_url": null,
    "sbg:revision": 1,
    "requirements": [],
    "baseCommand": [
        "old_merged_nodup2pairs.pl"
    ],
    "sbg:cmdPreview": "old_merged_nodup2pairs.pl",
    "cwlVersion": "sbg:draft-2",
    "temporaryFailCodes": []
}