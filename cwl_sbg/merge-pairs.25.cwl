{
    "sbg:cmdPreview": "run-merge-pairs.sh",
    "cwlVersion": "sbg:draft-2",
    "successCodes": [],
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
            "dockerPull": "duplexa/4dn-hic:v26",
            "dockerImageId": "",
            "class": "DockerRequirement"
        },
        {
            "value": "",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "temporaryFailCodes": [],
    "sbg:job": {
        "allocatedResources": {
            "mem": 4000,
            "cpu": 1
        },
        "inputs": {
            "input_pairs": [
                {
                    "path": "/path/to/input_pairs-1.ext",
                    "secondaryFiles": [],
                    "size": 0,
                    "class": "File"
                },
                {
                    "path": "/path/to/input_pairs-2.ext",
                    "secondaryFiles": [],
                    "size": 0,
                    "class": "File"
                }
            ],
            "outprefix": "outprefix-string-value"
        }
    },
    "stdout": "",
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1500331813,
    "sbg:createdOn": 1479143121,
    "sbg:id": "4dn-dcic/dev/merge-pairs/25",
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "class": "Expression"
                }
            },
            "id": "#output_pairs",
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.outprefix + '.pairs.gz.px2'",
                    "class": "Expression"
                }
            },
            "id": "#output_pairs_index",
            "sbg:fileTypes": "PX2",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
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
        }
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "inputs": [
        {
            "id": "#outprefix",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out"
        },
        {
            "id": "#input_pairs",
            "inputBinding": {
                "position": 2,
                "separate": true,
                "itemSeparator": " ",
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "sbg:stageInput": "copy"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/25/raw/",
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
    "description": "",
    "sbg:links": [],
    "sbg:latestRevision": 25,
    "stdin": "",
    "sbg:revision": 25,
    "sbg:createdBy": "duplexa",
    "arguments": [],
    "label": "merge-pairs",
    "sbg:project": "4dn-dcic/dev",
    "sbg:validationErrors": [],
    "sbg:image_url": null,
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:sbgMaintained": false,
    "class": "CommandLineTool"
}