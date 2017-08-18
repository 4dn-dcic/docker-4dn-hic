{
    "sbg:projectName": "Dev",
    "sbg:id": "4dn-dcic/dev/merge-pairs/30",
    "sbg:project": "4dn-dcic/dev",
    "sbg:latestRevision": 30,
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs",
            "sbg:fileTypes": "PAIRS.GZ",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "class": "Expression"
                },
                "secondaryFiles": [
                    ".px2"
                ]
            }
        }
    ],
    "temporaryFailCodes": [],
    "sbg:job": {
        "inputs": {
            "outprefix": "outprefix-string-value",
            "input_pairs": [
                {
                    "path": "/path/to/input_pairs-1.ext",
                    "size": 0,
                    "secondaryFiles": [],
                    "class": "File"
                },
                {
                    "path": "/path/to/input_pairs-2.ext",
                    "size": 0,
                    "secondaryFiles": [],
                    "class": "File"
                }
            ]
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 4000
        }
    },
    "stdin": "",
    "stdout": "",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:revisionNotes": "docker v35",
    "sbg:createdOn": 1479143121,
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
    "sbg:createdBy": "duplexa",
    "sbg:revision": 30,
    "sbg:validationErrors": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:cmdPreview": "run-merge-pairs.sh",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1479143121,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1479143406,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedOn": 1479143659,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedOn": 1479143834,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedOn": 1479143945,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 5,
            "sbg:modifiedOn": 1479144065,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 6,
            "sbg:modifiedOn": 1479144200,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 7,
            "sbg:modifiedOn": 1479144240,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 8,
            "sbg:modifiedOn": 1479144301,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 9,
            "sbg:modifiedOn": 1479149340,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 10,
            "sbg:modifiedOn": 1479149428,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 11,
            "sbg:modifiedOn": 1479149963,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 12,
            "sbg:modifiedOn": 1479155094,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 13,
            "sbg:modifiedOn": 1479241188,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:revision": 14,
            "sbg:modifiedOn": 1488524515,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": "pairs and index are copied not links, so that they go together.",
            "sbg:revision": 15,
            "sbg:modifiedOn": 1488524641,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": "removed blank secondary file requirement",
            "sbg:revision": 16,
            "sbg:modifiedOn": 1488524868,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 17,
            "sbg:modifiedOn": 1488525221,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 18,
            "sbg:modifiedOn": 1488529667,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": "removed outdir in the output glob",
            "sbg:revision": 19,
            "sbg:modifiedOn": 1488531529,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": "fixed output file name",
            "sbg:revision": 20,
            "sbg:modifiedOn": 1488567441,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 21,
            "sbg:modifiedOn": 1490716980,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 22,
            "sbg:modifiedOn": 1496166568,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 23,
            "sbg:modifiedOn": 1496188642,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 24,
            "sbg:modifiedOn": 1499356728,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 25,
            "sbg:modifiedOn": 1500331813,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "pairs index as a secondary file to pairs output instead of a separate output item.",
            "sbg:revision": 26,
            "sbg:modifiedOn": 1502829840,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "modified expression for secondary output file for pairs index",
            "sbg:revision": 27,
            "sbg:modifiedOn": 1502830223,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "output secondary file now just '.px2'",
            "sbg:revision": 28,
            "sbg:modifiedOn": 1502834121,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "docker v34",
            "sbg:revision": 29,
            "sbg:modifiedOn": 1503000458,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "docker v35",
            "sbg:revision": 30,
            "sbg:modifiedOn": 1503089840,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:modifiedOn": 1503089840,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/30/raw/",
    "sbg:sbgMaintained": false,
    "sbg:links": [],
    "description": "",
    "arguments": [],
    "inputs": [
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
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
            "sbg:stageInput": "copy",
            "sbg:fileTypes": "PAIRS.GZ",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "itemSeparator": " ",
                "position": 2
            },
            "id": "#input_pairs"
        }
    ],
    "successCodes": [],
    "label": "merge-pairs",
    "sbg:image_url": null,
    "sbg:appVersion": [
        "sbg:draft-2"
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
            "dockerImageId": "",
            "dockerPull": "duplexa/4dn-hic:v35",
            "class": "DockerRequirement"
        },
        {
            "value": "",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "class": "CommandLineTool"
}