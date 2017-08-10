{
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
    "sbg:validationErrors": [],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 4000
        },
        "inputs": {
            "input_pairs": [
                {
                    "class": "File",
                    "size": 0,
                    "secondaryFiles": [],
                    "path": "/path/to/input_pairs-1.ext"
                },
                {
                    "class": "File",
                    "size": 0,
                    "secondaryFiles": [],
                    "path": "/path/to/input_pairs-2.ext"
                }
            ],
            "outprefix": "outprefix-string-value"
        }
    },
    "sbg:createdOn": 1479143121,
    "sbg:links": [],
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
            "id": "#output_pairs",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.outprefix + '.pairs.gz'",
                    "class": "Expression"
                }
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#output_pairs_index",
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.outprefix + '.pairs.gz.px2'",
                    "class": "Expression"
                }
            },
            "sbg:fileTypes": "PX2",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "temporaryFailCodes": [],
    "stdin": "",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "stdout": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/25/raw/",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479143121,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479143406,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479143659,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479143834,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479143945,
            "sbg:revision": 4
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479144065,
            "sbg:revision": 5
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479144200,
            "sbg:revision": 6
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479144240,
            "sbg:revision": 7
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479144301,
            "sbg:revision": 8
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479149340,
            "sbg:revision": 9
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479149428,
            "sbg:revision": 10
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479149963,
            "sbg:revision": 11
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479155094,
            "sbg:revision": 12
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479241188,
            "sbg:revision": 13
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:modifiedOn": 1488524515,
            "sbg:revision": 14
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "pairs and index are copied not links, so that they go together.",
            "sbg:modifiedOn": 1488524641,
            "sbg:revision": 15
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "removed blank secondary file requirement",
            "sbg:modifiedOn": 1488524868,
            "sbg:revision": 16
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488525221,
            "sbg:revision": 17
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488529667,
            "sbg:revision": 18
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "removed outdir in the output glob",
            "sbg:modifiedOn": 1488531529,
            "sbg:revision": 19
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "fixed output file name",
            "sbg:modifiedOn": 1488567441,
            "sbg:revision": 20
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1490716980,
            "sbg:revision": 21
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496166568,
            "sbg:revision": 22
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496188642,
            "sbg:revision": 23
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499356728,
            "sbg:revision": 24
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500331813,
            "sbg:revision": 25
        }
    ],
    "label": "merge-pairs",
    "description": "",
    "inputs": [
        {
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#input_pairs",
            "sbg:stageInput": "copy",
            "inputBinding": {
                "separate": true,
                "itemSeparator": " ",
                "sbg:cmdInclude": true,
                "position": 2
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ]
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:modifiedOn": 1500331813,
    "sbg:projectName": "Dev",
    "successCodes": [],
    "sbg:sbgMaintained": false,
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
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "sbg:id": "4dn-dcic/dev/merge-pairs/25",
    "sbg:image_url": null,
    "sbg:revision": 25,
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "sbg:cmdPreview": "run-merge-pairs.sh",
    "sbg:latestRevision": 25,
    "sbg:project": "4dn-dcic/dev"
}