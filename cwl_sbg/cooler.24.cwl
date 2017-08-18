{
    "sbg:createdBy": "duplexa",
    "sbg:modifiedOn": 1503089877,
    "sbg:image_url": null,
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ]
        }
    ],
    "baseCommand": [
        "run-cooler.sh"
    ],
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
    "stdin": "",
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
            "dockerPull": "duplexa/4dn-hic:v35"
        }
    ],
    "sbg:sbgMaintained": false,
    "temporaryFailCodes": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/24/raw/",
    "description": "",
    "successCodes": [],
    "stdout": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:validationErrors": [],
    "class": "CommandLineTool",
    "sbg:cmdPreview": "run-cooler.sh",
    "label": "cooler",
    "sbg:modifiedBy": "4dn-dcic",
    "arguments": [],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 2,
            "mem": 16000
        },
        "inputs": {
            "chrsizes": {
                "path": "/path/to/chrsize.ext",
                "secondaryFiles": [],
                "class": "File",
                "size": 0
            },
            "binsize": 4,
            "outprefix": "outprefix-string-value",
            "max_split": 0,
            "pairs": {
                "path": "/path/to/pairs.ext",
                "secondaryFiles": [
                    {
                        "path": {
                            "script": "self.basename + '.px2'",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "class": "File",
                "size": 0
            },
            "ncores": 5
        }
    },
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:latestRevision": 24,
    "sbg:id": "4dn-dcic/dev/cooler/24",
    "sbg:createdOn": 1488495202,
    "sbg:revision": 24,
    "inputs": [
        {
            "id": "#pairs",
            "sbg:stageInput": "copy",
            "inputBinding": {
                "separate": true,
                "secondaryFiles": [
                    {
                        "script": "self.basename + '.px2'",
                        "class": "Expression",
                        "engine": "#cwl-js-engine"
                    }
                ],
                "sbg:cmdInclude": true,
                "position": 1
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#chrsizes",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "sbg:fileTypes": "SIZES",
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
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 5
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
                "sbg:cmdInclude": true,
                "position": 4
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
                "sbg:cmdInclude": true,
                "position": 6
            },
            "sbg:toolDefaultValue": "2",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1488495202,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1488495392,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1488495453,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2
        },
        {
            "sbg:modifiedOn": 1488499764,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1488511643,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4
        },
        {
            "sbg:modifiedOn": 1488511809,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5
        },
        {
            "sbg:modifiedOn": 1488525294,
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 6
        },
        {
            "sbg:modifiedOn": 1488529899,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 7
        },
        {
            "sbg:modifiedOn": 1490716960,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 8
        },
        {
            "sbg:modifiedOn": 1496167357,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 9
        },
        {
            "sbg:modifiedOn": 1496168048,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 10
        },
        {
            "sbg:modifiedOn": 1496175693,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 11
        },
        {
            "sbg:modifiedOn": 1496175978,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 12
        },
        {
            "sbg:modifiedOn": 1499354982,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 13
        },
        {
            "sbg:modifiedOn": 1499625090,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 14
        },
        {
            "sbg:modifiedOn": 1499625139,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 15
        },
        {
            "sbg:modifiedOn": 1499627281,
            "sbg:revisionNotes": "Mem 960GB",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 16
        },
        {
            "sbg:modifiedOn": 1499690249,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 17
        },
        {
            "sbg:modifiedOn": 1500331793,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 18
        },
        {
            "sbg:modifiedOn": 1501908398,
            "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 19
        },
        {
            "sbg:modifiedOn": 1502829691,
            "sbg:revisionNotes": "pairs index as a secondary file to pairs instead of a separate input item",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 20
        },
        {
            "sbg:modifiedOn": 1502833432,
            "sbg:revisionNotes": "pairs secondary file expression -> job.self.path",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 21
        },
        {
            "sbg:modifiedOn": 1502843400,
            "sbg:revisionNotes": "self.path -> self.basename for secondary file (pairs index)",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 22
        },
        {
            "sbg:modifiedOn": 1503000496,
            "sbg:revisionNotes": "docker v34",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 23
        },
        {
            "sbg:modifiedOn": 1503089877,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 24
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "cwlVersion": "sbg:draft-2"
}