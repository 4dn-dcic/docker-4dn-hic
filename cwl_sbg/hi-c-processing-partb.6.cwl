{
    "sbg:latestRevision": 12,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "steps": [
        {
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs"
                },
                {
                    "id": "#merge_pairs.output_pairs_index"
                }
            ],
            "id": "#merge_pairs",
            "inputs": [
                {
                    "source": [
                        "#outprefix"
                    ],
                    "id": "#merge_pairs.outprefix"
                },
                {
                    "source": [
                        "#input_pairs"
                    ],
                    "id": "#merge_pairs.input_pairs"
                },
                {
                    "source": [
                        "#input_pairs_index"
                    ],
                    "id": "#merge_pairs.input_pairs_index"
                },
                {
                    "default": ".",
                    "id": "#merge_pairs.outdir"
                }
            ],
            "sbg:x": 407,
            "sbg:y": 118.65625,
            "run": {
                "sbg:latestRevision": 13,
                "stdin": "",
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:includeInPorts": true
                    },
                    {
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "File"
                            }
                        ],
                        "id": "#input_pairs",
                        "inputBinding": {
                            "secondaryFiles": [],
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "itemSeparator": " "
                        },
                        "sbg:fileTypes": "PAIRS.GZ"
                    },
                    {
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "File"
                            }
                        ],
                        "id": "#input_pairs_index",
                        "sbg:fileTypes": "PX2"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
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
                "arguments": [],
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:modifiedOn": 1479241188,
                "class": "CommandLineTool",
                "baseCommand": [
                    "run.sh"
                ],
                "label": "merge-pairs",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143121
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143406
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143659
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143834
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143945
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144065
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144200
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144240
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144301
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149340
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149428
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149963
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479155094
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1479241188
                    }
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:validationErrors": [],
                "cwlVersion": "sbg:draft-2",
                "temporaryFailCodes": [],
                "sbg:image_url": null,
                "sbg:sbgMaintained": false,
                "stdout": "",
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.outdir + '/' + $job.inputs.outprefix + '.bsorted.pairs.gz'"
                            }
                        },
                        "id": "#output_pairs"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.outdir + '/' + $job.inputs.outprefix + '.bsorted.pairs.gz.px2'"
                            }
                        },
                        "id": "#output_pairs_index"
                    }
                ],
                "sbg:revision": 13,
                "sbg:project": "4dn-dcic/dev",
                "sbg:createdOn": 1479143121,
                "sbg:id": "4dn-dcic/dev/merge-pairs/13",
                "sbg:links": [],
                "sbg:createdBy": "duplexa",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    },
                    "inputs": {
                        "input_pairs_index": [
                            {
                                "secondaryFiles": [],
                                "size": 0,
                                "class": "File",
                                "path": "/path/to/input_pairs_index-1.ext"
                            },
                            {
                                "secondaryFiles": [],
                                "size": 0,
                                "class": "File",
                                "path": "/path/to/input_pairs_index-2.ext"
                            }
                        ],
                        "input_pairs": [
                            {
                                "secondaryFiles": [],
                                "size": 0,
                                "class": "File",
                                "path": "/path/to/input_pairs-1.ext"
                            },
                            {
                                "secondaryFiles": [],
                                "size": 0,
                                "class": "File",
                                "path": "/path/to/input_pairs-2.ext"
                            }
                        ],
                        "outdir": "outdir-string-value",
                        "outprefix": "outprefix-string-value"
                    }
                },
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/13/raw/",
                "sbg:cmdPreview": "run.sh",
                "description": "",
                "successCodes": [],
                "requirements": [],
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/merge-pairs:v1"
                    },
                    {
                        "class": "ExpressionEngineRequirement",
                        "value": ""
                    }
                ]
            }
        }
    ],
    "inputs": [
        {
            "sbg:x": 69,
            "id": "#input_pairs_index",
            "sbg:fileTypes": "PX2",
            "sbg:y": 173.99716186523438,
            "label": "input_pairs_index",
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ]
        },
        {
            "sbg:x": 94,
            "id": "#input_pairs",
            "sbg:fileTypes": "PAIRS.GZ",
            "sbg:y": 309.9971618652344,
            "secondaryFiles": [],
            "label": "input_pairs",
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ]
        },
        {
            "sbg:x": 73,
            "id": "#outprefix",
            "label": "outprefix",
            "sbg:includeInPorts": true,
            "sbg:y": 39.997161865234375,
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "label": "Hi-C_processing_partB",
    "class": "Workflow",
    "description": "",
    "sbg:canvas_zoom": 1,
    "sbg:canvas_x": 3,
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144431
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144466
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479146390
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149385
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149442
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479150047
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1479241950
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 7,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530005
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 8,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530109
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 9,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530281
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 10,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530836
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 11,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530872
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 12,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488531567
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:validationErrors": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partb/6.png",
    "sbg:project": "4dn-dcic/dev",
    "outputs": [
        {
            "source": [
                "#merge_pairs.output_pairs_index"
            ],
            "sbg:x": 766,
            "id": "#output_pairs_index",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "output_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 74.99716186523438
        },
        {
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "sbg:x": 773,
            "id": "#output_pairs",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "output_pairs",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 225.99716186523438
        }
    ],
    "sbg:revision": 6,
    "sbg:sbgMaintained": false,
    "sbg:createdOn": 1479144431,
    "sbg:createdBy": "duplexa",
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partb/6",
    "sbg:canvas_y": 0,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partb/6/raw/",
    "sbg:modifiedOn": 1479241950,
    "requirements": [],
    "hints": []
}