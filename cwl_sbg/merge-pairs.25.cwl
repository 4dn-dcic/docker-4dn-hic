{
    "successCodes": [],
    "sbg:latestRevision": 25,
    "sbg:sbgMaintained": false,
    "stdin": "",
    "inputs": [
        {
            "sbg:toolDefaultValue": "out",
            "id": "#outprefix",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:fileTypes": "PAIRS.GZ",
            "id": "#input_pairs",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "itemSeparator": " ",
                "separate": true,
                "position": 2
            },
            "sbg:stageInput": "copy",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ]
        }
    ],
    "description": "",
    "temporaryFailCodes": [],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:createdOn": 1479143121,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/25/raw/",
    "label": "merge-pairs",
    "sbg:cmdPreview": "run-merge-pairs.sh",
    "sbg:image_url": null,
    "cwlVersion": "sbg:draft-2",
    "sbg:createdBy": "duplexa",
    "sbg:links": [],
    "arguments": [],
    "outputs": [
        {
            "sbg:fileTypes": "PAIRS.GZ",
            "id": "#output_pairs",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.outprefix + '.pairs.gz'"
                }
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:fileTypes": "PX2",
            "id": "#output_pairs_index",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.outprefix + '.pairs.gz.px2'"
                }
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "baseCommand": [
        "run-merge-pairs.sh"
    ],
    "sbg:modifiedOn": 1500331813,
    "sbg:projectName": "Dev",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:validationErrors": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479143121,
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479143406,
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479143659,
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479143834,
            "sbg:revisionNotes": null,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479143945,
            "sbg:revisionNotes": null,
            "sbg:revision": 4
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144065,
            "sbg:revisionNotes": null,
            "sbg:revision": 5
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144200,
            "sbg:revisionNotes": null,
            "sbg:revision": 6
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144240,
            "sbg:revisionNotes": null,
            "sbg:revision": 7
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144301,
            "sbg:revisionNotes": null,
            "sbg:revision": 8
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149340,
            "sbg:revisionNotes": null,
            "sbg:revision": 9
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149428,
            "sbg:revisionNotes": null,
            "sbg:revision": 10
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149963,
            "sbg:revisionNotes": null,
            "sbg:revision": 11
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479155094,
            "sbg:revisionNotes": null,
            "sbg:revision": 12
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1479241188,
            "sbg:revisionNotes": null,
            "sbg:revision": 13
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524515,
            "sbg:revisionNotes": "now using 4dn-hic docker image",
            "sbg:revision": 14
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524641,
            "sbg:revisionNotes": "pairs and index are copied not links, so that they go together.",
            "sbg:revision": 15
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488524868,
            "sbg:revisionNotes": "removed blank secondary file requirement",
            "sbg:revision": 16
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488525221,
            "sbg:revisionNotes": null,
            "sbg:revision": 17
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488529667,
            "sbg:revisionNotes": null,
            "sbg:revision": 18
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488531529,
            "sbg:revisionNotes": "removed outdir in the output glob",
            "sbg:revision": 19
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488567441,
            "sbg:revisionNotes": "fixed output file name",
            "sbg:revision": 20
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1490716980,
            "sbg:revisionNotes": null,
            "sbg:revision": 21
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496166568,
            "sbg:revisionNotes": null,
            "sbg:revision": 22
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496188642,
            "sbg:revisionNotes": null,
            "sbg:revision": 23
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499356728,
            "sbg:revisionNotes": null,
            "sbg:revision": 24
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500331813,
            "sbg:revisionNotes": null,
            "sbg:revision": 25
        }
    ],
    "sbg:job": {
        "inputs": {
            "input_pairs": [
                {
                    "class": "File",
                    "secondaryFiles": [],
                    "size": 0,
                    "path": "/path/to/input_pairs-1.ext"
                },
                {
                    "class": "File",
                    "secondaryFiles": [],
                    "size": 0,
                    "path": "/path/to/input_pairs-2.ext"
                }
            ],
            "outprefix": "outprefix-string-value"
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 4000
        }
    },
    "stdout": "",
    "sbg:revision": 25,
    "sbg:project": "4dn-dcic/dev",
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v26",
            "dockerImageId": ""
        },
        {
            "class": "ExpressionEngineRequirement",
            "value": ""
        }
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
    "sbg:id": "4dn-dcic/dev/merge-pairs/25"
}