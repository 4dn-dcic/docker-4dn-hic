{
    "sbg:validationErrors": [],
    "requirements": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/19/raw/",
    "baseCommand": [
        "run-cooler.sh"
    ],
    "cwlVersion": "sbg:draft-2",
    "stdin": "",
    "label": "cooler",
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
    "sbg:latestRevision": 19,
    "temporaryFailCodes": [],
    "arguments": [],
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
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
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1488495202,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1488495392,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1488495453,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedOn": 1488499764,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1488511643,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 4
        },
        {
            "sbg:modifiedOn": 1488511809,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 5
        },
        {
            "sbg:modifiedOn": 1488525294,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:revision": 6
        },
        {
            "sbg:modifiedOn": 1488529899,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 7
        },
        {
            "sbg:modifiedOn": 1490716960,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 8
        },
        {
            "sbg:modifiedOn": 1496167357,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 9
        },
        {
            "sbg:modifiedOn": 1496168048,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 10
        },
        {
            "sbg:modifiedOn": 1496175693,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 11
        },
        {
            "sbg:modifiedOn": 1496175978,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 12
        },
        {
            "sbg:modifiedOn": 1499354982,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 13
        },
        {
            "sbg:modifiedOn": 1499625090,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 14
        },
        {
            "sbg:modifiedOn": 1499625139,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 15
        },
        {
            "sbg:modifiedOn": 1499627281,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "Mem 960GB",
            "sbg:revision": 16
        },
        {
            "sbg:modifiedOn": 1499690249,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 17
        },
        {
            "sbg:modifiedOn": 1500331793,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 18
        },
        {
            "sbg:modifiedOn": 1501908398,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
            "sbg:revision": 19
        }
    ],
    "sbg:revision": 19,
    "sbg:id": "4dn-dcic/dev/cooler/19",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:projectName": "Dev",
    "successCodes": [],
    "sbg:job": {
        "inputs": {
            "pairs": {
                "size": 0,
                "path": "/path/to/pairs.ext",
                "secondaryFiles": [
                    {
                        "path": "$job.inputs.pairs + '.px2'"
                    }
                ],
                "class": "File"
            },
            "binsize": 4,
            "max_split": 0,
            "outprefix": "outprefix-string-value",
            "pairs_index": {
                "size": 0,
                "path": "/path/to/pairs_index.ext",
                "secondaryFiles": [],
                "class": "File"
            },
            "ncores": 5,
            "chrsizes": {
                "size": 0,
                "path": "/path/to/chrsize.ext",
                "secondaryFiles": [],
                "class": "File"
            }
        },
        "allocatedResources": {
            "cpu": 2,
            "mem": 16000
        }
    },
    "sbg:sbgMaintained": false,
    "description": "",
    "class": "CommandLineTool",
    "sbg:image_url": null,
    "sbg:createdOn": 1488495202,
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedOn": 1501908398,
    "sbg:createdBy": "duplexa",
    "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
    "stdout": "",
    "inputs": [
        {
            "id": "#pairs",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "PAIRS.GZ",
            "sbg:stageInput": "copy"
        },
        {
            "id": "#pairs_index",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "PX2",
            "sbg:stageInput": "copy"
        },
        {
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "SIZES",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            }
        },
        {
            "id": "#binsize",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null
        },
        {
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 5
            }
        },
        {
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "8",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 4
            }
        },
        {
            "id": "#max_split",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 6
            },
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "2",
            "sbg:stageInput": null
        }
    ],
    "sbg:cmdPreview": "run-cooler.sh"
}