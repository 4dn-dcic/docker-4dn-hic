{
    "sbg:canvas_y": 0,
    "sbg:canvas_x": 3,
    "inputs": [
        {
            "label": "input_pairs_index",
            "sbg:x": 69,
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "sbg:y": 173.99716186523438,
            "sbg:fileTypes": "PX2",
            "id": "#input_pairs_index"
        },
        {
            "label": "input_pairs",
            "id": "#input_pairs",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "sbg:x": 94,
            "sbg:y": 309.9971618652344,
            "sbg:fileTypes": "PAIRS.GZ",
            "secondaryFiles": [
                ""
            ]
        },
        {
            "label": "outprefix",
            "sbg:includeInPorts": true,
            "sbg:x": 73,
            "type": [
                "null",
                "string"
            ],
            "sbg:y": 39.997161865234375,
            "id": "#outprefix"
        }
    ],
    "class": "Workflow",
    "requirements": [],
    "cwlVersion": "sbg:draft-2",
    "hints": [],
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
            "sbg:x": 407,
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
            "run": {
                "inputs": [
                    {
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:includeInPorts": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "id": "#outprefix"
                    },
                    {
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "id": "#input_pairs",
                        "sbg:fileTypes": "PAIRS.GZ",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "itemSeparator": " ",
                            "separate": true,
                            "position": 3,
                            "secondaryFiles": [
                                ""
                            ]
                        }
                    },
                    {
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "sbg:fileTypes": "PX2",
                        "id": "#input_pairs_index"
                    },
                    {
                        "sbg:toolDefaultValue": ".",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        },
                        "id": "#outdir"
                    }
                ],
                "class": "CommandLineTool",
                "requirements": [],
                "sbg:links": [],
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/merge-pairs:v1",
                        "class": "DockerRequirement"
                    },
                    {
                        "value": "",
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "stdout": "",
                "arguments": [],
                "label": "merge-pairs",
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.outdir + '/' + $job.inputs.outprefix + '.bsorted.pairs.gz'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
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
                                "script": "$job.inputs.outdir + '/' + $job.inputs.outprefix + '.bsorted.pairs.gz.px2'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "id": "#output_pairs_index"
                    }
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    },
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "outdir": "outdir-string-value",
                        "input_pairs_index": [
                            {
                                "path": "/path/to/input_pairs_index-1.ext",
                                "class": "File",
                                "size": 0,
                                "secondaryFiles": []
                            },
                            {
                                "path": "/path/to/input_pairs_index-2.ext",
                                "class": "File",
                                "size": 0,
                                "secondaryFiles": []
                            }
                        ],
                        "input_pairs": [
                            {
                                "path": "/path/to/input_pairs-1.ext",
                                "class": "File",
                                "size": 0,
                                "secondaryFiles": []
                            },
                            {
                                "path": "/path/to/input_pairs-2.ext",
                                "class": "File",
                                "size": 0,
                                "secondaryFiles": []
                            }
                        ]
                    }
                },
                "sbg:validationErrors": [],
                "sbg:createdBy": "duplexa",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143121,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143406,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143659,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143834,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143945,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144065,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144200,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144240,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144301,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149340,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149428,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149963,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479155094,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1479241188,
                        "sbg:revisionNotes": null
                    }
                ],
                "sbg:image_url": null,
                "description": "",
                "sbg:project": "4dn-dcic/dev",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/13/raw/",
                "sbg:sbgMaintained": false,
                "sbg:cmdPreview": "run.sh",
                "successCodes": [],
                "sbg:modifiedOn": 1479241188,
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:createdOn": 1479143121,
                "temporaryFailCodes": [],
                "sbg:latestRevision": 13,
                "sbg:revision": 13,
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:id": "4dn-dcic/dev/merge-pairs/13",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ]
            },
            "sbg:y": 118.65625,
            "id": "#merge_pairs"
        }
    ],
    "label": "Hi-C_processing_partB",
    "outputs": [
        {
            "required": false,
            "sbg:includeInPorts": true,
            "sbg:x": 766,
            "source": [
                "#merge_pairs.output_pairs_index"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 74.99716186523438,
            "label": "output_pairs_index",
            "id": "#output_pairs_index"
        },
        {
            "required": false,
            "sbg:includeInPorts": true,
            "sbg:x": 773,
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 225.99716186523438,
            "label": "output_pairs",
            "id": "#output_pairs"
        }
    ],
    "sbg:validationErrors": [],
    "sbg:createdBy": "duplexa",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144431,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144466,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479146390,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149385,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149442,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479150047,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1479241950,
            "sbg:revisionNotes": null
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partb/6.png",
    "description": "",
    "sbg:project": "4dn-dcic/dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partb/6/raw/",
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1479241950,
    "sbg:createdOn": 1479144431,
    "sbg:latestRevision": 6,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:revision": 6,
    "sbg:canvas_zoom": 1,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partb/6",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ]
}