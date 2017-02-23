{
    "sbg:job": {
        "inputs": {
            "outprefix": "outprefix-string-value",
            "input_pairs": [
                {
                    "path": "/path/to/input_pairs-1.ext",
                    "size": 0,
                    "secondaryFiles": [],
                    "class": "File"
                },
                {
                    "path": "/path/to/input_pairs-2.ext",
                    "size": 0,
                    "secondaryFiles": [],
                    "class": "File"
                }
            ],
            "outdir": "outdir-string-value",
            "input_pairs_index": [
                {
                    "path": "/path/to/input_pairs_index-1.ext",
                    "size": 0,
                    "secondaryFiles": [],
                    "class": "File"
                },
                {
                    "path": "/path/to/input_pairs_index-2.ext",
                    "size": 0,
                    "secondaryFiles": [],
                    "class": "File"
                }
            ]
        },
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        }
    },
    "description": "",
    "class": "CommandLineTool",
    "outputs": [
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.outdir + '/' + $job.inputs.outprefix + '.bsorted.pairs.gz'",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs"
        },
        {
            "outputBinding": {
                "glob": {
                    "engine": "#cwl-js-engine",
                    "script": "$job.inputs.outdir + '/' + $job.inputs.outprefix + '.bsorted.pairs.gz.px2'",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs_index"
        }
    ],
    "sbg:createdOn": 1479143121,
    "successCodes": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/13/raw/",
    "temporaryFailCodes": [],
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
        }
    ],
    "sbg:cmdPreview": "run.sh",
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
    "label": "merge-pairs",
    "arguments": [],
    "sbg:revision": 13,
    "stdin": "",
    "sbg:id": "4dn-dcic/dev/merge-pairs/13",
    "requirements": [],
    "inputs": [
        {
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            },
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#input_pairs",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "secondaryFiles": [
                    ""
                ],
                "itemSeparator": " ",
                "position": 3,
                "separate": true
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ]
        },
        {
            "id": "#input_pairs_index",
            "sbg:fileTypes": "PX2",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ]
        },
        {
            "sbg:toolDefaultValue": ".",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "id": "#outdir",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "stdout": "",
    "cwlVersion": "sbg:draft-2",
    "sbg:latestRevision": 13,
    "sbg:createdBy": "duplexa",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:links": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedBy": "4dn-dcic",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:image_url": null,
    "hints": [
        {
            "value": 1,
            "class": "sbg:CPURequirement"
        },
        {
            "value": 1000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerPull": "duplexa/merge-pairs:v1",
            "dockerImageId": "",
            "class": "DockerRequirement"
        },
        {
            "value": "",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:modifiedOn": 1479241188
}