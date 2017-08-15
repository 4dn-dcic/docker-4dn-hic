{
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "arguments": [],
    "sbg:latestRevision": 28,
    "sbg:cmdPreview": "run-merge-pairs.sh",
    "sbg:projectName": "Dev",
    "stdout": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 4000
        },
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
        }
    },
    "class": "CommandLineTool",
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
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/28/raw/",
    "sbg:id": "4dn-dcic/dev/merge-pairs/28",
    "outputs": [
        {
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "secondaryFiles": [
                    ".px2"
                ],
                "glob": {
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#output_pairs"
        }
    ],
    "temporaryFailCodes": [],
    "sbg:revision": 28,
    "sbg:image_url": null,
    "sbg:modifiedOn": 1502834121,
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix",
            "sbg:toolDefaultValue": "out"
        },
        {
            "inputBinding": {
                "itemSeparator": " ",
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "id": "#input_pairs",
            "sbg:fileTypes": "PAIRS.GZ",
            "sbg:stageInput": "copy"
        }
    ],
    "successCodes": [],
    "sbg:createdBy": "duplexa",
    "label": "merge-pairs",
    "sbg:links": [],
    "cwlVersion": "sbg:draft-2",
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        },
        {
            "value": "",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "4dn-dcic",
    "stdin": "",
    "sbg:revisionNotes": "output secondary file now just '.px2'",
    "description": "",
    "sbg:sbgMaintained": false,
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
        }
    ],
    "sbg:createdOn": 1479143121
}