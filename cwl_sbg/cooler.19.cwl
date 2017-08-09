{
    "stdin": "",
    "sbg:id": "4dn-dcic/dev/cooler/19",
    "sbg:sbgMaintained": false,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/19/raw/",
    "sbg:modifiedBy": "4dn-dcic",
    "baseCommand": [
        "run-cooler.sh"
    ],
    "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
    "stdout": "",
    "sbg:validationErrors": [],
    "sbg:latestRevision": 19,
    "successCodes": [],
    "sbg:revision": 19,
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
    "class": "CommandLineTool",
    "inputs": [
        {
            "sbg:fileTypes": "PAIRS.GZ",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:stageInput": "copy",
            "id": "#pairs"
        },
        {
            "sbg:fileTypes": "PX2",
            "type": [
                "null",
                "File"
            ],
            "sbg:stageInput": "copy",
            "id": "#pairs_index"
        },
        {
            "sbg:fileTypes": "SIZES",
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes"
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
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "position": 5,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix"
        },
        {
            "sbg:toolDefaultValue": "8",
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores"
        },
        {
            "sbg:toolDefaultValue": "2",
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
            "id": "#max_split"
        }
    ],
    "label": "cooler",
    "sbg:createdOn": 1488495202,
    "arguments": [],
    "requirements": [],
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
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
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:image_url": null,
    "temporaryFailCodes": [],
    "sbg:job": {
        "allocatedResources": {
            "mem": 16000,
            "cpu": 2
        },
        "inputs": {
            "pairs": {
                "size": 0,
                "class": "File",
                "path": "/path/to/pairs.ext",
                "secondaryFiles": [
                    {
                        "path": "$job.inputs.pairs + '.px2'"
                    }
                ]
            },
            "outprefix": "outprefix-string-value",
            "binsize": 4,
            "max_split": 0,
            "chrsizes": {
                "size": 0,
                "class": "File",
                "path": "/path/to/chrsize.ext",
                "secondaryFiles": []
            },
            "ncores": 5,
            "pairs_index": {
                "size": 0,
                "class": "File",
                "path": "/path/to/pairs_index.ext",
                "secondaryFiles": []
            }
        }
    },
    "sbg:modifiedOn": 1501908398,
    "sbg:createdBy": "duplexa",
    "sbg:cmdPreview": "run-cooler.sh",
    "sbg:projectName": "Dev",
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
            "dockerPull": "duplexa/4dn-hic:v31",
            "dockerImageId": ""
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "description": ""
}