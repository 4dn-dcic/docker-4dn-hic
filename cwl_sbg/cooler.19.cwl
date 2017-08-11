{
    "stdin": "",
    "arguments": [],
    "outputs": [
        {
            "id": "#out_cool",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.cool"
            }
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/19/raw/",
    "temporaryFailCodes": [],
    "sbg:id": "4dn-dcic/dev/cooler/19",
    "cwlVersion": "sbg:draft-2",
    "baseCommand": [
        "run-cooler.sh"
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
    "sbg:project": "4dn-dcic/dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdBy": "duplexa",
    "requirements": [],
    "sbg:cmdPreview": "run-cooler.sh",
    "sbg:image_url": null,
    "class": "CommandLineTool",
    "sbg:revision": 19,
    "sbg:sbgMaintained": false,
    "description": "",
    "label": "cooler",
    "sbg:createdOn": 1488495202,
    "inputs": [
        {
            "id": "#pairs",
            "sbg:stageInput": "copy",
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            }
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
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            }
        },
        {
            "id": "#binsize",
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 3
            }
        },
        {
            "sbg:toolDefaultValue": "out",
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 5
            }
        },
        {
            "sbg:toolDefaultValue": "8",
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 4
            }
        },
        {
            "sbg:toolDefaultValue": "2",
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 6
            },
            "id": "#max_split"
        }
    ],
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "4dn-dcic",
    "successCodes": [],
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
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:modifiedOn": 1501908398,
    "stdout": "",
    "sbg:projectName": "Dev",
    "sbg:job": {
        "inputs": {
            "pairs": {
                "path": "/path/to/pairs.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": [
                    {
                        "path": "$job.inputs.pairs + '.px2'"
                    }
                ]
            },
            "chrsizes": {
                "path": "/path/to/chrsize.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "ncores": 5,
            "max_split": 0,
            "pairs_index": {
                "path": "/path/to/pairs_index.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "binsize": 4,
            "outprefix": "outprefix-string-value"
        },
        "allocatedResources": {
            "mem": 16000,
            "cpu": 2
        }
    },
    "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
    "sbg:latestRevision": 19
}