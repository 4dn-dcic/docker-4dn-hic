{
    "requirements": [],
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1501908398,
    "sbg:latestRevision": 19,
    "sbg:image_url": null,
    "sbg:createdOn": 1488495202,
    "arguments": [],
    "sbg:cmdPreview": "run-cooler.sh",
    "temporaryFailCodes": [],
    "inputs": [
        {
            "sbg:stageInput": "copy",
            "id": "#pairs",
            "sbg:fileTypes": "PAIRS.GZ",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ]
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
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:stageInput": null,
            "id": "#binsize",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#outprefix",
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 5
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#ncores",
            "sbg:toolDefaultValue": "8",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 4
            },
            "type": [
                "null",
                "int"
            ]
        },
        {
            "sbg:stageInput": null,
            "id": "#max_split",
            "sbg:toolDefaultValue": "2",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 6
            },
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "stdin": "",
    "sbg:job": {
        "allocatedResources": {
            "mem": 16000,
            "cpu": 2
        },
        "inputs": {
            "outprefix": "outprefix-string-value",
            "ncores": 5,
            "max_split": 0,
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
            "binsize": 4,
            "pairs_index": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/pairs_index.ext"
            }
        }
    },
    "sbg:projectName": "Dev",
    "sbg:createdBy": "duplexa",
    "sbg:id": "4dn-dcic/dev/cooler/19",
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
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
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
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/19/raw/",
    "class": "CommandLineTool",
    "baseCommand": [
        "run-cooler.sh"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488495202
        },
        {
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488495392
        },
        {
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488495453
        },
        {
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488499764
        },
        {
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488511643
        },
        {
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488511809
        },
        {
            "sbg:revision": 6,
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488525294
        },
        {
            "sbg:revision": 7,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488529899
        },
        {
            "sbg:revision": 8,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1490716960
        },
        {
            "sbg:revision": 9,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496167357
        },
        {
            "sbg:revision": 10,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496168048
        },
        {
            "sbg:revision": 11,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496175693
        },
        {
            "sbg:revision": 12,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496175978
        },
        {
            "sbg:revision": 13,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499354982
        },
        {
            "sbg:revision": 14,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499625090
        },
        {
            "sbg:revision": 15,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499625139
        },
        {
            "sbg:revision": 16,
            "sbg:revisionNotes": "Mem 960GB",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499627281
        },
        {
            "sbg:revision": 17,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499690249
        },
        {
            "sbg:revision": 18,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500331793
        },
        {
            "sbg:revision": 19,
            "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501908398
        }
    ],
    "sbg:revision": 19,
    "description": "",
    "sbg:validationErrors": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "successCodes": [],
    "label": "cooler",
    "stdout": ""
}