{
    "sbg:latestRevision": 23,
    "sbg:createdOn": 1488495202,
    "class": "CommandLineTool",
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:image_url": null,
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionNotes": "docker v34",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "stdout": "",
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
            "dockerPull": "duplexa/4dn-hic:v34",
            "class": "DockerRequirement"
        }
    ],
    "label": "cooler",
    "sbg:validationErrors": [],
    "sbg:cmdPreview": "run-cooler.sh",
    "inputs": [
        {
            "sbg:stageInput": "copy",
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "id": "#pairs",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "secondaryFiles": [
                    {
                        "script": "self.basename + '.px2'",
                        "engine": "#cwl-js-engine",
                        "class": "Expression"
                    }
                ],
                "separate": true,
                "position": 1
            }
        },
        {
            "sbg:fileTypes": "SIZES",
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            }
        },
        {
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 3
            }
        },
        {
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
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
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 4
            }
        },
        {
            "sbg:stageInput": null,
            "id": "#max_split",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "2",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 6
            }
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:id": "4dn-dcic/dev/cooler/23",
    "sbg:modifiedOn": 1503000496,
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1488495202,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1488495392,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedOn": 1488495453,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedOn": 1488499764,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedOn": 1488511643,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 5,
            "sbg:modifiedOn": 1488511809,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1488525294,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 7,
            "sbg:modifiedOn": 1488529899,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 8,
            "sbg:modifiedOn": 1490716960,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 9,
            "sbg:modifiedOn": 1496167357,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 10,
            "sbg:modifiedOn": 1496168048,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 11,
            "sbg:modifiedOn": 1496175693,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 12,
            "sbg:modifiedOn": 1496175978,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 13,
            "sbg:modifiedOn": 1499354982,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 14,
            "sbg:modifiedOn": 1499625090,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 15,
            "sbg:modifiedOn": 1499625139,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "Mem 960GB",
            "sbg:revision": 16,
            "sbg:modifiedOn": 1499627281,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 17,
            "sbg:modifiedOn": 1499690249,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 18,
            "sbg:modifiedOn": 1500331793,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
            "sbg:revision": 19,
            "sbg:modifiedOn": 1501908398,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "pairs index as a secondary file to pairs instead of a separate input item",
            "sbg:revision": 20,
            "sbg:modifiedOn": 1502829691,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "pairs secondary file expression -> job.self.path",
            "sbg:revision": 21,
            "sbg:modifiedOn": 1502833432,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "self.path -> self.basename for secondary file (pairs index)",
            "sbg:revision": 22,
            "sbg:modifiedOn": 1502843400,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "docker v34",
            "sbg:revision": 23,
            "sbg:modifiedOn": 1503000496,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "successCodes": [],
    "sbg:revision": 23,
    "stdin": "",
    "sbg:sbgMaintained": false,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/23/raw/",
    "baseCommand": [
        "run-cooler.sh"
    ],
    "sbg:createdBy": "duplexa",
    "temporaryFailCodes": [],
    "arguments": [],
    "sbg:job": {
        "inputs": {
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
            "binsize": 4,
            "ncores": 5,
            "chrsizes": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/chrsize.ext"
            },
            "max_split": 0,
            "outprefix": "outprefix-string-value"
        },
        "allocatedResources": {
            "mem": 16000,
            "cpu": 2
        }
    },
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
    "description": ""
}