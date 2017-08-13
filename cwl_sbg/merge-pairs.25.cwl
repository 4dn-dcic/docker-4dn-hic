{
    "sbg:revision": 25,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:sbgMaintained": false,
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479143121
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479143406
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479143659
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479143834
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479143945
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479144065
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479144200
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479144240
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479144301
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479149340
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479149428
        },
        {
            "sbg:revision": 11,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479149963
        },
        {
            "sbg:revision": 12,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479155094
        },
        {
            "sbg:revision": 13,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479241188
        },
        {
            "sbg:revision": 14,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedOn": 1488524515
        },
        {
            "sbg:revision": 15,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "pairs and index are copied not links, so that they go together.",
            "sbg:modifiedOn": 1488524641
        },
        {
            "sbg:revision": 16,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "removed blank secondary file requirement",
            "sbg:modifiedOn": 1488524868
        },
        {
            "sbg:revision": 17,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488525221
        },
        {
            "sbg:revision": 18,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488529667
        },
        {
            "sbg:revision": 19,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "removed outdir in the output glob",
            "sbg:modifiedOn": 1488531529
        },
        {
            "sbg:revision": 20,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "fixed output file name",
            "sbg:modifiedOn": 1488567441
        },
        {
            "sbg:revision": 21,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1490716980
        },
        {
            "sbg:revision": 22,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496166568
        },
        {
            "sbg:revision": 23,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496188642
        },
        {
            "sbg:revision": 24,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499356728
        },
        {
            "sbg:revision": 25,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500331813
        }
    ],
    "arguments": [],
    "successCodes": [],
    "description": "",
    "stdout": "",
    "sbg:createdOn": 1479143121,
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
    "sbg:id": "4dn-dcic/dev/merge-pairs/25",
    "label": "merge-pairs",
    "sbg:modifiedOn": 1500331813,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/25/raw/",
    "sbg:projectName": "Dev",
    "inputs": [
        {
            "id": "#outprefix",
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
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
                    "items": "File",
                    "type": "array"
                }
            ],
            "sbg:stageInput": "copy"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:cmdPreview": "run-merge-pairs.sh",
    "sbg:createdBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "sbg:latestRevision": 25,
    "class": "CommandLineTool",
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
            "dockerPull": "duplexa/4dn-hic:v26",
            "class": "DockerRequirement"
        },
        {
            "class": "ExpressionEngineRequirement",
            "value": ""
        }
    ],
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
    "temporaryFailCodes": [],
    "sbg:image_url": null,
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:validationErrors": [],
    "sbg:links": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "stdin": "",
    "outputs": [
        {
            "id": "#output_pairs",
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            }
        },
        {
            "id": "#output_pairs_index",
            "sbg:fileTypes": "PX2",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.outprefix + '.pairs.gz.px2'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            }
        }
    ]
}