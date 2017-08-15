{
    "cwlVersion": "sbg:draft-2",
    "sbg:id": "4dn-dcic/dev/cooler/21",
    "stdin": "",
    "sbg:revisionNotes": "pairs secondary file expression -> job.self.path",
    "sbg:cmdPreview": "run-cooler.sh",
    "sbg:createdOn": 1488495202,
    "arguments": [],
    "sbg:validationErrors": [],
    "class": "CommandLineTool",
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
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:modifiedBy": "4dn-dcic",
    "successCodes": [],
    "label": "cooler",
    "sbg:image_url": null,
    "stdout": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedOn": 1502833432,
    "temporaryFailCodes": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/21/raw/",
    "sbg:projectName": "Dev",
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:revision": 21,
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
        }
    ],
    "description": "",
    "baseCommand": [
        "run-cooler.sh"
    ],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "secondaryFiles": [
                    {
                        "engine": "#cwl-js-engine",
                        "script": "$job.self.path + '.px2'",
                        "class": "Expression"
                    }
                ],
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:stageInput": "copy",
            "id": "#pairs",
            "sbg:fileTypes": "PAIRS.GZ"
        },
        {
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes",
            "sbg:fileTypes": "SIZES"
        },
        {
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "id": "#binsize"
        },
        {
            "inputBinding": {
                "position": 5,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out",
            "id": "#outprefix"
        },
        {
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "8",
            "id": "#ncores"
        },
        {
            "inputBinding": {
                "position": 6,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "2",
            "id": "#max_split"
        }
    ],
    "sbg:latestRevision": 21,
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:sbgMaintained": false,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 2,
            "mem": 16000
        },
        "inputs": {
            "pairs": {
                "secondaryFiles": [
                    {
                        "path": {
                            "engine": "#cwl-js-engine",
                            "script": "$job.self.path + '.px2'",
                            "class": "Expression"
                        }
                    }
                ],
                "path": "/path/to/pairs.ext",
                "size": 0,
                "class": "File"
            },
            "max_split": 0,
            "outprefix": "outprefix-string-value",
            "chrsizes": {
                "secondaryFiles": [],
                "path": "/path/to/chrsize.ext",
                "size": 0,
                "class": "File"
            },
            "ncores": 5,
            "binsize": 4
        }
    }
}