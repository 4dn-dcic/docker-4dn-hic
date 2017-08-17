{
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.cool"
            },
            "id": "#out_cool"
        }
    ],
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
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:revisionNotes": "self.path -> self.basename for secondary file (pairs index)",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "secondaryFiles": [
                    {
                        "class": "Expression",
                        "engine": "#cwl-js-engine",
                        "script": "self.basename + '.px2'"
                    }
                ],
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "sbg:stageInput": "copy",
            "id": "#pairs",
            "sbg:fileTypes": "PAIRS.GZ"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true
            },
            "id": "#chrsizes",
            "sbg:fileTypes": "SIZES"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "position": 3,
                "sbg:cmdInclude": true
            },
            "sbg:stageInput": null,
            "id": "#binsize"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "separate": true,
                "position": 5,
                "sbg:cmdInclude": true
            },
            "id": "#outprefix"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "8",
            "inputBinding": {
                "separate": true,
                "position": 4,
                "sbg:cmdInclude": true
            },
            "id": "#ncores"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "2",
            "inputBinding": {
                "separate": true,
                "position": 6,
                "sbg:cmdInclude": true
            },
            "sbg:stageInput": null,
            "id": "#max_split"
        }
    ],
    "sbg:createdOn": 1488495202,
    "class": "CommandLineTool",
    "sbg:validationErrors": [],
    "label": "cooler",
    "sbg:modifiedOn": 1502843400,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/22/raw/",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:cmdPreview": "run-cooler.sh",
    "stdin": "",
    "stdout": "",
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
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:latestRevision": 22,
    "baseCommand": [
        "run-cooler.sh"
    ],
    "successCodes": [],
    "sbg:sbgMaintained": false,
    "sbg:projectName": "Dev",
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
            "dockerPull": "duplexa/4dn-hic:v33",
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "arguments": [],
    "sbg:project": "4dn-dcic/dev",
    "description": "",
    "sbg:image_url": null,
    "sbg:revision": 22,
    "sbg:id": "4dn-dcic/dev/cooler/22",
    "temporaryFailCodes": [],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 2,
            "mem": 16000
        },
        "inputs": {
            "chrsizes": {
                "secondaryFiles": [],
                "path": "/path/to/chrsize.ext",
                "size": 0,
                "class": "File"
            },
            "max_split": 0,
            "ncores": 5,
            "pairs": {
                "secondaryFiles": [
                    {
                        "path": {
                            "class": "Expression",
                            "engine": "#cwl-js-engine",
                            "script": "self.basename + '.px2'"
                        }
                    }
                ],
                "path": "/path/to/pairs.ext",
                "size": 0,
                "class": "File"
            },
            "binsize": 4,
            "outprefix": "outprefix-string-value"
        }
    },
    "cwlVersion": "sbg:draft-2"
}