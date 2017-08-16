{
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "secondaryFiles": [
                    {
                        "script": "self.basename + '.px2'",
                        "class": "Expression",
                        "engine": "#cwl-js-engine"
                    }
                ],
                "position": 1
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "id": "#pairs",
            "sbg:stageInput": "copy"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
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
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "sbg:stageInput": null,
            "id": "#binsize"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 5
            },
            "id": "#outprefix",
            "sbg:toolDefaultValue": "out"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 4
            },
            "id": "#ncores",
            "sbg:toolDefaultValue": "8"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 6
            },
            "sbg:stageInput": null,
            "id": "#max_split",
            "sbg:toolDefaultValue": "2"
        }
    ],
    "sbg:createdOn": 1488495202,
    "stdin": "",
    "sbg:revisionNotes": "self.path -> self.basename for secondary file (pairs index)",
    "sbg:revision": 22,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:sbgMaintained": false,
    "arguments": [],
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
    "sbg:id": "4dn-dcic/dev/cooler/22",
    "label": "cooler",
    "sbg:createdBy": "duplexa",
    "stdout": "",
    "sbg:validationErrors": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/22/raw/",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1488495202,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1488495392,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1488495453,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedOn": 1488499764,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1488511643,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 4
        },
        {
            "sbg:modifiedOn": 1488511809,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 5
        },
        {
            "sbg:modifiedOn": 1488525294,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:revision": 6
        },
        {
            "sbg:modifiedOn": 1488529899,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 7
        },
        {
            "sbg:modifiedOn": 1490716960,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 8
        },
        {
            "sbg:modifiedOn": 1496167357,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 9
        },
        {
            "sbg:modifiedOn": 1496168048,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 10
        },
        {
            "sbg:modifiedOn": 1496175693,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 11
        },
        {
            "sbg:modifiedOn": 1496175978,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 12
        },
        {
            "sbg:modifiedOn": 1499354982,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 13
        },
        {
            "sbg:modifiedOn": 1499625090,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 14
        },
        {
            "sbg:modifiedOn": 1499625139,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 15
        },
        {
            "sbg:modifiedOn": 1499627281,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "Mem 960GB",
            "sbg:revision": 16
        },
        {
            "sbg:modifiedOn": 1499690249,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 17
        },
        {
            "sbg:modifiedOn": 1500331793,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 18
        },
        {
            "sbg:modifiedOn": 1501908398,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
            "sbg:revision": 19
        },
        {
            "sbg:modifiedOn": 1502829691,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "pairs index as a secondary file to pairs instead of a separate input item",
            "sbg:revision": 20
        },
        {
            "sbg:modifiedOn": 1502833432,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "pairs secondary file expression -> job.self.path",
            "sbg:revision": 21
        },
        {
            "sbg:modifiedOn": 1502843400,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "self.path -> self.basename for secondary file (pairs index)",
            "sbg:revision": 22
        }
    ],
    "sbg:latestRevision": 22,
    "temporaryFailCodes": [],
    "sbg:projectName": "Dev",
    "successCodes": [],
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
            "dockerPull": "duplexa/4dn-hic:v33",
            "dockerImageId": ""
        }
    ],
    "sbg:modifiedOn": 1502843400,
    "class": "CommandLineTool",
    "cwlVersion": "sbg:draft-2",
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "id": "#cwl-js-engine"
        }
    ],
    "sbg:image_url": null,
    "description": "",
    "sbg:job": {
        "inputs": {
            "outprefix": "outprefix-string-value",
            "pairs": {
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
                ],
                "path": "/path/to/pairs.ext"
            },
            "ncores": 5,
            "chrsizes": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/chrsize.ext"
            },
            "max_split": 0,
            "binsize": 4
        },
        "allocatedResources": {
            "cpu": 2,
            "mem": 16000
        }
    },
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "baseCommand": [
        "run-cooler.sh"
    ],
    "sbg:cmdPreview": "run-cooler.sh"
}