{
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:modifiedOn": 1503089877,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1488495202
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1488495392
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedOn": 1488495453
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedOn": 1488499764
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedOn": 1488511643
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 5,
            "sbg:modifiedOn": 1488511809
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1488525294
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 7,
            "sbg:modifiedOn": 1488529899
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 8,
            "sbg:modifiedOn": 1490716960
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 9,
            "sbg:modifiedOn": 1496167357
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 10,
            "sbg:modifiedOn": 1496168048
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 11,
            "sbg:modifiedOn": 1496175693
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 12,
            "sbg:modifiedOn": 1496175978
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 13,
            "sbg:modifiedOn": 1499354982
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 14,
            "sbg:modifiedOn": 1499625090
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 15,
            "sbg:modifiedOn": 1499625139
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "Mem 960GB",
            "sbg:revision": 16,
            "sbg:modifiedOn": 1499627281
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 17,
            "sbg:modifiedOn": 1499690249
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 18,
            "sbg:modifiedOn": 1500331793
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
            "sbg:revision": 19,
            "sbg:modifiedOn": 1501908398
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "pairs index as a secondary file to pairs instead of a separate input item",
            "sbg:revision": 20,
            "sbg:modifiedOn": 1502829691
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "pairs secondary file expression -> job.self.path",
            "sbg:revision": 21,
            "sbg:modifiedOn": 1502833432
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "self.path -> self.basename for secondary file (pairs index)",
            "sbg:revision": 22,
            "sbg:modifiedOn": 1502843400
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "docker v34",
            "sbg:revision": 23,
            "sbg:modifiedOn": 1503000496
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 24,
            "sbg:modifiedOn": 1503089877
        }
    ],
    "arguments": [],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 2,
            "mem": 16000
        },
        "inputs": {
            "binsize": 4,
            "outprefix": "outprefix-string-value",
            "ncores": 5,
            "max_split": 0,
            "chrsizes": {
                "path": "/path/to/chrsize.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "pairs": {
                "path": "/path/to/pairs.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": [
                    {
                        "path": {
                            "script": "self.basename + '.px2'",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ]
            }
        }
    },
    "inputs": [
        {
            "id": "#pairs",
            "inputBinding": {
                "secondaryFiles": [
                    {
                        "script": "self.basename + '.px2'",
                        "class": "Expression",
                        "engine": "#cwl-js-engine"
                    }
                ],
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "PAIRS.GZ",
            "sbg:stageInput": "copy"
        },
        {
            "id": "#chrsizes",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "SIZES"
        },
        {
            "id": "#binsize",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": true
            },
            "sbg:stageInput": null
        },
        {
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 5,
                "separate": true
            },
            "sbg:toolDefaultValue": "out"
        },
        {
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 4,
                "separate": true
            },
            "sbg:toolDefaultValue": "8"
        },
        {
            "id": "#max_split",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 6,
                "separate": true
            },
            "sbg:toolDefaultValue": "2",
            "sbg:stageInput": null
        }
    ],
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v35",
            "dockerImageId": ""
        }
    ],
    "baseCommand": [
        "run-cooler.sh"
    ],
    "sbg:validationErrors": [],
    "sbg:id": "4dn-dcic/dev/cooler/24",
    "temporaryFailCodes": [],
    "successCodes": [],
    "stdout": "",
    "sbg:revision": 24,
    "label": "cooler",
    "description": "",
    "sbg:createdBy": "duplexa",
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
    "class": "CommandLineTool",
    "sbg:sbgMaintained": false,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/24/raw/",
    "sbg:cmdPreview": "run-cooler.sh",
    "cwlVersion": "sbg:draft-2",
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
    "sbg:latestRevision": 24,
    "sbg:project": "4dn-dcic/dev",
    "sbg:projectName": "Dev",
    "sbg:image_url": null,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdin": "",
    "sbg:createdOn": 1488495202
}