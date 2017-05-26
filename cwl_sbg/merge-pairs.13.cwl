{
    "outputs": [
        {
            "id": "#output_pairs",
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.outdir + '/' + $job.inputs.outprefix + '.bsorted.pairs.gz'",
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
            "outputBinding": {
                "glob": {
                    "class": "Expression",
                    "script": "$job.inputs.outdir + '/' + $job.inputs.outprefix + '.bsorted.pairs.gz.px2'",
                    "engine": "#cwl-js-engine"
                }
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/13/raw/",
    "stdin": "",
    "sbg:links": [],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:cmdPreview": "run.sh",
    "label": "merge-pairs",
    "sbg:revision": 13,
    "arguments": [],
    "sbg:job": {
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        },
        "inputs": {
            "outprefix": "outprefix-string-value",
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
            "outdir": "outdir-string-value",
            "input_pairs_index": [
                {
                    "class": "File",
                    "size": 0,
                    "secondaryFiles": [],
                    "path": "/path/to/input_pairs_index-1.ext"
                },
                {
                    "class": "File",
                    "size": 0,
                    "secondaryFiles": [],
                    "path": "/path/to/input_pairs_index-2.ext"
                }
            ]
        }
    },
    "sbg:id": "4dn-dcic/dev/merge-pairs/13",
    "sbg:project": "4dn-dcic/dev",
    "sbg:image_url": null,
    "sbg:validationErrors": [],
    "sbg:createdBy": "duplexa",
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            },
            "id": "#outprefix",
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "secondaryFiles": [],
                "position": 3,
                "itemSeparator": " "
            },
            "id": "#input_pairs",
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
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "id": "#outdir",
            "sbg:toolDefaultValue": ".",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:latestRevision": 21,
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:createdOn": 1479143121,
    "hints": [
        {
            "class": "sbg:CPURequirement",
            "value": 1
        },
        {
            "class": "sbg:MemRequirement",
            "value": 1000
        },
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/merge-pairs:v1",
            "dockerImageId": ""
        },
        {
            "class": "ExpressionEngineRequirement",
            "value": ""
        }
    ],
    "requirements": [],
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
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "temporaryFailCodes": [],
    "sbg:modifiedOn": 1479241188,
    "cwlVersion": "sbg:draft-2",
    "sbg:sbgMaintained": false,
    "successCodes": [],
    "sbg:projectName": "Dev",
    "description": "",
    "stdout": "",
    "class": "CommandLineTool"
}