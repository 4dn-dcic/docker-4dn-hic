{
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:revisionNotes": "docker v35",
    "description": "",
    "sbg:id": "4dn-dcic/dev/merge-pairs/30",
    "inputs": [
        {
            "sbg:toolDefaultValue": "out",
            "id": "#outprefix",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#input_pairs",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "inputBinding": {
                "itemSeparator": " ",
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "sbg:stageInput": "copy"
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:revision": 30,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:createdOn": 1479143121,
    "sbg:createdBy": "duplexa",
    "stdin": "",
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
        },
        {
            "sbg:revisionNotes": "pairs index as a secondary file to pairs output instead of a separate output item.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 26,
            "sbg:modifiedOn": 1502829840
        },
        {
            "sbg:revisionNotes": "modified expression for secondary output file for pairs index",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 27,
            "sbg:modifiedOn": 1502830223
        },
        {
            "sbg:revisionNotes": "output secondary file now just '.px2'",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 28,
            "sbg:modifiedOn": 1502834121
        },
        {
            "sbg:revisionNotes": "docker v34",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 29,
            "sbg:modifiedOn": 1503000458
        },
        {
            "sbg:revisionNotes": "docker v35",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 30,
            "sbg:modifiedOn": 1503089840
        }
    ],
    "sbg:links": [],
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
    "stdout": "",
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "successCodes": [],
    "sbg:project": "4dn-dcic/dev",
    "class": "CommandLineTool",
    "sbg:modifiedOn": 1503089840,
    "label": "merge-pairs",
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
                "secondaryFiles": [
                    ".px2"
                ],
                "glob": {
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            }
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:latestRevision": 30,
    "sbg:cmdPreview": "run-merge-pairs.sh",
    "sbg:projectName": "Dev",
    "sbg:image_url": null,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "temporaryFailCodes": [],
    "sbg:job": {
        "inputs": {
            "input_pairs": [
                {
                    "path": "/path/to/input_pairs-1.ext",
                    "size": 0,
                    "class": "File",
                    "secondaryFiles": []
                },
                {
                    "path": "/path/to/input_pairs-2.ext",
                    "size": 0,
                    "class": "File",
                    "secondaryFiles": []
                }
            ],
            "outprefix": "outprefix-string-value"
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 4000
        }
    },
    "sbg:validationErrors": [],
    "arguments": []
}