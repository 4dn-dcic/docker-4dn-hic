{
    "stdout": "",
    "sbg:links": [],
    "sbg:createdOn": 1479143121,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/28/raw/",
    "sbg:createdBy": "duplexa",
    "arguments": [],
    "stdin": "",
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "sbg:validationErrors": [],
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ]
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionNotes": "output secondary file now just '.px2'",
    "sbg:job": {
        "inputs": {
            "input_pairs": [
                {
                    "size": 0,
                    "class": "File",
                    "path": "/path/to/input_pairs-1.ext",
                    "secondaryFiles": []
                },
                {
                    "size": 0,
                    "class": "File",
                    "path": "/path/to/input_pairs-2.ext",
                    "secondaryFiles": []
                }
            ],
            "outprefix": "outprefix-string-value"
        },
        "allocatedResources": {
            "mem": 4000,
            "cpu": 1
        }
    },
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479143121,
            "sbg:revision": 0,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479143406,
            "sbg:revision": 1,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479143659,
            "sbg:revision": 2,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479143834,
            "sbg:revision": 3,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479143945,
            "sbg:revision": 4,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144065,
            "sbg:revision": 5,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144200,
            "sbg:revision": 6,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144240,
            "sbg:revision": 7,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144301,
            "sbg:revision": 8,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149340,
            "sbg:revision": 9,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149428,
            "sbg:revision": 10,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149963,
            "sbg:revision": 11,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479155094,
            "sbg:revision": 12,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1479241188,
            "sbg:revision": 13,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524515,
            "sbg:revision": 14,
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524641,
            "sbg:revision": 15,
            "sbg:revisionNotes": "pairs and index are copied not links, so that they go together."
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524868,
            "sbg:revision": 16,
            "sbg:revisionNotes": "removed blank secondary file requirement"
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488525221,
            "sbg:revision": 17,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488529667,
            "sbg:revision": 18,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488531529,
            "sbg:revision": 19,
            "sbg:revisionNotes": "removed outdir in the output glob"
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488567441,
            "sbg:revision": 20,
            "sbg:revisionNotes": "fixed output file name"
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1490716980,
            "sbg:revision": 21,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496166568,
            "sbg:revision": 22,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496188642,
            "sbg:revision": 23,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499356728,
            "sbg:revision": 24,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500331813,
            "sbg:revision": 25,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502829840,
            "sbg:revision": 26,
            "sbg:revisionNotes": "pairs index as a secondary file to pairs output instead of a separate output item."
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502830223,
            "sbg:revision": 27,
            "sbg:revisionNotes": "modified expression for secondary output file for pairs index"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502834121,
            "sbg:revision": 28,
            "sbg:revisionNotes": "output secondary file now just '.px2'"
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:latestRevision": 28,
    "sbg:sbgMaintained": false,
    "description": "",
    "inputs": [
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#outprefix",
            "sbg:toolDefaultValue": "out"
        },
        {
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "itemSeparator": " ",
                "separate": true
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "id": "#input_pairs",
            "sbg:stageInput": "copy"
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
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
            "dockerImageId": "",
            "dockerPull": "duplexa/4dn-hic:v33",
            "class": "DockerRequirement"
        },
        {
            "value": "",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:cmdPreview": "run-merge-pairs.sh",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                },
                "secondaryFiles": [
                    ".px2"
                ]
            },
            "id": "#output_pairs",
            "sbg:fileTypes": "PAIRS.GZ"
        }
    ],
    "class": "CommandLineTool",
    "sbg:project": "4dn-dcic/dev",
    "sbg:revision": 28,
    "sbg:modifiedOn": 1502834121,
    "successCodes": [],
    "sbg:image_url": null,
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "label": "merge-pairs",
    "sbg:id": "4dn-dcic/dev/merge-pairs/28",
    "temporaryFailCodes": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ]
}