{
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:createdBy": "4dn-dcic",
    "outputs": [
        {
            "sbg:y": 144,
            "id": "#output_mcool",
            "source": [
                "#add_hic_normvector_to_mcool.output_mcool"
            ],
            "required": false,
            "sbg:x": 934,
            "label": "output_mcool",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 351,
            "id": "#output_normvector",
            "source": [
                "#extract_mcool_normvector_for_juicebox_1.output_normvector"
            ],
            "required": false,
            "sbg:x": 939,
            "label": "output_normvector",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:createdOn": 1496182175,
    "sbg:modifiedOn": 1502652177,
    "inputs": [
        {
            "sbg:y": 143,
            "id": "#input_cool",
            "sbg:fileTypes": ".COOL",
            "sbg:x": 90,
            "label": "input_cool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 312,
            "id": "#input_hic",
            "sbg:fileTypes": ".HIC",
            "sbg:x": 91,
            "label": "input_hic",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#ncores",
            "sbg:suggestedValue": 8,
            "required": false,
            "sbg:toolDefaultValue": "4",
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "sbg:includeInPorts": false
        }
    ],
    "description": "",
    "class": "Workflow",
    "hints": [],
    "sbg:validationErrors": [],
    "sbg:revision": 6,
    "sbg:sbgMaintained": false,
    "sbg:canvas_zoom": 1,
    "sbg:project": "4dn-dcic/dev",
    "sbg:canvas_x": 0,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496182175,
            "sbg:revision": 0,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496182242,
            "sbg:revision": 1,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496190458,
            "sbg:revision": 2,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499683283,
            "sbg:revision": 3,
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502649274,
            "sbg:revision": 4,
            "sbg:revisionNotes": "now partD and E are integrated."
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502649307,
            "sbg:revision": 5,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502652177,
            "sbg:revision": 6,
            "sbg:revisionNotes": "updated add_hic_normvector_to_mcool so it can deal with non-mcool extension input."
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502653559,
            "sbg:revision": 7,
            "sbg:revisionNotes": "replaced extract-mcool-normvector-for-juicebox workflow to the corresponding app."
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502712335,
            "sbg:revision": 8,
            "sbg:revisionNotes": "r3.2xlarge"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/6/raw/",
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionNotes": "updated add_hic_normvector_to_mcool so it can deal with non-mcool extension input.",
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/6",
    "sbg:latestRevision": 8,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/6.png",
    "sbg:canvas_y": 0,
    "requirements": [],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:projectName": "Dev",
    "steps": [
        {
            "sbg:y": 160.65625,
            "inputs": [
                {
                    "default": "out",
                    "id": "#cool2mcool.outprefix"
                },
                {
                    "id": "#cool2mcool.ncores",
                    "source": [
                        "#ncores"
                    ]
                },
                {
                    "id": "#cool2mcool.input_cool",
                    "source": [
                        "#input_cool"
                    ]
                }
            ],
            "id": "#cool2mcool",
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "run": {
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:createdBy": "4dn-dcic",
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "stdin": "",
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.multires.cool"
                        },
                        "sbg:fileTypes": ".COOL",
                        "id": "#output_mcool",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:createdOn": 1496166920,
                "sbg:modifiedOn": 1496181675,
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:toolDefaultValue": "out",
                        "id": "#outprefix",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "id": "#ncores",
                        "required": false,
                        "sbg:toolDefaultValue": "4",
                        "sbg:includeInPorts": false,
                        "sbg:stageInput": null,
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": ".COOL",
                        "id": "#input_cool",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "description": "",
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "class": "CommandLineTool",
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
                        "dockerPull": "duplexa/4dn-hic:v17",
                        "dockerImageId": ""
                    }
                ],
                "sbg:validationErrors": [],
                "sbg:revision": 2,
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "x": 338,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496166920,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496167248,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496181675,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null
                    }
                ],
                "temporaryFailCodes": [],
                "id": "4dn-dcic/dev/cool2mcool/2",
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "input_cool": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/input_cool.ext"
                        },
                        "ncores": 9
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
                "arguments": [],
                "sbg:id": "4dn-dcic/dev/cool2mcool/2",
                "y": 160.65625,
                "stdout": "",
                "sbg:image_url": null,
                "requirements": [],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:projectName": "Dev",
                "sbg:latestRevision": 2,
                "successCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "label": "cool2mcool"
            },
            "sbg:x": 338
        },
        {
            "sbg:y": 319,
            "inputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox_1.input_mcool",
                    "source": [
                        "#add_hic_normvector_to_mcool.output_mcool"
                    ]
                }
            ],
            "id": "#extract_mcool_normvector_for_juicebox_1",
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox_1.output_normvector"
                }
            ],
            "run": {
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:canvas_x": 0,
                "sbg:createdBy": "4dn-dcic",
                "outputs": [
                    {
                        "sbg:y": 163,
                        "id": "#output_normvector",
                        "source": [
                            "#extract_mcool_normvector_for_juicebox.output_normvector"
                        ],
                        "sbg:x": 923,
                        "label": "output_normvector",
                        "sbg:includeInPorts": true,
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:createdOn": 1501770707,
                "sbg:modifiedOn": 1501770804,
                "inputs": [
                    {
                        "sbg:y": 171,
                        "id": "#input_mcool",
                        "sbg:fileTypes": "MCOOL",
                        "required": false,
                        "sbg:x": 89,
                        "label": "input_mcool",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "description": "",
                "class": "Workflow",
                "hints": [],
                "sbg:validationErrors": [],
                "sbg:revision": 1,
                "sbg:sbgMaintained": false,
                "sbg:canvas_zoom": 1,
                "sbg:project": "4dn-dcic/dev",
                "x": 756,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501770707,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501770804,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    }
                ],
                "id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1",
                "cwlVersion": "sbg:draft-2",
                "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1",
                "y": 319,
                "sbg:latestRevision": 1,
                "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1.png",
                "sbg:canvas_y": 0,
                "requirements": [],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:projectName": "Dev",
                "steps": [
                    {
                        "sbg:y": 167,
                        "inputs": [
                            {
                                "id": "#extract_mcool_normvector_for_juicebox.input_mcool",
                                "source": [
                                    "#input_mcool"
                                ]
                            },
                            {
                                "default": ".",
                                "id": "#extract_mcool_normvector_for_juicebox.outdir"
                            },
                            {
                                "default": "out",
                                "id": "#extract_mcool_normvector_for_juicebox.output_prefix"
                            },
                            {
                                "default": 13,
                                "id": "#extract_mcool_normvector_for_juicebox.nres"
                            }
                        ],
                        "id": "#extract_mcool_normvector_for_juicebox",
                        "outputs": [
                            {
                                "id": "#extract_mcool_normvector_for_juicebox.output_normvector"
                            }
                        ],
                        "run": {
                            "sbg:modifiedBy": "4dn-dcic",
                            "sbg:createdBy": "4dn-dcic",
                            "baseCommand": [
                                "run-mcool2hic.sh"
                            ],
                            "stdin": "",
                            "outputs": [
                                {
                                    "outputBinding": {
                                        "glob": "'*.juicerformat.gz'"
                                    },
                                    "sbg:fileTypes": "GZ",
                                    "id": "#output_normvector",
                                    "type": [
                                        "null",
                                        "File"
                                    ]
                                }
                            ],
                            "sbg:createdOn": 1499701567,
                            "sbg:modifiedOn": 1499705191,
                            "inputs": [
                                {
                                    "inputBinding": {
                                        "position": 1,
                                        "sbg:cmdInclude": true,
                                        "separate": true
                                    },
                                    "sbg:fileTypes": "MCOOL",
                                    "id": "#input_mcool",
                                    "type": [
                                        "null",
                                        "File"
                                    ]
                                },
                                {
                                    "inputBinding": {
                                        "position": 2,
                                        "separate": true,
                                        "sbg:cmdInclude": true,
                                        "valueFrom": {
                                            "class": "Expression",
                                            "engine": "#cwl-js-engine",
                                            "script": "\".\""
                                        }
                                    },
                                    "sbg:toolDefaultValue": ".",
                                    "id": "#outdir",
                                    "type": [
                                        "null",
                                        "string"
                                    ]
                                },
                                {
                                    "inputBinding": {
                                        "position": 3,
                                        "separate": true,
                                        "sbg:cmdInclude": true,
                                        "valueFrom": {
                                            "class": "Expression",
                                            "engine": "#cwl-js-engine",
                                            "script": "\"out\""
                                        }
                                    },
                                    "sbg:toolDefaultValue": "out",
                                    "id": "#output_prefix",
                                    "type": [
                                        "null",
                                        "string"
                                    ]
                                },
                                {
                                    "inputBinding": {
                                        "position": 4,
                                        "sbg:cmdInclude": true,
                                        "separate": true
                                    },
                                    "sbg:toolDefaultValue": "13",
                                    "id": "#nres",
                                    "sbg:stageInput": null,
                                    "type": [
                                        "null",
                                        "int"
                                    ]
                                }
                            ],
                            "description": "",
                            "sbg:cmdPreview": "run-mcool2hic.sh",
                            "class": "CommandLineTool",
                            "hints": [
                                {
                                    "class": "sbg:CPURequirement",
                                    "value": 8
                                },
                                {
                                    "class": "sbg:MemRequirement",
                                    "value": 8000
                                },
                                {
                                    "class": "DockerRequirement",
                                    "dockerPull": "duplexa/4dn-hic:v24",
                                    "dockerImageId": ""
                                }
                            ],
                            "sbg:validationErrors": [],
                            "sbg:revision": 4,
                            "sbg:sbgMaintained": false,
                            "sbg:project": "4dn-dcic/dev",
                            "sbg:revisionsInfo": [
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:modifiedOn": 1499701567,
                                    "sbg:revision": 0,
                                    "sbg:revisionNotes": null
                                },
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:modifiedOn": 1499701784,
                                    "sbg:revision": 1,
                                    "sbg:revisionNotes": null
                                },
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:modifiedOn": 1499703640,
                                    "sbg:revision": 2,
                                    "sbg:revisionNotes": null
                                },
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:modifiedOn": 1499704766,
                                    "sbg:revision": 3,
                                    "sbg:revisionNotes": null
                                },
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:modifiedOn": 1499705191,
                                    "sbg:revision": 4,
                                    "sbg:revisionNotes": null
                                }
                            ],
                            "temporaryFailCodes": [],
                            "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/extract-mcool-normvector-for-juicebox/4/raw/",
                            "cwlVersion": "sbg:draft-2",
                            "stdout": "",
                            "arguments": [],
                            "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/4",
                            "sbg:latestRevision": 4,
                            "sbg:image_url": null,
                            "requirements": [
                                {
                                    "class": "ExpressionEngineRequirement",
                                    "id": "#cwl-js-engine",
                                    "requirements": [
                                        {
                                            "class": "DockerRequirement",
                                            "dockerPull": "rabix/js-engine"
                                        }
                                    ]
                                }
                            ],
                            "sbg:contributors": [
                                "4dn-dcic"
                            ],
                            "sbg:projectName": "Dev",
                            "sbg:job": {
                                "inputs": {
                                    "outdir": "outdir-string-value",
                                    "input_mcool": {
                                        "class": "File",
                                        "size": 0,
                                        "secondaryFiles": [],
                                        "path": "/path/to/input_mcool.ext"
                                    },
                                    "output_prefix": "output_prefix-string-value",
                                    "nres": 7
                                },
                                "allocatedResources": {
                                    "mem": 8000,
                                    "cpu": 8
                                }
                            },
                            "successCodes": [],
                            "sbg:appVersion": [
                                "sbg:draft-2"
                            ],
                            "label": "extract-mcool-normvector-for-juicebox"
                        },
                        "sbg:x": 499
                    }
                ],
                "label": "extract-mcool-normvector-for-juicebox-1"
            },
            "sbg:x": 756
        },
        {
            "sbg:y": 210,
            "inputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.input_hic",
                    "source": [
                        "#input_hic"
                    ]
                },
                {
                    "id": "#add_hic_normvector_to_mcool.input_mcool",
                    "source": [
                        "#cool2mcool.output_mcool"
                    ]
                },
                {
                    "default": ".",
                    "id": "#add_hic_normvector_to_mcool.outdir"
                }
            ],
            "id": "#add_hic_normvector_to_mcool",
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "run": {
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:createdBy": "4dn-dcic",
                "baseCommand": [
                    "run-add-hicnormvector-to-mcool.sh"
                ],
                "stdin": "",
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "$job.inputs.outdir + '*.mcool'"
                        },
                        "id": "#output_mcool",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:createdOn": 1499653917,
                "sbg:modifiedOn": 1502652131,
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": ".HIC",
                        "id": "#input_hic",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": ".MCOOL",
                        "id": "#input_mcool",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "\".\""
                            }
                        },
                        "sbg:toolDefaultValue": ".",
                        "id": "#outdir",
                        "type": [
                            "null",
                            "string"
                        ]
                    }
                ],
                "description": "",
                "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
                "class": "CommandLineTool",
                "hints": [
                    {
                        "class": "sbg:MemRequirement",
                        "value": 8000
                    },
                    {
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v33",
                        "dockerImageId": ""
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 4
                    }
                ],
                "sbg:validationErrors": [],
                "sbg:revision": 4,
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499653917,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499654479,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499659501,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499701134,
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502652131,
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null
                    }
                ],
                "temporaryFailCodes": [],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/add-hic-normvector-to-mcool/4/raw/",
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
                        "outdir": "outdir-string-value",
                        "input_hic": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/input_hic.ext"
                        },
                        "input_mcool": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/input_mcool.ext"
                        }
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 4
                    }
                },
                "arguments": [],
                "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/4",
                "sbg:latestRevision": 4,
                "stdout": "",
                "sbg:image_url": null,
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ]
                    }
                ],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:projectName": "Dev",
                "successCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "label": "add_hic_normvector_to_mcool"
            },
            "sbg:x": 560
        }
    ],
    "label": "Hi-C_processing_partC"
}