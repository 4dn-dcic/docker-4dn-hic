{
    "temporaryFailCodes": [],
    "sbg:createdOn": 1488495202,
    "sbg:id": "4dn-dcic/dev/cooler/24",
    "baseCommand": [
        "run-cooler.sh"
    ],
    "sbg:cmdPreview": "run-cooler.sh",
    "sbg:revision": 24,
    "sbg:project": "4dn-dcic/dev",
    "sbg:latestRevision": 24,
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1503089877,
    "sbg:modifiedBy": "4dn-dcic",
    "successCodes": [],
    "inputs": [
        {
            "id": "#pairs",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "secondaryFiles": [
                    {
                        "script": "self.basename + '.px2'",
                        "engine": "#cwl-js-engine",
                        "class": "Expression"
                    }
                ],
                "position": 1,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "sbg:stageInput": "copy"
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
            "sbg:toolDefaultValue": "out",
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
            "id": "#ncores",
            "sbg:toolDefaultValue": "8",
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
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 6
            },
            "id": "#max_split",
            "sbg:toolDefaultValue": "2",
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null
        }
    ],
    "sbg:sbgMaintained": false,
    "stdout": "",
    "sbg:job": {
        "inputs": {
            "chrsizes": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/chrsize.ext"
            },
            "binsize": 4,
            "pairs": {
                "secondaryFiles": [
                    {
                        "path": {
                            "script": "self.basename + '.px2'",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        }
                    }
                ],
                "class": "File",
                "size": 0,
                "path": "/path/to/pairs.ext"
            },
            "outprefix": "outprefix-string-value",
            "ncores": 5,
            "max_split": 0
        },
        "allocatedResources": {
            "mem": 16000,
            "cpu": 2
        }
    },
    "cwlVersion": "sbg:draft-2",
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
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/24/raw/",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "class": "CommandLineTool",
    "sbg:image_url": null,
    "stdin": "",
    "sbg:validationErrors": [],
    "label": "cooler",
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488495202,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488495392,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488495453,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488499764,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488511643,
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488511809,
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedOn": 1488525294,
            "sbg:revision": 6,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488529899,
            "sbg:revision": 7,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1490716960,
            "sbg:revision": 8,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496167357,
            "sbg:revision": 9,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496168048,
            "sbg:revision": 10,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496175693,
            "sbg:revision": 11,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496175978,
            "sbg:revision": 12,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499354982,
            "sbg:revision": 13,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499625090,
            "sbg:revision": 14,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499625139,
            "sbg:revision": 15,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "Mem 960GB",
            "sbg:modifiedOn": 1499627281,
            "sbg:revision": 16,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499690249,
            "sbg:revision": 17,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500331793,
            "sbg:revision": 18,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
            "sbg:modifiedOn": 1501908398,
            "sbg:revision": 19,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "pairs index as a secondary file to pairs instead of a separate input item",
            "sbg:modifiedOn": 1502829691,
            "sbg:revision": 20,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "pairs secondary file expression -> job.self.path",
            "sbg:modifiedOn": 1502833432,
            "sbg:revision": 21,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "self.path -> self.basename for secondary file (pairs index)",
            "sbg:modifiedOn": 1502843400,
            "sbg:revision": 22,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "docker v34",
            "sbg:modifiedOn": 1503000496,
            "sbg:revision": 23,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1503089877,
            "sbg:revision": 24,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
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
            "dockerPull": "duplexa/4dn-hic:v35",
            "dockerImageId": ""
        }
    ],
    "sbg:createdBy": "duplexa",
    "arguments": []
}