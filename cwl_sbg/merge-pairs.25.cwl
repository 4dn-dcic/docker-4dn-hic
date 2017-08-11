{
    "sbg:cmdPreview": "run-merge-pairs.sh",
    "temporaryFailCodes": [],
    "sbg:sbgMaintained": false,
    "sbg:latestRevision": 25,
    "sbg:projectName": "Dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/25/raw/",
    "arguments": [],
    "outputs": [
        {
            "id": "#output_pairs",
            "sbg:fileTypes": "PAIRS.GZ",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#output_pairs_index",
            "sbg:fileTypes": "PX2",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.outprefix + '.pairs.gz.px2'",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "stdin": "",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 4000
        },
        "inputs": {
            "input_pairs": [
                {
                    "path": "/path/to/input_pairs-1.ext",
                    "class": "File",
                    "secondaryFiles": [],
                    "size": 0
                },
                {
                    "path": "/path/to/input_pairs-2.ext",
                    "class": "File",
                    "secondaryFiles": [],
                    "size": 0
                }
            ],
            "outprefix": "outprefix-string-value"
        }
    },
    "sbg:image_url": null,
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
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/4dn-hic:v26"
        },
        {
            "value": "",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:id": "4dn-dcic/dev/merge-pairs/25",
    "sbg:validationErrors": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "class": "CommandLineTool",
    "cwlVersion": "sbg:draft-2",
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
            "id": "#input_pairs",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2,
                "itemSeparator": " "
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "sbg:stageInput": "copy"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "description": "",
    "sbg:links": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1479143121,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1479143406,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1479143659,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1479143834,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1479143945,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1479144065,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1479144200,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1479144240,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1479144301,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 9,
            "sbg:modifiedOn": 1479149340,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 10,
            "sbg:modifiedOn": 1479149428,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 11,
            "sbg:modifiedOn": 1479149963,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 12,
            "sbg:modifiedOn": 1479155094,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 13,
            "sbg:modifiedOn": 1479241188,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 14,
            "sbg:modifiedOn": 1488524515,
            "sbg:revisionNotes": "now using 4dn-hic docker image"
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 15,
            "sbg:modifiedOn": 1488524641,
            "sbg:revisionNotes": "pairs and index are copied not links, so that they go together."
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 16,
            "sbg:modifiedOn": 1488524868,
            "sbg:revisionNotes": "removed blank secondary file requirement"
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 17,
            "sbg:modifiedOn": 1488525221,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 18,
            "sbg:modifiedOn": 1488529667,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 19,
            "sbg:modifiedOn": 1488531529,
            "sbg:revisionNotes": "removed outdir in the output glob"
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 20,
            "sbg:modifiedOn": 1488567441,
            "sbg:revisionNotes": "fixed output file name"
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 21,
            "sbg:modifiedOn": 1490716980,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 22,
            "sbg:modifiedOn": 1496166568,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 23,
            "sbg:modifiedOn": 1496188642,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 24,
            "sbg:modifiedOn": 1499356728,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 25,
            "sbg:modifiedOn": 1500331813,
            "sbg:revisionNotes": null
        }
    ],
    "sbg:modifiedOn": 1500331813,
    "sbg:revision": 25,
    "sbg:createdBy": "duplexa",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:createdOn": 1479143121,
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ]
        }
    ],
    "stdout": "",
    "sbg:modifiedBy": "4dn-dcic",
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "label": "merge-pairs",
    "successCodes": []
}