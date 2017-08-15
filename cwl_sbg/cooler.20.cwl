{
    "stdout": "",
    "inputs": [
        {
            "sbg:fileTypes": "PAIRS.GZ",
            "inputBinding": {
                "secondaryFiles": [
                    {
                        "class": "Expression",
                        "script": "$job.inputs.pairs + '.px2'",
                        "engine": "#cwl-js-engine"
                    }
                ],
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#pairs",
            "sbg:stageInput": "copy",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:fileTypes": "SIZES",
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#binsize",
            "sbg:stageInput": null,
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
            "id": "#outprefix",
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#ncores",
            "sbg:toolDefaultValue": "8",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "inputBinding": {
                "position": 6,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#max_split",
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "2"
        }
    ],
    "sbg:modifiedOn": 1502829691,
    "sbg:sbgMaintained": false,
    "sbg:image_url": null,
    "class": "CommandLineTool",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 2,
            "mem": 16000
        },
        "inputs": {
            "binsize": 4,
            "ncores": 5,
            "chrsizes": {
                "class": "File",
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/chrsize.ext"
            },
            "max_split": 0,
            "pairs": {
                "class": "File",
                "secondaryFiles": [
                    {
                        "path": {
                            "class": "Expression",
                            "script": "$job.inputs.pairs + '.px2'",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "size": 0,
                "path": "/path/to/pairs.ext"
            },
            "outprefix": "outprefix-string-value"
        }
    },
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
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "sbg:id": "4dn-dcic/dev/cooler/20",
    "stdin": "",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:projectName": "Dev",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1488495202,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1488495392,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1488495453,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1488499764,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1488511643,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1488511809,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedOn": 1488525294,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedOn": 1488529899,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedOn": 1490716960,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedOn": 1496167357,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedOn": 1496168048,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 11,
            "sbg:modifiedOn": 1496175693,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 12,
            "sbg:modifiedOn": 1496175978,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 13,
            "sbg:modifiedOn": 1499354982,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 14,
            "sbg:modifiedOn": 1499625090,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 15,
            "sbg:modifiedOn": 1499625139,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 16,
            "sbg:modifiedOn": 1499627281,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "Mem 960GB"
        },
        {
            "sbg:revision": 17,
            "sbg:modifiedOn": 1499690249,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 18,
            "sbg:modifiedOn": 1500331793,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 19,
            "sbg:modifiedOn": 1501908398,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement."
        },
        {
            "sbg:revision": 20,
            "sbg:modifiedOn": 1502829691,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "pairs index as a secondary file to pairs instead of a separate input item"
        }
    ],
    "sbg:latestRevision": 20,
    "sbg:revisionNotes": "pairs index as a secondary file to pairs instead of a separate input item",
    "sbg:createdOn": 1488495202,
    "sbg:createdBy": "duplexa",
    "sbg:revision": 20,
    "sbg:cmdPreview": "run-cooler.sh",
    "successCodes": [],
    "arguments": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.cool"
            },
            "id": "#out_cool",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/20/raw/",
    "requirements": [],
    "sbg:modifiedBy": "4dn-dcic",
    "baseCommand": [
        "run-cooler.sh"
    ],
    "sbg:validationErrors": [],
    "label": "cooler",
    "temporaryFailCodes": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ]
}