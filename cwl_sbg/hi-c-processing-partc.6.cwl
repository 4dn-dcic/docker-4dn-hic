{
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/6.png",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 90,
            "label": "input_cool",
            "sbg:fileTypes": ".COOL",
            "id": "#input_cool",
            "sbg:y": 143
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 91,
            "label": "input_hic",
            "sbg:fileTypes": ".HIC",
            "id": "#input_hic",
            "sbg:y": 312
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:suggestedValue": 8,
            "sbg:includeInPorts": false,
            "id": "#ncores",
            "required": false,
            "sbg:toolDefaultValue": "4",
            "sbg:stageInput": null
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1502652177,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/6",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1496182175,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1496182242,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1496190458,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedOn": 1499683283,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)",
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1502649274,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "now partD and E are integrated.",
            "sbg:revision": 4
        },
        {
            "sbg:modifiedOn": 1502649307,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 5
        },
        {
            "sbg:modifiedOn": 1502652177,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "updated add_hic_normvector_to_mcool so it can deal with non-mcool extension input.",
            "sbg:revision": 6
        },
        {
            "sbg:modifiedOn": 1502653559,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "replaced extract-mcool-normvector-for-juicebox workflow to the corresponding app.",
            "sbg:revision": 7
        },
        {
            "sbg:modifiedOn": 1502712335,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "r3.2xlarge",
            "sbg:revision": 8
        }
    ],
    "outputs": [
        {
            "sbg:y": 144,
            "source": [
                "#add_hic_normvector_to_mcool.output_mcool"
            ],
            "label": "output_mcool",
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 934,
            "id": "#output_mcool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 351,
            "source": [
                "#extract_mcool_normvector_for_juicebox_1.output_normvector"
            ],
            "label": "output_normvector",
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 939,
            "id": "#output_normvector",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "steps": [
        {
            "run": {
                "temporaryFailCodes": [],
                "sbg:image_url": null,
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "id": "#outprefix",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out"
                    },
                    {
                        "id": "#ncores",
                        "sbg:includeInPorts": false,
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "4",
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "required": false,
                        "sbg:stageInput": null
                    },
                    {
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "required": false,
                        "sbg:fileTypes": ".COOL",
                        "id": "#input_cool",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:modifiedOn": 1496181675,
                "sbg:id": "4dn-dcic/dev/cool2mcool/2",
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
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    },
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "input_cool": {
                            "size": 0,
                            "path": "/path/to/input_cool.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "ncores": 9
                    }
                },
                "arguments": [],
                "sbg:sbgMaintained": false,
                "sbg:latestRevision": 2,
                "label": "cool2mcool",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1496166920,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1496167248,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedOn": 1496181675,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2
                    }
                ],
                "y": 160.65625,
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
                        "dockerPull": "duplexa/4dn-hic:v17",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:project": "4dn-dcic/dev",
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "sbg:createdBy": "4dn-dcic",
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "stdin": "",
                "stdout": "",
                "successCodes": [],
                "sbg:projectName": "Dev",
                "sbg:revision": 2,
                "sbg:validationErrors": [],
                "sbg:createdOn": 1496166920,
                "x": 338,
                "description": "",
                "requirements": [],
                "sbg:modifiedBy": "4dn-dcic",
                "id": "4dn-dcic/dev/cool2mcool/2",
                "class": "CommandLineTool"
            },
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
            "sbg:x": 338,
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "id": "#cool2mcool"
        },
        {
            "run": {
                "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1.png",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:x": 89,
                        "label": "input_mcool",
                        "required": false,
                        "sbg:fileTypes": "MCOOL",
                        "id": "#input_mcool",
                        "sbg:y": 171
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:modifiedOn": 1501770804,
                "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1",
                "outputs": [
                    {
                        "sbg:y": 163,
                        "source": [
                            "#extract_mcool_normvector_for_juicebox.output_normvector"
                        ],
                        "label": "output_normvector",
                        "sbg:includeInPorts": true,
                        "sbg:x": 923,
                        "id": "#output_normvector",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "steps": [
                    {
                        "run": {
                            "temporaryFailCodes": [],
                            "sbg:image_url": null,
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
                                        "sbg:cmdInclude": true,
                                        "separate": true,
                                        "valueFrom": {
                                            "engine": "#cwl-js-engine",
                                            "script": "\".\"",
                                            "class": "Expression"
                                        }
                                    },
                                    "id": "#outdir",
                                    "type": [
                                        "null",
                                        "string"
                                    ],
                                    "sbg:toolDefaultValue": "."
                                },
                                {
                                    "inputBinding": {
                                        "position": 3,
                                        "sbg:cmdInclude": true,
                                        "separate": true,
                                        "valueFrom": {
                                            "engine": "#cwl-js-engine",
                                            "script": "\"out\"",
                                            "class": "Expression"
                                        }
                                    },
                                    "id": "#output_prefix",
                                    "type": [
                                        "null",
                                        "string"
                                    ],
                                    "sbg:toolDefaultValue": "out"
                                },
                                {
                                    "id": "#nres",
                                    "inputBinding": {
                                        "position": 4,
                                        "sbg:cmdInclude": true,
                                        "separate": true
                                    },
                                    "sbg:stageInput": null,
                                    "type": [
                                        "null",
                                        "int"
                                    ],
                                    "sbg:toolDefaultValue": "13"
                                }
                            ],
                            "sbg:appVersion": [
                                "sbg:draft-2"
                            ],
                            "sbg:modifiedOn": 1499705191,
                            "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/4",
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
                            "cwlVersion": "sbg:draft-2",
                            "sbg:job": {
                                "allocatedResources": {
                                    "mem": 8000,
                                    "cpu": 8
                                },
                                "inputs": {
                                    "nres": 7,
                                    "input_mcool": {
                                        "size": 0,
                                        "path": "/path/to/input_mcool.ext",
                                        "class": "File",
                                        "secondaryFiles": []
                                    },
                                    "outdir": "outdir-string-value",
                                    "output_prefix": "output_prefix-string-value"
                                }
                            },
                            "arguments": [],
                            "sbg:sbgMaintained": false,
                            "label": "extract-mcool-normvector-for-juicebox",
                            "sbg:contributors": [
                                "4dn-dcic"
                            ],
                            "sbg:revisionsInfo": [
                                {
                                    "sbg:modifiedOn": 1499701567,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revisionNotes": null,
                                    "sbg:revision": 0
                                },
                                {
                                    "sbg:modifiedOn": 1499701784,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revisionNotes": null,
                                    "sbg:revision": 1
                                },
                                {
                                    "sbg:modifiedOn": 1499703640,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revisionNotes": null,
                                    "sbg:revision": 2
                                },
                                {
                                    "sbg:modifiedOn": 1499704766,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revisionNotes": null,
                                    "sbg:revision": 3
                                },
                                {
                                    "sbg:modifiedOn": 1499705191,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revisionNotes": null,
                                    "sbg:revision": 4
                                }
                            ],
                            "hints": [
                                {
                                    "value": 8,
                                    "class": "sbg:CPURequirement"
                                },
                                {
                                    "value": 8000,
                                    "class": "sbg:MemRequirement"
                                },
                                {
                                    "dockerImageId": "",
                                    "dockerPull": "duplexa/4dn-hic:v24",
                                    "class": "DockerRequirement"
                                }
                            ],
                            "sbg:project": "4dn-dcic/dev",
                            "baseCommand": [
                                "run-mcool2hic.sh"
                            ],
                            "sbg:createdBy": "4dn-dcic",
                            "sbg:cmdPreview": "run-mcool2hic.sh",
                            "stdin": "",
                            "stdout": "",
                            "successCodes": [],
                            "sbg:projectName": "Dev",
                            "sbg:revision": 4,
                            "sbg:validationErrors": [],
                            "sbg:createdOn": 1499701567,
                            "sbg:latestRevision": 4,
                            "description": "",
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
                            "sbg:modifiedBy": "4dn-dcic",
                            "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/extract-mcool-normvector-for-juicebox/4/raw/",
                            "class": "CommandLineTool"
                        },
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
                        "sbg:x": 499,
                        "outputs": [
                            {
                                "id": "#extract_mcool_normvector_for_juicebox.output_normvector"
                            }
                        ],
                        "id": "#extract_mcool_normvector_for_juicebox"
                    }
                ],
                "sbg:sbgMaintained": false,
                "label": "extract-mcool-normvector-for-juicebox-1",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1501770707,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1501770804,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1
                    }
                ],
                "y": 319,
                "hints": [],
                "sbg:canvas_zoom": 1,
                "sbg:project": "4dn-dcic/dev",
                "sbg:createdBy": "4dn-dcic",
                "sbg:createdOn": 1501770707,
                "sbg:revision": 1,
                "sbg:validationErrors": [],
                "sbg:projectName": "Dev",
                "sbg:latestRevision": 1,
                "requirements": [],
                "sbg:canvas_x": 0,
                "sbg:canvas_y": 0,
                "description": "",
                "sbg:modifiedBy": "4dn-dcic",
                "x": 756,
                "id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1",
                "class": "Workflow"
            },
            "sbg:y": 319,
            "inputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox_1.input_mcool",
                    "source": [
                        "#add_hic_normvector_to_mcool.output_mcool"
                    ]
                }
            ],
            "sbg:x": 756,
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox_1.output_normvector"
                }
            ],
            "id": "#extract_mcool_normvector_for_juicebox_1"
        },
        {
            "run": {
                "temporaryFailCodes": [],
                "sbg:image_url": null,
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
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "\".\"",
                                "class": "Expression"
                            }
                        },
                        "id": "#outdir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "."
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:modifiedOn": 1502652131,
                "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/4",
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
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 4
                    },
                    "inputs": {
                        "outdir": "outdir-string-value",
                        "input_mcool": {
                            "size": 0,
                            "path": "/path/to/input_mcool.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "input_hic": {
                            "size": 0,
                            "path": "/path/to/input_hic.ext",
                            "class": "File",
                            "secondaryFiles": []
                        }
                    }
                },
                "arguments": [],
                "sbg:sbgMaintained": false,
                "label": "add_hic_normvector_to_mcool",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1499653917,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1499654479,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedOn": 1499659501,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedOn": 1499701134,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedOn": 1502652131,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4
                    }
                ],
                "hints": [
                    {
                        "value": 8000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v33",
                        "class": "DockerRequirement"
                    },
                    {
                        "value": 4,
                        "class": "sbg:CPURequirement"
                    }
                ],
                "sbg:project": "4dn-dcic/dev",
                "baseCommand": [
                    "run-add-hicnormvector-to-mcool.sh"
                ],
                "sbg:createdBy": "4dn-dcic",
                "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
                "stdin": "",
                "stdout": "",
                "successCodes": [],
                "sbg:projectName": "Dev",
                "sbg:revision": 4,
                "sbg:validationErrors": [],
                "sbg:createdOn": 1499653917,
                "sbg:latestRevision": 4,
                "description": "",
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
                "sbg:modifiedBy": "4dn-dcic",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/add-hic-normvector-to-mcool/4/raw/",
                "class": "CommandLineTool"
            },
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
            "sbg:x": 560,
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "id": "#add_hic_normvector_to_mcool"
        }
    ],
    "sbg:sbgMaintained": false,
    "label": "Hi-C_processing_partC",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:revisionNotes": "updated add_hic_normvector_to_mcool so it can deal with non-mcool extension input.",
    "hints": [],
    "sbg:canvas_zoom": 1,
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdBy": "4dn-dcic",
    "sbg:createdOn": 1496182175,
    "sbg:revision": 6,
    "sbg:validationErrors": [],
    "sbg:projectName": "Dev",
    "sbg:latestRevision": 8,
    "requirements": [],
    "sbg:canvas_x": 0,
    "sbg:canvas_y": 0,
    "description": "",
    "sbg:modifiedBy": "4dn-dcic",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/6/raw/",
    "class": "Workflow"
}