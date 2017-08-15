{
    "sbg:revision": 6,
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "inputs": [
        {
            "id": "#input_cool",
            "label": "input_cool",
            "sbg:y": 143,
            "sbg:fileTypes": ".COOL",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 90
        },
        {
            "id": "#input_hic",
            "label": "input_hic",
            "sbg:y": 312,
            "sbg:fileTypes": ".HIC",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 91
        },
        {
            "sbg:toolDefaultValue": "4",
            "id": "#ncores",
            "required": false,
            "sbg:includeInPorts": false,
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "sbg:suggestedValue": 8
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1496182175,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1496182242,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1496190458,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1499683283,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)"
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1502649274,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "now partD and E are integrated."
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1502649307,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedOn": 1502652177,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "updated add_hic_normvector_to_mcool so it can deal with non-mcool extension input."
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedOn": 1502653559,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "replaced extract-mcool-normvector-for-juicebox workflow to the corresponding app."
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedOn": 1502712335,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "r3.2xlarge"
        }
    ],
    "steps": [
        {
            "id": "#cool2mcool",
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "run": {
                "sbg:revision": 2,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "stdout": "",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
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
                        "sbg:toolDefaultValue": "4",
                        "id": "#ncores",
                        "sbg:includeInPorts": false,
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:stageInput": null,
                        "type": [
                            "null",
                            "int"
                        ],
                        "required": false
                    },
                    {
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": ".COOL",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_cool",
                        "required": false
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1496166920,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1496167248,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1496181675,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    }
                ],
                "outputs": [
                    {
                        "sbg:fileTypes": ".COOL",
                        "outputBinding": {
                            "glob": "*.multires.cool"
                        },
                        "id": "#output_mcool",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v17"
                    }
                ],
                "sbg:createdOn": 1496166920,
                "successCodes": [],
                "sbg:validationErrors": [],
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "sbg:sbgMaintained": false,
                "description": "",
                "sbg:image_url": null,
                "arguments": [],
                "sbg:projectName": "Dev",
                "sbg:createdBy": "4dn-dcic",
                "label": "cool2mcool",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "ncores": 9,
                        "input_cool": {
                            "path": "/path/to/input_cool.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        }
                    }
                },
                "y": 160.65625,
                "sbg:modifiedOn": 1496181675,
                "cwlVersion": "sbg:draft-2",
                "x": 338,
                "sbg:project": "4dn-dcic/dev",
                "stdin": "",
                "requirements": [],
                "sbg:latestRevision": 2,
                "temporaryFailCodes": [],
                "id": "4dn-dcic/dev/cool2mcool/2",
                "sbg:id": "4dn-dcic/dev/cool2mcool/2",
                "sbg:modifiedBy": "4dn-dcic"
            },
            "sbg:y": 160.65625,
            "inputs": [
                {
                    "id": "#cool2mcool.outprefix",
                    "default": "out"
                },
                {
                    "source": [
                        "#ncores"
                    ],
                    "id": "#cool2mcool.ncores"
                },
                {
                    "source": [
                        "#input_cool"
                    ],
                    "id": "#cool2mcool.input_cool"
                }
            ],
            "sbg:x": 338
        },
        {
            "id": "#extract_mcool_normvector_for_juicebox_1",
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox_1.output_normvector"
                }
            ],
            "run": {
                "sbg:revision": 1,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:canvas_x": 0,
                "inputs": [
                    {
                        "id": "#input_mcool",
                        "label": "input_mcool",
                        "sbg:y": 171,
                        "sbg:fileTypes": "MCOOL",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "sbg:x": 89
                    }
                ],
                "steps": [
                    {
                        "id": "#extract_mcool_normvector_for_juicebox",
                        "outputs": [
                            {
                                "id": "#extract_mcool_normvector_for_juicebox.output_normvector"
                            }
                        ],
                        "run": {
                            "sbg:revision": 4,
                            "sbg:contributors": [
                                "4dn-dcic"
                            ],
                            "stdout": "",
                            "sbg:appVersion": [
                                "sbg:draft-2"
                            ],
                            "baseCommand": [
                                "run-mcool2hic.sh"
                            ],
                            "inputs": [
                                {
                                    "inputBinding": {
                                        "position": 1,
                                        "sbg:cmdInclude": true,
                                        "separate": true
                                    },
                                    "sbg:fileTypes": "MCOOL",
                                    "type": [
                                        "null",
                                        "File"
                                    ],
                                    "id": "#input_mcool"
                                },
                                {
                                    "inputBinding": {
                                        "valueFrom": {
                                            "class": "Expression",
                                            "engine": "#cwl-js-engine",
                                            "script": "\".\""
                                        },
                                        "position": 2,
                                        "sbg:cmdInclude": true,
                                        "separate": true
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
                                        "valueFrom": {
                                            "class": "Expression",
                                            "engine": "#cwl-js-engine",
                                            "script": "\"out\""
                                        },
                                        "position": 3,
                                        "sbg:cmdInclude": true,
                                        "separate": true
                                    },
                                    "sbg:toolDefaultValue": "out",
                                    "id": "#output_prefix",
                                    "type": [
                                        "null",
                                        "string"
                                    ]
                                },
                                {
                                    "id": "#nres",
                                    "sbg:stageInput": null,
                                    "sbg:toolDefaultValue": "13",
                                    "inputBinding": {
                                        "position": 4,
                                        "sbg:cmdInclude": true,
                                        "separate": true
                                    },
                                    "type": [
                                        "null",
                                        "int"
                                    ]
                                }
                            ],
                            "sbg:revisionsInfo": [
                                {
                                    "sbg:revision": 0,
                                    "sbg:modifiedOn": 1499701567,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revisionNotes": null
                                },
                                {
                                    "sbg:revision": 1,
                                    "sbg:modifiedOn": 1499701784,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revisionNotes": null
                                },
                                {
                                    "sbg:revision": 2,
                                    "sbg:modifiedOn": 1499703640,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revisionNotes": null
                                },
                                {
                                    "sbg:revision": 3,
                                    "sbg:modifiedOn": 1499704766,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revisionNotes": null
                                },
                                {
                                    "sbg:revision": 4,
                                    "sbg:modifiedOn": 1499705191,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revisionNotes": null
                                }
                            ],
                            "outputs": [
                                {
                                    "sbg:fileTypes": "GZ",
                                    "outputBinding": {
                                        "glob": "'*.juicerformat.gz'"
                                    },
                                    "id": "#output_normvector",
                                    "type": [
                                        "null",
                                        "File"
                                    ]
                                }
                            ],
                            "class": "CommandLineTool",
                            "sbg:createdOn": 1499701567,
                            "successCodes": [],
                            "sbg:validationErrors": [],
                            "sbg:cmdPreview": "run-mcool2hic.sh",
                            "sbg:sbgMaintained": false,
                            "description": "",
                            "sbg:image_url": null,
                            "arguments": [],
                            "sbg:projectName": "Dev",
                            "sbg:createdBy": "4dn-dcic",
                            "label": "extract-mcool-normvector-for-juicebox",
                            "sbg:job": {
                                "allocatedResources": {
                                    "cpu": 8,
                                    "mem": 8000
                                },
                                "inputs": {
                                    "input_mcool": {
                                        "path": "/path/to/input_mcool.ext",
                                        "class": "File",
                                        "secondaryFiles": [],
                                        "size": 0
                                    },
                                    "nres": 7,
                                    "outdir": "outdir-string-value",
                                    "output_prefix": "output_prefix-string-value"
                                }
                            },
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
                                    "dockerImageId": "",
                                    "dockerPull": "duplexa/4dn-hic:v24"
                                }
                            ],
                            "sbg:modifiedOn": 1499705191,
                            "cwlVersion": "sbg:draft-2",
                            "sbg:project": "4dn-dcic/dev",
                            "stdin": "",
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
                            "sbg:latestRevision": 4,
                            "temporaryFailCodes": [],
                            "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/extract-mcool-normvector-for-juicebox/4/raw/",
                            "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/4",
                            "sbg:modifiedBy": "4dn-dcic"
                        },
                        "sbg:y": 167,
                        "inputs": [
                            {
                                "source": [
                                    "#input_mcool"
                                ],
                                "id": "#extract_mcool_normvector_for_juicebox.input_mcool"
                            },
                            {
                                "id": "#extract_mcool_normvector_for_juicebox.outdir",
                                "default": "."
                            },
                            {
                                "id": "#extract_mcool_normvector_for_juicebox.output_prefix",
                                "default": "out"
                            },
                            {
                                "id": "#extract_mcool_normvector_for_juicebox.nres",
                                "default": 13
                            }
                        ],
                        "sbg:x": 499
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1501770707,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1501770804,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    }
                ],
                "outputs": [
                    {
                        "id": "#output_normvector",
                        "label": "output_normvector",
                        "sbg:includeInPorts": true,
                        "sbg:y": 163,
                        "type": [
                            "null",
                            "File"
                        ],
                        "source": [
                            "#extract_mcool_normvector_for_juicebox.output_normvector"
                        ],
                        "sbg:x": 923
                    }
                ],
                "class": "Workflow",
                "sbg:projectName": "Dev",
                "sbg:createdOn": 1501770707,
                "sbg:validationErrors": [],
                "sbg:sbgMaintained": false,
                "description": "",
                "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1.png",
                "sbg:canvas_zoom": 1,
                "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1",
                "sbg:createdBy": "4dn-dcic",
                "label": "extract-mcool-normvector-for-juicebox-1",
                "y": 319,
                "sbg:modifiedOn": 1501770804,
                "hints": [],
                "x": 756,
                "sbg:project": "4dn-dcic/dev",
                "id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1",
                "requirements": [],
                "sbg:latestRevision": 1,
                "cwlVersion": "sbg:draft-2",
                "sbg:canvas_y": 0,
                "sbg:modifiedBy": "4dn-dcic"
            },
            "sbg:y": 319,
            "inputs": [
                {
                    "source": [
                        "#add_hic_normvector_to_mcool.output_mcool"
                    ],
                    "id": "#extract_mcool_normvector_for_juicebox_1.input_mcool"
                }
            ],
            "sbg:x": 756
        },
        {
            "id": "#add_hic_normvector_to_mcool",
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "run": {
                "sbg:revision": 4,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "stdout": "",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "baseCommand": [
                    "run-add-hicnormvector-to-mcool.sh"
                ],
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": ".HIC",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_hic"
                    },
                    {
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": ".MCOOL",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_mcool"
                    },
                    {
                        "id": "#outdir",
                        "sbg:toolDefaultValue": ".",
                        "inputBinding": {
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "\".\""
                            },
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1499653917,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1499654479,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1499659501,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1499701134,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1502652131,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    }
                ],
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
                "class": "CommandLineTool",
                "sbg:createdOn": 1499653917,
                "successCodes": [],
                "sbg:validationErrors": [],
                "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
                "sbg:sbgMaintained": false,
                "description": "",
                "sbg:image_url": null,
                "arguments": [],
                "sbg:projectName": "Dev",
                "sbg:createdBy": "4dn-dcic",
                "label": "add_hic_normvector_to_mcool",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 8000
                    },
                    "inputs": {
                        "input_mcool": {
                            "path": "/path/to/input_mcool.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "input_hic": {
                            "path": "/path/to/input_hic.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "outdir": "outdir-string-value"
                    }
                },
                "hints": [
                    {
                        "class": "sbg:MemRequirement",
                        "value": 8000
                    },
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v33"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 4
                    }
                ],
                "sbg:modifiedOn": 1502652131,
                "cwlVersion": "sbg:draft-2",
                "sbg:project": "4dn-dcic/dev",
                "stdin": "",
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
                "sbg:latestRevision": 4,
                "temporaryFailCodes": [],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/add-hic-normvector-to-mcool/4/raw/",
                "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/4",
                "sbg:modifiedBy": "4dn-dcic"
            },
            "sbg:y": 210,
            "inputs": [
                {
                    "source": [
                        "#input_hic"
                    ],
                    "id": "#add_hic_normvector_to_mcool.input_hic"
                },
                {
                    "source": [
                        "#cool2mcool.output_mcool"
                    ],
                    "id": "#add_hic_normvector_to_mcool.input_mcool"
                },
                {
                    "id": "#add_hic_normvector_to_mcool.outdir",
                    "default": "."
                }
            ],
            "sbg:x": 560
        }
    ],
    "outputs": [
        {
            "id": "#output_mcool",
            "label": "output_mcool",
            "sbg:includeInPorts": true,
            "sbg:y": 144,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#add_hic_normvector_to_mcool.output_mcool"
            ],
            "sbg:x": 934
        },
        {
            "id": "#output_normvector",
            "label": "output_normvector",
            "sbg:includeInPorts": true,
            "sbg:y": 351,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#extract_mcool_normvector_for_juicebox_1.output_normvector"
            ],
            "sbg:x": 939
        }
    ],
    "sbg:canvas_y": 0,
    "class": "Workflow",
    "sbg:createdOn": 1496182175,
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
    "description": "",
    "sbg:revisionNotes": "updated add_hic_normvector_to_mcool so it can deal with non-mcool extension input.",
    "sbg:canvas_zoom": 1,
    "sbg:projectName": "Dev",
    "sbg:createdBy": "4dn-dcic",
    "label": "Hi-C_processing_partC",
    "hints": [],
    "sbg:modifiedOn": 1502652177,
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_x": 0,
    "sbg:project": "4dn-dcic/dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/6/raw/",
    "requirements": [],
    "sbg:latestRevision": 8,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/6",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/6.png"
}