{
    "sbg:createdOn": 1488495202,
    "cwlVersion": "sbg:draft-2",
    "temporaryFailCodes": [],
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:image_url": null,
    "sbg:project": "4dn-dcic/dev",
    "sbg:latestRevision": 19,
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "sbg:stageInput": "copy",
            "type": [
                "null",
                "File"
            ],
            "id": "#pairs"
        },
        {
            "sbg:fileTypes": "PX2",
            "sbg:stageInput": "copy",
            "type": [
                "null",
                "File"
            ],
            "id": "#pairs_index"
        },
        {
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "sbg:fileTypes": "SIZES",
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes"
        },
        {
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize"
        },
        {
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 5
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix"
        },
        {
            "sbg:toolDefaultValue": "8",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 4
            },
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores"
        },
        {
            "sbg:toolDefaultValue": "2",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 6
            },
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "id": "#max_split"
        }
    ],
    "baseCommand": [
        "run-cooler.sh"
    ],
    "successCodes": [],
    "requirements": [],
    "stdout": "",
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
    "sbg:cmdPreview": "run-cooler.sh",
    "sbg:revision": 19,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/19/raw/",
    "sbg:id": "4dn-dcic/dev/cooler/19",
    "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
    "sbg:createdBy": "duplexa",
    "sbg:modifiedBy": "4dn-dcic",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#out_cool",
            "outputBinding": {
                "glob": "*.cool"
            }
        }
    ],
    "label": "cooler",
    "sbg:job": {
        "allocatedResources": {
            "mem": 16000,
            "cpu": 2
        },
        "inputs": {
            "chrsizes": {
                "secondaryFiles": [],
                "size": 0,
                "class": "File",
                "path": "/path/to/chrsize.ext"
            },
            "ncores": 5,
            "binsize": 4,
            "outprefix": "outprefix-string-value",
            "pairs": {
                "secondaryFiles": [
                    {
                        "path": "$job.inputs.pairs + '.px2'"
                    }
                ],
                "size": 0,
                "class": "File",
                "path": "/path/to/pairs.ext"
            },
            "max_split": 0,
            "pairs_index": {
                "secondaryFiles": [],
                "size": 0,
                "class": "File",
                "path": "/path/to/pairs_index.ext"
            }
        }
    },
    "sbg:modifiedOn": 1501908398,
    "class": "CommandLineTool",
    "arguments": [],
    "stdin": "",
    "sbg:projectName": "Dev",
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
    "description": "",
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
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/4dn-hic:v31"
        }
    ]
}