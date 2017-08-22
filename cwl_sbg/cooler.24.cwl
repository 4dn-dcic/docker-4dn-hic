{
    "sbg:validationErrors": [],
    "sbg:cmdPreview": "run-cooler.sh",
    "baseCommand": [
        "run-cooler.sh"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/24/raw/",
    "sbg:job": {
        "inputs": {
            "chrsizes": {
                "size": 0,
                "path": "/path/to/chrsize.ext",
                "secondaryFiles": [],
                "class": "File"
            },
            "max_split": 0,
            "pairs": {
                "size": 0,
                "path": "/path/to/pairs.ext",
                "secondaryFiles": [
                    {
                        "path": {
                            "script": "self.basename + '.px2'",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        }
                    }
                ],
                "class": "File"
            },
            "binsize": 4,
            "outprefix": "outprefix-string-value",
            "ncores": 5
        },
        "allocatedResources": {
            "cpu": 2,
            "mem": 16000
        }
    },
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
    "sbg:project": "4dn-dcic/dev",
    "sbg:projectName": "Dev",
    "temporaryFailCodes": [],
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
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 24,
            "sbg:modifiedOn": 1503089877,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:id": "4dn-dcic/dev/cooler/24",
    "class": "CommandLineTool",
    "label": "cooler",
    "sbg:revision": 24,
    "sbg:sbgMaintained": false,
    "sbg:modifiedBy": "4dn-dcic",
    "description": "",
    "inputs": [
        {
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "id": "#pairs",
            "inputBinding": {
                "secondaryFiles": [
                    {
                        "script": "self.basename + '.px2'",
                        "engine": "#cwl-js-engine",
                        "class": "Expression"
                    }
                ],
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:stageInput": "copy"
        },
        {
            "sbg:fileTypes": "SIZES",
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes",
            "inputBinding": {
                "position": 2,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize",
            "inputBinding": {
                "position": 3,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:stageInput": null
        },
        {
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out",
            "id": "#outprefix",
            "inputBinding": {
                "position": 5,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "8",
            "id": "#ncores",
            "inputBinding": {
                "position": 4,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "2",
            "id": "#max_split",
            "inputBinding": {
                "position": 6,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:stageInput": null
        }
    ],
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
    "sbg:modifiedOn": 1503089877,
    "sbg:latestRevision": 24,
    "sbg:image_url": null,
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "cwlVersion": "sbg:draft-2",
    "stdout": "",
    "successCodes": [],
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
            "dockerPull": "duplexa/4dn-hic:v35",
            "class": "DockerRequirement"
        }
    ],
    "stdin": "",
    "sbg:createdBy": "duplexa",
    "sbg:createdOn": 1488495202,
    "arguments": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ]
}