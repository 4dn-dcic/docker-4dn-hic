{
    "temporaryFailCodes": [],
    "stdout": "",
    "class": "CommandLineTool",
    "sbg:job": {
        "inputs": {
            "outprefix": "outprefix-string-value",
            "input_pairs": [
                {
                    "size": 0,
                    "class": "File",
                    "secondaryFiles": [],
                    "path": "/path/to/input_pairs-1.ext"
                },
                {
                    "size": 0,
                    "class": "File",
                    "secondaryFiles": [],
                    "path": "/path/to/input_pairs-2.ext"
                }
            ]
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 4000
        }
    },
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/28/raw/",
    "sbg:createdBy": "duplexa",
    "label": "merge-pairs",
    "sbg:modifiedBy": "4dn-dcic",
    "successCodes": [],
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
    "hints": [
        {
            "value": 1,
            "class": "sbg:CPURequirement"
        },
        {
            "value": 4000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerPull": "duplexa/4dn-hic:v33",
            "class": "DockerRequirement",
            "dockerImageId": ""
        },
        {
            "value": "",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "description": "",
    "sbg:revision": 28,
    "sbg:projectName": "Dev",
    "sbg:revisionNotes": "output secondary file now just '.px2'",
    "sbg:image_url": null,
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix"
        },
        {
            "sbg:stageInput": "copy",
            "inputBinding": {
                "itemSeparator": " ",
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "id": "#input_pairs"
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:cmdPreview": "run-merge-pairs.sh",
    "sbg:latestRevision": 28,
    "sbg:id": "4dn-dcic/dev/merge-pairs/28",
    "stdin": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:sbgMaintained": false,
    "sbg:links": [],
    "sbg:validationErrors": [],
    "sbg:createdOn": 1479143121,
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479143121,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479143406,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479143659,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479143834,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479143945,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144065,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144200,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144240,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144301,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149340,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149428,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 11,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149963,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 12,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479155094,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 13,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1479241188,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 14,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524515,
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:revision": 15,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524641,
            "sbg:revisionNotes": "pairs and index are copied not links, so that they go together."
        },
        {
            "sbg:revision": 16,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524868,
            "sbg:revisionNotes": "removed blank secondary file requirement"
        },
        {
            "sbg:revision": 17,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488525221,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 18,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488529667,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 19,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488531529,
            "sbg:revisionNotes": "removed outdir in the output glob"
        },
        {
            "sbg:revision": 20,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488567441,
            "sbg:revisionNotes": "fixed output file name"
        },
        {
            "sbg:revision": 21,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1490716980,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 22,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496166568,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 23,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496188642,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 24,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499356728,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 25,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500331813,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 26,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502829840,
            "sbg:revisionNotes": "pairs index as a secondary file to pairs output instead of a separate output item."
        },
        {
            "sbg:revision": 27,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502830223,
            "sbg:revisionNotes": "modified expression for secondary output file for pairs index"
        },
        {
            "sbg:revision": 28,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502834121,
            "sbg:revisionNotes": "output secondary file now just '.px2'"
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "secondaryFiles": [
                    ".px2"
                ]
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs"
        }
    ],
    "arguments": [],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "sbg:modifiedOn": 1502834121
}