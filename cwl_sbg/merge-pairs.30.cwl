{
    "sbg:validationErrors": [],
    "sbg:job": {
        "inputs": {
            "input_pairs": [
                {
                    "class": "File",
                    "secondaryFiles": [],
                    "path": "/path/to/input_pairs-1.ext",
                    "size": 0
                },
                {
                    "class": "File",
                    "secondaryFiles": [],
                    "path": "/path/to/input_pairs-2.ext",
                    "size": 0
                }
            ],
            "outprefix": "outprefix-string-value"
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 4000
        }
    },
    "sbg:modifiedOn": 1503089840,
    "label": "merge-pairs",
    "sbg:modifiedBy": "4dn-dcic",
    "arguments": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "class": "CommandLineTool",
    "inputs": [
        {
            "id": "#outprefix",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:stageInput": "copy",
            "id": "#input_pairs",
            "inputBinding": {
                "separate": true,
                "itemSeparator": " ",
                "sbg:cmdInclude": true,
                "position": 2
            },
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "sbg:fileTypes": "PAIRS.GZ"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/30/raw/",
    "cwlVersion": "sbg:draft-2",
    "stdout": "",
    "sbg:links": [],
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:revision": 30,
    "description": "",
    "sbg:sbgMaintained": false,
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
            "dockerPull": "duplexa/4dn-hic:v35",
            "class": "DockerRequirement",
            "dockerImageId": ""
        },
        {
            "class": "ExpressionEngineRequirement",
            "value": ""
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1479143121,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479143406,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479143659,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479143834,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479143945,
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479144065,
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479144200,
            "sbg:revision": 6,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479144240,
            "sbg:revision": 7,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479144301,
            "sbg:revision": 8,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479149340,
            "sbg:revision": 9,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479149428,
            "sbg:revision": 10,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479149963,
            "sbg:revision": 11,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479155094,
            "sbg:revision": 12,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479241188,
            "sbg:revision": 13,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1488524515,
            "sbg:revision": 14,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:modifiedOn": 1488524641,
            "sbg:revision": 15,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "pairs and index are copied not links, so that they go together."
        },
        {
            "sbg:modifiedOn": 1488524868,
            "sbg:revision": 16,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "removed blank secondary file requirement"
        },
        {
            "sbg:modifiedOn": 1488525221,
            "sbg:revision": 17,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1488529667,
            "sbg:revision": 18,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1488531529,
            "sbg:revision": 19,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "removed outdir in the output glob"
        },
        {
            "sbg:modifiedOn": 1488567441,
            "sbg:revision": 20,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "fixed output file name"
        },
        {
            "sbg:modifiedOn": 1490716980,
            "sbg:revision": 21,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1496166568,
            "sbg:revision": 22,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1496188642,
            "sbg:revision": 23,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1499356728,
            "sbg:revision": 24,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1500331813,
            "sbg:revision": 25,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1502829840,
            "sbg:revision": 26,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "pairs index as a secondary file to pairs output instead of a separate output item."
        },
        {
            "sbg:modifiedOn": 1502830223,
            "sbg:revision": 27,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "modified expression for secondary output file for pairs index"
        },
        {
            "sbg:modifiedOn": 1502834121,
            "sbg:revision": 28,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "output secondary file now just '.px2'"
        },
        {
            "sbg:modifiedOn": 1503000458,
            "sbg:revision": 29,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "docker v34"
        },
        {
            "sbg:modifiedOn": 1503089840,
            "sbg:revision": 30,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "docker v35"
        }
    ],
    "sbg:revisionNotes": "docker v35",
    "sbg:cmdPreview": "run-merge-pairs.sh",
    "sbg:createdBy": "duplexa",
    "sbg:image_url": null,
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
    "sbg:projectName": "Dev",
    "outputs": [
        {
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
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "PAIRS.GZ"
        }
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "sbg:project": "4dn-dcic/dev",
    "temporaryFailCodes": [],
    "sbg:id": "4dn-dcic/dev/merge-pairs/30",
    "sbg:createdOn": 1479143121,
    "stdin": "",
    "successCodes": [],
    "sbg:latestRevision": 30
}