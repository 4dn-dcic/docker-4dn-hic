{
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:canvas_zoom": 1,
    "sbg:latestRevision": 6,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partb/6/raw/",
    "cwlVersion": "sbg:draft-2",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partb/6.png",
    "sbg:revision": 6,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:createdBy": "duplexa",
    "sbg:sbgMaintained": false,
    "class": "Workflow",
    "sbg:canvas_x": 3,
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
            "inputs": [
                {
                    "id": "#merge_pairs.outprefix",
                    "source": [
                        "#outprefix"
                    ]
                },
                {
                    "id": "#merge_pairs.input_pairs",
                    "source": [
                        "#input_pairs"
                    ]
                },
                {
                    "id": "#merge_pairs.input_pairs_index",
                    "source": [
                        "#input_pairs_index"
                    ]
                },
                {
                    "id": "#merge_pairs.outdir",
                    "default": "."
                }
            ],
            "sbg:x": 407,
            "sbg:y": 118.65625,
            "id": "#merge_pairs",
            "run": {
                "stdout": "",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:latestRevision": 13,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/13/raw/",
                "cwlVersion": "sbg:draft-2",
                "sbg:modifiedOn": 1479241188,
                "successCodes": [],
                "sbg:revision": 13,
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:createdBy": "duplexa",
                "sbg:links": [],
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
                ],
                "sbg:job": {
                    "inputs": {
                        "outdir": "outdir-string-value",
                        "input_pairs_index": [
                            {
                                "class": "File",
                                "path": "/path/to/input_pairs_index-1.ext",
                                "secondaryFiles": [],
                                "size": 0
                            },
                            {
                                "class": "File",
                                "path": "/path/to/input_pairs_index-2.ext",
                                "secondaryFiles": [],
                                "size": 0
                            }
                        ],
                        "input_pairs": [
                            {
                                "class": "File",
                                "path": "/path/to/input_pairs-1.ext",
                                "secondaryFiles": [],
                                "size": 0
                            },
                            {
                                "class": "File",
                                "path": "/path/to/input_pairs-2.ext",
                                "secondaryFiles": [],
                                "size": 0
                            }
                        ],
                        "outprefix": "outprefix-string-value"
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "sbg:sbgMaintained": false,
                "class": "CommandLineTool",
                "stdin": "",
                "outputs": [
                    {
                        "id": "#output_pairs",
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
                        }
                    },
                    {
                        "id": "#output_pairs_index",
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
                        }
                    }
                ],
                "inputs": [
                    {
                        "sbg:toolDefaultValue": "out",
                        "id": "#outprefix",
                        "sbg:includeInPorts": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
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
                                "type": "array",
                                "items": "File"
                            }
                        ],
                        "sbg:fileTypes": "PAIRS.GZ",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "itemSeparator": " ",
                            "secondaryFiles": [
                                ""
                            ],
                            "separate": true
                        }
                    },
                    {
                        "id": "#input_pairs_index",
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "File"
                            }
                        ],
                        "sbg:fileTypes": "PX2"
                    },
                    {
                        "sbg:toolDefaultValue": ".",
                        "id": "#outdir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true
                        }
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1479143121,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479143406,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479143659,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479143834,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479143945,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479144065,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479144200,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479144240,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479144301,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479149340,
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479149428,
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479149963,
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479155094,
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479241188,
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    }
                ],
                "arguments": [],
                "sbg:project": "4dn-dcic/dev",
                "temporaryFailCodes": [],
                "sbg:createdOn": 1479143121,
                "sbg:cmdPreview": "run.sh",
                "sbg:validationErrors": [],
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:image_url": null,
                "description": "",
                "sbg:id": "4dn-dcic/dev/merge-pairs/13",
                "requirements": [],
                "label": "merge-pairs"
            }
        }
    ],
    "outputs": [
        {
            "id": "#output_pairs_index",
            "sbg:includeInPorts": true,
            "sbg:x": 766,
            "sbg:y": 74.99716186523438,
            "source": [
                "#merge_pairs.output_pairs_index"
            ],
            "label": "output_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "required": false
        },
        {
            "id": "#output_pairs",
            "sbg:includeInPorts": true,
            "sbg:x": 773,
            "sbg:y": 225.99716186523438,
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "label": "output_pairs",
            "type": [
                "null",
                "File"
            ],
            "required": false
        }
    ],
    "inputs": [
        {
            "id": "#input_pairs_index",
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "sbg:fileTypes": "PX2",
            "sbg:x": 69,
            "sbg:y": 173.99716186523438,
            "label": "input_pairs_index"
        },
        {
            "id": "#input_pairs",
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "sbg:fileTypes": "PAIRS.GZ",
            "sbg:x": 94,
            "sbg:y": 309.9971618652344,
            "secondaryFiles": [
                ""
            ],
            "label": "input_pairs"
        },
        {
            "id": "#outprefix",
            "sbg:includeInPorts": true,
            "sbg:x": 73,
            "sbg:y": 39.997161865234375,
            "label": "outprefix",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1479144431,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479144466,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479146390,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479149385,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479149442,
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479150047,
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479241950,
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        }
    ],
    "description": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1479144431,
    "hints": [],
    "sbg:validationErrors": [],
    "sbg:canvas_y": 0,
    "sbg:modifiedOn": 1479241950,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partb/6",
    "requirements": [],
    "label": "Hi-C_processing_partB"
}