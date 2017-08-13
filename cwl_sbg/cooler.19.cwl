{
    "sbg:createdOn": 1488495202,
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488495202,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488495392,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488495453,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488499764,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488511643,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488511809,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488525294,
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488529899,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1490716960,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496167357,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496168048,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 11,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496175693,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 12,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496175978,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 13,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499354982,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 14,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499625090,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 15,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499625139,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 16,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499627281,
            "sbg:revisionNotes": "Mem 960GB"
        },
        {
            "sbg:revision": 17,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499690249,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 18,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500331793,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 19,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501908398,
            "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement."
        }
    ],
    "requirements": [],
    "sbg:latestRevision": 19,
    "sbg:job": {
        "allocatedResources": {
            "cpu": 2,
            "mem": 16000
        },
        "inputs": {
            "max_split": 0,
            "chrsizes": {
                "size": 0,
                "class": "File",
                "path": "/path/to/chrsize.ext",
                "secondaryFiles": []
            },
            "pairs_index": {
                "size": 0,
                "class": "File",
                "path": "/path/to/pairs_index.ext",
                "secondaryFiles": []
            },
            "binsize": 4,
            "outprefix": "outprefix-string-value",
            "pairs": {
                "size": 0,
                "class": "File",
                "path": "/path/to/pairs.ext",
                "secondaryFiles": [
                    {
                        "path": "$job.inputs.pairs + '.px2'"
                    }
                ]
            },
            "ncores": 5
        }
    },
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/19/raw/",
    "stdin": "",
    "description": "",
    "baseCommand": [
        "run-cooler.sh"
    ],
    "cwlVersion": "sbg:draft-2",
    "class": "CommandLineTool",
    "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
    "sbg:sbgMaintained": false,
    "label": "cooler",
    "sbg:modifiedBy": "4dn-dcic",
    "arguments": [],
    "hints": [
        {
            "class": "sbg:CPURequirement",
            "value": 2
        },
        {
            "class": "sbg:MemRequirement",
            "value": 16000
        },
        {
            "dockerPull": "duplexa/4dn-hic:v31",
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revision": 19,
    "sbg:validationErrors": [],
    "sbg:image_url": null,
    "inputs": [
        {
            "id": "#pairs",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:stageInput": "copy",
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:fileTypes": "PX2",
            "type": [
                "null",
                "File"
            ],
            "sbg:stageInput": "copy",
            "id": "#pairs_index"
        },
        {
            "id": "#chrsizes",
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:fileTypes": "SIZES",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#binsize",
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#outprefix",
            "inputBinding": {
                "position": 5,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#ncores",
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "8",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#max_split",
            "inputBinding": {
                "position": 6,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "2",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "sbg:projectName": "Dev",
    "stdout": "",
    "temporaryFailCodes": [],
    "sbg:modifiedOn": 1501908398,
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "successCodes": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.cool"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#out_cool"
        }
    ],
    "sbg:id": "4dn-dcic/dev/cooler/19",
    "sbg:cmdPreview": "run-cooler.sh"
}