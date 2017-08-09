{
    "class": "CommandLineTool",
    "sbg:links": [],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:latestRevision": 25,
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v26",
            "dockerImageId": ""
        },
        {
            "class": "ExpressionEngineRequirement",
            "value": ""
        }
    ],
    "sbg:validationErrors": [],
    "sbg:id": "4dn-dcic/dev/merge-pairs/25",
    "inputs": [
        {
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            }
        },
        {
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "id": "#input_pairs",
            "sbg:stageInput": "copy",
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "itemSeparator": " ",
                "separate": true
            }
        }
    ],
    "description": "",
    "sbg:createdBy": "duplexa",
    "arguments": [],
    "sbg:projectName": "Dev",
    "cwlVersion": "sbg:draft-2",
    "stdout": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/25/raw/",
    "sbg:createdOn": 1479143121,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:job": {
        "allocatedResources": {
            "mem": 4000,
            "cpu": 1
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
    "sbg:cmdPreview": "run-merge-pairs.sh",
    "label": "merge-pairs",
    "sbg:project": "4dn-dcic/dev",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "stdin": "",
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
    "successCodes": [],
    "sbg:sbgMaintained": false,
    "outputs": [
        {
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.outprefix + '.pairs.gz'"
                }
            },
            "id": "#output_pairs"
        },
        {
            "sbg:fileTypes": "PX2",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "$job.inputs.outprefix + '.pairs.gz.px2'"
                }
            },
            "id": "#output_pairs_index"
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1479143121
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1479143406
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1479143659
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1479143834
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1479143945
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1479144065
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1479144200
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1479144240
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1479144301
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 9,
            "sbg:modifiedOn": 1479149340
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 10,
            "sbg:modifiedOn": 1479149428
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 11,
            "sbg:modifiedOn": 1479149963
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 12,
            "sbg:modifiedOn": 1479155094
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 13,
            "sbg:modifiedOn": 1479241188
        },
        {
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 14,
            "sbg:modifiedOn": 1488524515
        },
        {
            "sbg:revisionNotes": "pairs and index are copied not links, so that they go together.",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 15,
            "sbg:modifiedOn": 1488524641
        },
        {
            "sbg:revisionNotes": "removed blank secondary file requirement",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 16,
            "sbg:modifiedOn": 1488524868
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 17,
            "sbg:modifiedOn": 1488525221
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 18,
            "sbg:modifiedOn": 1488529667
        },
        {
            "sbg:revisionNotes": "removed outdir in the output glob",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 19,
            "sbg:modifiedOn": 1488531529
        },
        {
            "sbg:revisionNotes": "fixed output file name",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 20,
            "sbg:modifiedOn": 1488567441
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 21,
            "sbg:modifiedOn": 1490716980
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 22,
            "sbg:modifiedOn": 1496166568
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 23,
            "sbg:modifiedOn": 1496188642
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 24,
            "sbg:modifiedOn": 1499356728
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 25,
            "sbg:modifiedOn": 1500331813
        }
    ],
    "sbg:image_url": null,
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "temporaryFailCodes": [],
    "sbg:revision": 25
}