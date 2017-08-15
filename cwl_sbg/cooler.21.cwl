{
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "secondaryFiles": [
                    {
                        "engine": "#cwl-js-engine",
                        "script": "$job.self.path + '.px2'",
                        "class": "Expression"
                    }
                ],
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "sbg:stageInput": "copy",
            "id": "#pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "SIZES",
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:stageInput": null,
            "id": "#binsize",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "inputBinding": {
                "position": 5,
                "separate": true,
                "sbg:cmdInclude": true
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
                "position": 4,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:toolDefaultValue": "8",
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "inputBinding": {
                "position": 6,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:toolDefaultValue": "2",
            "sbg:stageInput": null,
            "id": "#max_split",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/21/raw/",
    "sbg:image_url": null,
    "label": "cooler",
    "class": "CommandLineTool",
    "sbg:job": {
        "inputs": {
            "binsize": 4,
            "ncores": 5,
            "pairs": {
                "size": 0,
                "path": "/path/to/pairs.ext",
                "secondaryFiles": [
                    {
                        "path": {
                            "engine": "#cwl-js-engine",
                            "script": "$job.self.path + '.px2'",
                            "class": "Expression"
                        }
                    }
                ],
                "class": "File"
            },
            "outprefix": "outprefix-string-value",
            "max_split": 0,
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
    "sbg:modifiedBy": "4dn-dcic",
    "stdin": "",
    "sbg:modifiedOn": 1502833432,
    "stdout": "",
    "sbg:revision": 21,
    "sbg:project": "4dn-dcic/dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "temporaryFailCodes": [],
    "description": "",
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:validationErrors": [],
    "sbg:createdOn": 1488495202,
    "requirements": [
        {
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:cmdPreview": "run-cooler.sh",
    "sbg:projectName": "Dev",
    "sbg:id": "4dn-dcic/dev/cooler/21",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1488495202
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1488495392
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1488495453
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1488499764
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1488511643
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1488511809
        },
        {
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1488525294
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1488529899
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1490716960
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 9,
            "sbg:modifiedOn": 1496167357
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 10,
            "sbg:modifiedOn": 1496168048
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 11,
            "sbg:modifiedOn": 1496175693
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 12,
            "sbg:modifiedOn": 1496175978
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 13,
            "sbg:modifiedOn": 1499354982
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 14,
            "sbg:modifiedOn": 1499625090
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 15,
            "sbg:modifiedOn": 1499625139
        },
        {
            "sbg:revisionNotes": "Mem 960GB",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 16,
            "sbg:modifiedOn": 1499627281
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 17,
            "sbg:modifiedOn": 1499690249
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 18,
            "sbg:modifiedOn": 1500331793
        },
        {
            "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 19,
            "sbg:modifiedOn": 1501908398
        },
        {
            "sbg:revisionNotes": "pairs index as a secondary file to pairs instead of a separate input item",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 20,
            "sbg:modifiedOn": 1502829691
        },
        {
            "sbg:revisionNotes": "pairs secondary file expression -> job.self.path",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 21,
            "sbg:modifiedOn": 1502833432
        }
    ],
    "cwlVersion": "sbg:draft-2",
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
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:revisionNotes": "pairs secondary file expression -> job.self.path",
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
    "successCodes": [],
    "sbg:latestRevision": 21,
    "arguments": [],
    "baseCommand": [
        "run-cooler.sh"
    ]
}