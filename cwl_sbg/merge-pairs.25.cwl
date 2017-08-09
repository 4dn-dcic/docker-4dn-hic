{
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "description": "",
    "outputs": [
        {
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "engine": "#cwl-js-engine"
                }
            }
        },
        {
            "sbg:fileTypes": "PX2",
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs_index",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.outprefix + '.pairs.gz.px2'",
                    "engine": "#cwl-js-engine"
                }
            }
        }
    ],
    "sbg:modifiedOn": 1500331813,
    "sbg:links": [],
    "temporaryFailCodes": [],
    "class": "CommandLineTool",
    "sbg:latestRevision": 25,
    "sbg:createdBy": "duplexa",
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "sbg:image_url": null,
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
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/4dn-hic:v26"
        },
        {
            "class": "ExpressionEngineRequirement",
            "value": ""
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1479143121,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479143406,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479143659,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479143834,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479143945,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479144065,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479144200,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 6,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479144240,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 7,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479144301,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 8,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479149340,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 9,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479149428,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 10,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479149963,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 11,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479155094,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 12,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479241188,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 13,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1488524515,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 14,
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:modifiedOn": 1488524641,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 15,
            "sbg:revisionNotes": "pairs and index are copied not links, so that they go together."
        },
        {
            "sbg:modifiedOn": 1488524868,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 16,
            "sbg:revisionNotes": "removed blank secondary file requirement"
        },
        {
            "sbg:modifiedOn": 1488525221,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 17,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1488529667,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 18,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1488531529,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 19,
            "sbg:revisionNotes": "removed outdir in the output glob"
        },
        {
            "sbg:modifiedOn": 1488567441,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 20,
            "sbg:revisionNotes": "fixed output file name"
        },
        {
            "sbg:modifiedOn": 1490716980,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 21,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1496166568,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 22,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1496188642,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 23,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1499356728,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 24,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1500331813,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 25,
            "sbg:revisionNotes": null
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:id": "4dn-dcic/dev/merge-pairs/25",
    "sbg:job": {
        "inputs": {
            "outprefix": "outprefix-string-value",
            "input_pairs": [
                {
                    "secondaryFiles": [],
                    "class": "File",
                    "path": "/path/to/input_pairs-1.ext",
                    "size": 0
                },
                {
                    "secondaryFiles": [],
                    "class": "File",
                    "path": "/path/to/input_pairs-2.ext",
                    "size": 0
                }
            ]
        },
        "allocatedResources": {
            "mem": 4000,
            "cpu": 1
        }
    },
    "sbg:cmdPreview": "run-merge-pairs.sh",
    "label": "merge-pairs",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/25/raw/",
    "sbg:revision": 25,
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1479143121,
    "inputs": [
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "sbg:toolDefaultValue": "out",
            "id": "#outprefix"
        },
        {
            "sbg:stageInput": "copy",
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "itemSeparator": " ",
                "separate": true
            },
            "id": "#input_pairs"
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
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
    "stdin": "",
    "arguments": [],
    "successCodes": [],
    "stdout": ""
}