{
    "arguments": [],
    "sbg:image_url": null,
    "sbg:id": "4dn-dcic/dev/merge-pairs/30",
    "stdout": "",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "temporaryFailCodes": [],
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "4dn-dcic",
    "successCodes": [],
    "sbg:cmdPreview": "run-merge-pairs.sh",
    "sbg:revisionNotes": "docker v35",
    "description": "",
    "sbg:projectName": "Dev",
    "sbg:links": [],
    "sbg:sbgMaintained": false,
    "stdin": "",
    "label": "merge-pairs",
    "sbg:modifiedOn": 1503089840,
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 4000
        },
        "inputs": {
            "input_pairs": [
                {
                    "secondaryFiles": [],
                    "path": "/path/to/input_pairs-1.ext",
                    "size": 0,
                    "class": "File"
                },
                {
                    "secondaryFiles": [],
                    "path": "/path/to/input_pairs-2.ext",
                    "size": 0,
                    "class": "File"
                }
            ],
            "outprefix": "outprefix-string-value"
        }
    },
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
            "id": "#output_pairs",
            "outputBinding": {
                "secondaryFiles": [
                    ".px2"
                ],
                "glob": {
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                }
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "CommandLineTool",
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
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1503000458,
            "sbg:revision": 29,
            "sbg:revisionNotes": "docker v34"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1503089840,
            "sbg:revision": 30,
            "sbg:revisionNotes": "docker v35"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1479143121,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revision": 30,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/30/raw/",
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
            "dockerPull": "duplexa/4dn-hic:v35",
            "dockerImageId": "",
            "class": "DockerRequirement"
        },
        {
            "value": "",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "sbg:createdBy": "duplexa",
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
    "inputs": [
        {
            "id": "#outprefix",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
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
                "separate": true,
                "itemSeparator": " ",
                "sbg:cmdInclude": true
            },
            "sbg:stageInput": "copy",
            "sbg:fileTypes": "PAIRS.GZ",
            "id": "#input_pairs"
        }
    ],
    "sbg:latestRevision": 30
}