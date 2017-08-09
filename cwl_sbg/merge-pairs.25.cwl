{
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1479143121,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1479143406,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1479143659,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1479143834,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1479143945,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1479144065,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedOn": 1479144200,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedOn": 1479144240,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedOn": 1479144301,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedOn": 1479149340,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedOn": 1479149428,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 11,
            "sbg:modifiedOn": 1479149963,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 12,
            "sbg:modifiedOn": 1479155094,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 13,
            "sbg:modifiedOn": 1479241188,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 14,
            "sbg:modifiedOn": 1488524515,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:revision": 15,
            "sbg:modifiedOn": 1488524641,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "pairs and index are copied not links, so that they go together."
        },
        {
            "sbg:revision": 16,
            "sbg:modifiedOn": 1488524868,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "removed blank secondary file requirement"
        },
        {
            "sbg:revision": 17,
            "sbg:modifiedOn": 1488525221,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 18,
            "sbg:modifiedOn": 1488529667,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 19,
            "sbg:modifiedOn": 1488531529,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "removed outdir in the output glob"
        },
        {
            "sbg:revision": 20,
            "sbg:modifiedOn": 1488567441,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "fixed output file name"
        },
        {
            "sbg:revision": 21,
            "sbg:modifiedOn": 1490716980,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 22,
            "sbg:modifiedOn": 1496166568,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 23,
            "sbg:modifiedOn": 1496188642,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 24,
            "sbg:modifiedOn": 1499356728,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 25,
            "sbg:modifiedOn": 1500331813,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        }
    ],
    "temporaryFailCodes": [],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "out",
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:fileTypes": "PAIRS.GZ",
            "sbg:stageInput": "copy",
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true,
                "itemSeparator": " "
            },
            "id": "#input_pairs",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ]
        }
    ],
    "sbg:cmdPreview": "run-merge-pairs.sh",
    "label": "merge-pairs",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/25/raw/",
    "sbg:createdBy": "duplexa",
    "sbg:links": [],
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
                    "class": "File",
                    "size": 0
                },
                {
                    "path": "/path/to/input_pairs-2.ext",
                    "secondaryFiles": [],
                    "class": "File",
                    "size": 0
                }
            ],
            "outprefix": "outprefix-string-value"
        }
    },
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "stdin": "",
    "sbg:image_url": null,
    "sbg:project": "4dn-dcic/dev",
    "outputs": [
        {
            "sbg:fileTypes": "PAIRS.GZ",
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#output_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:fileTypes": "PX2",
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.outprefix + '.pairs.gz.px2'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#output_pairs_index",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
    "sbg:createdOn": 1479143121,
    "sbg:revision": 25,
    "sbg:modifiedBy": "4dn-dcic",
    "arguments": [],
    "description": "",
    "class": "CommandLineTool",
    "sbg:id": "4dn-dcic/dev/merge-pairs/25",
    "sbg:latestRevision": 25,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "sbg:modifiedOn": 1500331813,
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
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v26"
        },
        {
            "class": "ExpressionEngineRequirement",
            "value": ""
        }
    ],
    "successCodes": [],
    "stdout": "",
    "cwlVersion": "sbg:draft-2",
    "requirements": [
        {
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "sbg:projectName": "Dev"
}