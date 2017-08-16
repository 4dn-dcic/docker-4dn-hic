{
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#pairs",
            "sbg:stageInput": "copy",
            "inputBinding": {
                "separate": true,
                "secondaryFiles": [
                    {
                        "engine": "#cwl-js-engine",
                        "class": "Expression",
                        "script": "self.basename + '.px2'"
                    }
                ],
                "position": 1,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "PAIRS.GZ"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes",
            "sbg:fileTypes": "SIZES",
            "inputBinding": {
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize",
            "sbg:stageInput": null,
            "inputBinding": {
                "separate": true,
                "position": 3,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix",
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "separate": true,
                "position": 5,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "sbg:toolDefaultValue": "8",
            "inputBinding": {
                "separate": true,
                "position": 4,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#max_split",
            "sbg:toolDefaultValue": "2",
            "sbg:stageInput": null,
            "inputBinding": {
                "separate": true,
                "position": 6,
                "sbg:cmdInclude": true
            }
        }
    ],
    "description": "",
    "sbg:sbgMaintained": false,
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ]
        }
    ],
    "cwlVersion": "sbg:draft-2",
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
    "sbg:revision": 22,
    "temporaryFailCodes": [],
    "label": "cooler",
    "sbg:job": {
        "inputs": {
            "ncores": 5,
            "outprefix": "outprefix-string-value",
            "chrsizes": {
                "class": "File",
                "size": 0,
                "path": "/path/to/chrsize.ext",
                "secondaryFiles": []
            },
            "max_split": 0,
            "binsize": 4,
            "pairs": {
                "class": "File",
                "size": 0,
                "path": "/path/to/pairs.ext",
                "secondaryFiles": [
                    {
                        "path": {
                            "engine": "#cwl-js-engine",
                            "class": "Expression",
                            "script": "self.basename + '.px2'"
                        }
                    }
                ]
            }
        },
        "allocatedResources": {
            "cpu": 2,
            "mem": 16000
        }
    },
    "sbg:latestRevision": 22,
    "sbg:modifiedOn": 1502843400,
    "baseCommand": [
        "run-cooler.sh"
    ],
    "sbg:createdOn": 1488495202,
    "sbg:id": "4dn-dcic/dev/cooler/22",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/22/raw/",
    "sbg:cmdPreview": "run-cooler.sh",
    "arguments": [],
    "sbg:revisionNotes": "self.path -> self.basename for secondary file (pairs index)",
    "sbg:modifiedBy": "4dn-dcic",
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
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 20,
            "sbg:modifiedOn": 1502829691,
            "sbg:revisionNotes": "pairs index as a secondary file to pairs instead of a separate input item"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 21,
            "sbg:modifiedOn": 1502833432,
            "sbg:revisionNotes": "pairs secondary file expression -> job.self.path"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 22,
            "sbg:modifiedOn": 1502843400,
            "sbg:revisionNotes": "self.path -> self.basename for secondary file (pairs index)"
        }
    ],
    "stdout": "",
    "sbg:validationErrors": [],
    "sbg:projectName": "Dev",
    "sbg:createdBy": "duplexa",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:image_url": null,
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
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "class": "CommandLineTool",
    "sbg:project": "4dn-dcic/dev",
    "stdin": "",
    "successCodes": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ]
}