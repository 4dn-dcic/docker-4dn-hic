{
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
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
    "sbg:id": "4dn-dcic/dev/cooler/21",
    "arguments": [],
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
            "dockerPull": "duplexa/4dn-hic:v33",
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionNotes": "pairs secondary file expression -> job.self.path",
    "description": "",
    "sbg:image_url": null,
    "sbg:cmdPreview": "run-cooler.sh",
    "sbg:revision": 21,
    "sbg:modifiedOn": 1502833432,
    "sbg:job": {
        "allocatedResources": {
            "mem": 16000,
            "cpu": 2
        },
        "inputs": {
            "ncores": 5,
            "outprefix": "outprefix-string-value",
            "chrsizes": {
                "path": "/path/to/chrsize.ext",
                "size": 0,
                "secondaryFiles": [],
                "class": "File"
            },
            "pairs": {
                "path": "/path/to/pairs.ext",
                "size": 0,
                "secondaryFiles": [
                    {
                        "path": {
                            "script": "$job.self.path + '.px2'",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "class": "File"
            },
            "binsize": 4,
            "max_split": 0
        }
    },
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "baseCommand": [
        "run-cooler.sh"
    ],
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:latestRevision": 21,
    "sbg:sbgMaintained": false,
    "sbg:projectName": "Dev",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488495202,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488495392,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488495453,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488499764,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488511643,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488511809,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 6,
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedOn": 1488525294,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 7,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488529899,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 8,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1490716960,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 9,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496167357,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 10,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496168048,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 11,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496175693,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 12,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496175978,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 13,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499354982,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 14,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499625090,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 15,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499625139,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 16,
            "sbg:revisionNotes": "Mem 960GB",
            "sbg:modifiedOn": 1499627281,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 17,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499690249,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 18,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500331793,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 19,
            "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
            "sbg:modifiedOn": 1501908398,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 20,
            "sbg:revisionNotes": "pairs index as a secondary file to pairs instead of a separate input item",
            "sbg:modifiedOn": 1502829691,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 21,
            "sbg:revisionNotes": "pairs secondary file expression -> job.self.path",
            "sbg:modifiedOn": 1502833432,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "successCodes": [],
    "label": "cooler",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:validationErrors": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/21/raw/",
    "temporaryFailCodes": [],
    "class": "CommandLineTool",
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdBy": "duplexa",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true,
                "secondaryFiles": [
                    {
                        "script": "$job.self.path + '.px2'",
                        "class": "Expression",
                        "engine": "#cwl-js-engine"
                    }
                ],
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "sbg:stageInput": "copy",
            "id": "#pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "SIZES",
            "id": "#chrsizes"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 3,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:stageInput": null,
            "id": "#binsize"
        },
        {
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 5,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "id": "#outprefix"
        },
        {
            "sbg:toolDefaultValue": "8",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 4,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "id": "#ncores"
        },
        {
            "sbg:toolDefaultValue": "2",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 6,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:stageInput": null,
            "id": "#max_split"
        }
    ],
    "stdin": "",
    "sbg:createdOn": 1488495202
}