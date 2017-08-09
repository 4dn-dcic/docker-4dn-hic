{
    "label": "cooler",
    "inputs": [
        {
            "id": "#pairs",
            "sbg:stageInput": "copy",
            "sbg:fileTypes": "PAIRS.GZ",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#pairs_index",
            "sbg:stageInput": "copy",
            "sbg:fileTypes": "PX2",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#chrsizes",
            "sbg:fileTypes": "SIZES",
            "inputBinding": {
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#binsize",
            "sbg:stageInput": null,
            "inputBinding": {
                "separate": true,
                "position": 3,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#outprefix",
            "inputBinding": {
                "separate": true,
                "position": 5,
                "sbg:cmdInclude": true
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
                "separate": true,
                "position": 4,
                "sbg:cmdInclude": true
            },
            "sbg:toolDefaultValue": "8",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#max_split",
            "sbg:stageInput": null,
            "inputBinding": {
                "separate": true,
                "position": 6,
                "sbg:cmdInclude": true
            },
            "sbg:toolDefaultValue": "2",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "description": "",
    "stdout": "",
    "temporaryFailCodes": [],
    "successCodes": [],
    "sbg:job": {
        "inputs": {
            "ncores": 5,
            "outprefix": "outprefix-string-value",
            "binsize": 4,
            "pairs_index": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/pairs_index.ext"
            },
            "chrsizes": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/chrsize.ext"
            },
            "pairs": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [
                    {
                        "path": "$job.inputs.pairs + '.px2'"
                    }
                ],
                "path": "/path/to/pairs.ext"
            },
            "max_split": 0
        },
        "allocatedResources": {
            "mem": 16000,
            "cpu": 2
        }
    },
    "arguments": [],
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:validationErrors": [],
    "sbg:modifiedOn": 1501908398,
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
    "sbg:cmdPreview": "run-cooler.sh",
    "sbg:sbgMaintained": false,
    "stdin": "",
    "requirements": [],
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
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v31"
        }
    ],
    "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "class": "CommandLineTool",
    "sbg:projectName": "Dev",
    "sbg:image_url": null,
    "cwlVersion": "sbg:draft-2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/19/raw/",
    "sbg:id": "4dn-dcic/dev/cooler/19",
    "sbg:createdOn": 1488495202,
    "sbg:createdBy": "duplexa",
    "baseCommand": [
        "run-cooler.sh"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488495202,
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488495392,
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488495453,
            "sbg:revision": 2
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488499764,
            "sbg:revision": 3
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488511643,
            "sbg:revision": 4
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488511809,
            "sbg:revision": 5
        },
        {
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488525294,
            "sbg:revision": 6
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488529899,
            "sbg:revision": 7
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1490716960,
            "sbg:revision": 8
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496167357,
            "sbg:revision": 9
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496168048,
            "sbg:revision": 10
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496175693,
            "sbg:revision": 11
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496175978,
            "sbg:revision": 12
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499354982,
            "sbg:revision": 13
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499625090,
            "sbg:revision": 14
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499625139,
            "sbg:revision": 15
        },
        {
            "sbg:revisionNotes": "Mem 960GB",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499627281,
            "sbg:revision": 16
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499690249,
            "sbg:revision": 17
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500331793,
            "sbg:revision": 18
        },
        {
            "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501908398,
            "sbg:revision": 19
        }
    ],
    "sbg:revision": 19,
    "sbg:latestRevision": 19
}