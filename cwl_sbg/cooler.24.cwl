{
    "successCodes": [],
    "stdin": "",
    "temporaryFailCodes": [],
    "sbg:id": "4dn-dcic/dev/cooler/24",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:revision": 24,
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
    "inputs": [
        {
            "sbg:stageInput": "copy",
            "type": [
                "null",
                "File"
            ],
            "id": "#pairs",
            "sbg:fileTypes": "PAIRS.GZ",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1,
                "secondaryFiles": [
                    {
                        "script": "self.basename + '.px2'",
                        "engine": "#cwl-js-engine",
                        "class": "Expression"
                    }
                ]
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes",
            "sbg:fileTypes": "SIZES",
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
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix",
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 5
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
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 4
            }
        },
        {
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "id": "#max_split",
            "sbg:toolDefaultValue": "2",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 6
            }
        }
    ],
    "sbg:latestRevision": 24,
    "sbg:createdOn": 1488495202,
    "sbg:modifiedOn": 1503089877,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488495202
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488495392
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488495453
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488499764
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488511643
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488511809
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 6,
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedOn": 1488525294
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 7,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488529899
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 8,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1490716960
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 9,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496167357
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 10,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496168048
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 11,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496175693
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 12,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496175978
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 13,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499354982
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 14,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499625090
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 15,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499625139
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 16,
            "sbg:revisionNotes": "Mem 960GB",
            "sbg:modifiedOn": 1499627281
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 17,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499690249
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 18,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500331793
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 19,
            "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
            "sbg:modifiedOn": 1501908398
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 20,
            "sbg:revisionNotes": "pairs index as a secondary file to pairs instead of a separate input item",
            "sbg:modifiedOn": 1502829691
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 21,
            "sbg:revisionNotes": "pairs secondary file expression -> job.self.path",
            "sbg:modifiedOn": 1502833432
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 22,
            "sbg:revisionNotes": "self.path -> self.basename for secondary file (pairs index)",
            "sbg:modifiedOn": 1502843400
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 23,
            "sbg:revisionNotes": "docker v34",
            "sbg:modifiedOn": 1503000496
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 24,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1503089877
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "label": "cooler",
    "description": "",
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
            "dockerPull": "duplexa/4dn-hic:v35",
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "class": "CommandLineTool",
    "sbg:createdBy": "duplexa",
    "sbg:sbgMaintained": false,
    "sbg:cmdPreview": "run-cooler.sh",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:validationErrors": [],
    "sbg:projectName": "Dev",
    "cwlVersion": "sbg:draft-2",
    "stdout": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/24/raw/",
    "sbg:image_url": null,
    "baseCommand": [
        "run-cooler.sh"
    ],
    "arguments": [],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 2,
            "mem": 16000
        },
        "inputs": {
            "max_split": 0,
            "chrsizes": {
                "class": "File",
                "path": "/path/to/chrsize.ext",
                "size": 0,
                "secondaryFiles": []
            },
            "outprefix": "outprefix-string-value",
            "binsize": 4,
            "ncores": 5,
            "pairs": {
                "class": "File",
                "path": "/path/to/pairs.ext",
                "size": 0,
                "secondaryFiles": [
                    {
                        "path": {
                            "script": "self.basename + '.px2'",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        }
                    }
                ]
            }
        }
    }
}