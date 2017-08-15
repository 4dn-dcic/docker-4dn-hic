{
    "cwlVersion": "sbg:draft-2",
    "sbg:id": "4dn-dcic/dev/merge-pairs/28",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:image_url": null,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/28/raw/",
    "class": "CommandLineTool",
    "sbg:modifiedBy": "4dn-dcic",
    "inputs": [
        {
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix"
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
                "itemSeparator": " ",
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "id": "#input_pairs",
            "sbg:stageInput": "copy"
        }
    ],
    "sbg:validationErrors": [],
    "stdin": "",
    "sbg:sbgMaintained": false,
    "sbg:job": {
        "allocatedResources": {
            "mem": 4000,
            "cpu": 1
        },
        "inputs": {
            "input_pairs": [
                {
                    "class": "File",
                    "size": 0,
                    "secondaryFiles": [],
                    "path": "/path/to/input_pairs-1.ext"
                },
                {
                    "class": "File",
                    "size": 0,
                    "secondaryFiles": [],
                    "path": "/path/to/input_pairs-2.ext"
                }
            ],
            "outprefix": "outprefix-string-value"
        }
    },
    "successCodes": [],
    "temporaryFailCodes": [],
    "label": "merge-pairs",
    "sbg:modifiedOn": 1502834121,
    "sbg:revision": 28,
    "sbg:revisionNotes": "output secondary file now just '.px2'",
    "sbg:createdOn": 1479143121,
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ]
        }
    ],
    "sbg:cmdPreview": "run-merge-pairs.sh",
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "description": "",
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
    "sbg:projectName": "Dev",
    "sbg:latestRevision": 28,
    "sbg:createdBy": "duplexa",
    "hints": [
        {
            "class": "sbg:CPURequirement",
            "value": 1
        },
        {
            "class": "sbg:MemRequirement",
            "value": 4000
        },
        {
            "dockerPull": "duplexa/4dn-hic:v33",
            "class": "DockerRequirement",
            "dockerImageId": ""
        },
        {
            "class": "ExpressionEngineRequirement",
            "value": ""
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdout": "",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "PAIRS.GZ",
            "id": "#output_pairs",
            "outputBinding": {
                "secondaryFiles": [
                    ".px2"
                ],
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "engine": "#cwl-js-engine"
                }
            }
        }
    ],
    "sbg:links": [],
    "arguments": []
}