{
    "outputs": [
        {
            "id": "#out_cool",
            "outputBinding": {
                "glob": "*.cool"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "description": "",
    "temporaryFailCodes": [],
    "sbg:projectName": "Dev",
    "sbg:createdBy": "duplexa",
    "hints": [
        {
            "value": 2,
            "class": "sbg:CPURequirement"
        },
        {
            "value": 16000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerPull": "duplexa/4dn-hic:v31",
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "sbg:cmdPreview": "run-cooler.sh",
    "label": "cooler",
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedOn": 1501908398,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:job": {
        "allocatedResources": {
            "mem": 16000,
            "cpu": 2
        },
        "inputs": {
            "pairs_index": {
                "path": "/path/to/pairs_index.ext",
                "size": 0,
                "secondaryFiles": [],
                "class": "File"
            },
            "outprefix": "outprefix-string-value",
            "ncores": 5,
            "max_split": 0,
            "chrsizes": {
                "path": "/path/to/chrsize.ext",
                "size": 0,
                "secondaryFiles": [],
                "class": "File"
            },
            "pairs": {
                "path": "/path/to/pairs.ext",
                "size": 0,
                "secondaryFiles": [
                    {
                        "path": "$job.inputs.pairs + '.px2'"
                    }
                ],
                "class": "File"
            },
            "binsize": 4
        }
    },
    "sbg:id": "4dn-dcic/dev/cooler/19",
    "stdin": "",
    "inputs": [
        {
            "sbg:stageInput": "copy",
            "id": "#pairs",
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "sbg:stageInput": "copy",
            "id": "#pairs_index",
            "sbg:fileTypes": "PX2",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#chrsizes",
            "sbg:fileTypes": "SIZES",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "sbg:stageInput": null,
            "id": "#binsize",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 3,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "id": "#outprefix",
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 5,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "id": "#ncores",
            "sbg:toolDefaultValue": "8",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 4,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "sbg:stageInput": null,
            "id": "#max_split",
            "sbg:toolDefaultValue": "2",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 6,
                "separate": true,
                "sbg:cmdInclude": true
            }
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/19/raw/",
    "sbg:project": "4dn-dcic/dev",
    "sbg:latestRevision": 19,
    "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
    "requirements": [],
    "sbg:image_url": null,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1488495202,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1488495392,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1488495453,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1488499764,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1488511643,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1488511809,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1488525294,
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1488529899,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1490716960,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 9,
            "sbg:modifiedOn": 1496167357,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 10,
            "sbg:modifiedOn": 1496168048,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 11,
            "sbg:modifiedOn": 1496175693,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 12,
            "sbg:modifiedOn": 1496175978,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 13,
            "sbg:modifiedOn": 1499354982,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 14,
            "sbg:modifiedOn": 1499625090,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 15,
            "sbg:modifiedOn": 1499625139,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 16,
            "sbg:modifiedOn": 1499627281,
            "sbg:revisionNotes": "Mem 960GB"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 17,
            "sbg:modifiedOn": 1499690249,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 18,
            "sbg:modifiedOn": 1500331793,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 19,
            "sbg:modifiedOn": 1501908398,
            "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement."
        }
    ],
    "sbg:validationErrors": [],
    "sbg:createdOn": 1488495202,
    "sbg:revision": 19,
    "baseCommand": [
        "run-cooler.sh"
    ],
    "arguments": [],
    "class": "CommandLineTool",
    "successCodes": [],
    "stdout": "",
    "sbg:sbgMaintained": false
}