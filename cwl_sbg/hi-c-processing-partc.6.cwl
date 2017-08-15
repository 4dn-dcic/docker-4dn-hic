{
    "sbg:sbgMaintained": false,
    "class": "Workflow",
    "hints": [],
    "sbg:canvas_x": 0,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/6.png",
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
            "run": {
                "sbg:sbgMaintained": false,
                "class": "CommandLineTool",
                "y": 160.65625,
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1496166920,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1496167248,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1496181675,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "cwlVersion": "sbg:draft-2",
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
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v17"
                    }
                ],
                "x": 338,
                "sbg:latestRevision": 2,
                "label": "cool2mcool",
                "temporaryFailCodes": [],
                "sbg:job": {
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "ncores": 9,
                        "input_cool": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_cool.ext"
                        }
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.multires.cool"
                        },
                        "sbg:fileTypes": ".COOL",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#output_mcool"
                    }
                ],
                "sbg:createdBy": "4dn-dcic",
                "stdout": "",
                "sbg:modifiedOn": 1496181675,
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix"
                    },
                    {
                        "sbg:stageInput": null,
                        "sbg:toolDefaultValue": "4",
                        "required": false,
                        "id": "#ncores",
                        "inputBinding": {
                            "separate": true,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:includeInPorts": false
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true
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
                "requirements": [],
                "stdin": "",
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "sbg:id": "4dn-dcic/dev/cool2mcool/2",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:validationErrors": [],
                "sbg:revision": 2,
                "sbg:createdOn": 1496166920,
                "id": "4dn-dcic/dev/cool2mcool/2",
                "sbg:image_url": null,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "successCodes": [],
                "description": "",
                "sbg:projectName": "Dev",
                "sbg:project": "4dn-dcic/dev",
                "arguments": []
            },
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
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
            "run": {
                "sbg:sbgMaintained": false,
                "class": "Workflow",
                "hints": [],
                "sbg:canvas_x": 0,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1501770707,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1501770804,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "cwlVersion": "sbg:draft-2",
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
                        "run": {
                            "sbg:sbgMaintained": false,
                            "class": "CommandLineTool",
                            "temporaryFailCodes": [],
                            "sbg:cmdPreview": "run-mcool2hic.sh",
                            "sbg:image_url": null,
                            "cwlVersion": "sbg:draft-2",
                            "sbg:revisionsInfo": [
                                {
                                    "sbg:revisionNotes": null,
                                    "sbg:revision": 0,
                                    "sbg:modifiedOn": 1499701567,
                                    "sbg:modifiedBy": "4dn-dcic"
                                },
                                {
                                    "sbg:revisionNotes": null,
                                    "sbg:revision": 1,
                                    "sbg:modifiedOn": 1499701784,
                                    "sbg:modifiedBy": "4dn-dcic"
                                },
                                {
                                    "sbg:revisionNotes": null,
                                    "sbg:revision": 2,
                                    "sbg:modifiedOn": 1499703640,
                                    "sbg:modifiedBy": "4dn-dcic"
                                },
                                {
                                    "sbg:revisionNotes": null,
                                    "sbg:revision": 3,
                                    "sbg:modifiedOn": 1499704766,
                                    "sbg:modifiedBy": "4dn-dcic"
                                },
                                {
                                    "sbg:revisionNotes": null,
                                    "sbg:revision": 4,
                                    "sbg:modifiedOn": 1499705191,
                                    "sbg:modifiedBy": "4dn-dcic"
                                }
                            ],
                            "baseCommand": [
                                "run-mcool2hic.sh"
                            ],
                            "sbg:modifiedBy": "4dn-dcic",
                            "label": "extract-mcool-normvector-for-juicebox",
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
                                    "class": "DockerRequirement",
                                    "dockerImageId": "",
                                    "dockerPull": "duplexa/4dn-hic:v24"
                                }
                            ],
                            "sbg:job": {
                                "inputs": {
                                    "output_prefix": "output_prefix-string-value",
                                    "input_mcool": {
                                        "secondaryFiles": [],
                                        "class": "File",
                                        "size": 0,
                                        "path": "/path/to/input_mcool.ext"
                                    },
                                    "nres": 7,
                                    "outdir": "outdir-string-value"
                                },
                                "allocatedResources": {
                                    "mem": 8000,
                                    "cpu": 8
                                }
                            },
                            "outputs": [
                                {
                                    "outputBinding": {
                                        "glob": "'*.juicerformat.gz'"
                                    },
                                    "sbg:fileTypes": "GZ",
                                    "type": [
                                        "null",
                                        "File"
                                    ],
                                    "id": "#output_normvector"
                                }
                            ],
                            "sbg:createdBy": "4dn-dcic",
                            "sbg:modifiedOn": 1499705191,
                            "inputs": [
                                {
                                    "inputBinding": {
                                        "separate": true,
                                        "position": 1,
                                        "sbg:cmdInclude": true
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
                                        "separate": true,
                                        "valueFrom": {
                                            "class": "Expression",
                                            "script": "\".\"",
                                            "engine": "#cwl-js-engine"
                                        },
                                        "sbg:cmdInclude": true,
                                        "position": 2
                                    },
                                    "sbg:toolDefaultValue": ".",
                                    "type": [
                                        "null",
                                        "string"
                                    ],
                                    "id": "#outdir"
                                },
                                {
                                    "inputBinding": {
                                        "separate": true,
                                        "valueFrom": {
                                            "class": "Expression",
                                            "script": "\"out\"",
                                            "engine": "#cwl-js-engine"
                                        },
                                        "sbg:cmdInclude": true,
                                        "position": 3
                                    },
                                    "sbg:toolDefaultValue": "out",
                                    "type": [
                                        "null",
                                        "string"
                                    ],
                                    "id": "#output_prefix"
                                },
                                {
                                    "inputBinding": {
                                        "separate": true,
                                        "position": 4,
                                        "sbg:cmdInclude": true
                                    },
                                    "sbg:stageInput": null,
                                    "sbg:toolDefaultValue": "13",
                                    "type": [
                                        "null",
                                        "int"
                                    ],
                                    "id": "#nres"
                                }
                            ],
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
                            "stdin": "",
                            "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/4",
                            "sbg:latestRevision": 4,
                            "sbg:appVersion": [
                                "sbg:draft-2"
                            ],
                            "sbg:validationErrors": [],
                            "sbg:revision": 4,
                            "sbg:createdOn": 1499701567,
                            "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/extract-mcool-normvector-for-juicebox/4/raw/",
                            "stdout": "",
                            "sbg:contributors": [
                                "4dn-dcic"
                            ],
                            "successCodes": [],
                            "description": "",
                            "sbg:projectName": "Dev",
                            "sbg:project": "4dn-dcic/dev",
                            "arguments": []
                        },
                        "outputs": [
                            {
                                "id": "#extract_mcool_normvector_for_juicebox.output_normvector"
                            }
                        ],
                        "sbg:x": 499
                    }
                ],
                "sbg:canvas_y": 0,
                "x": 756,
                "sbg:latestRevision": 1,
                "label": "extract-mcool-normvector-for-juicebox-1",
                "y": 319,
                "outputs": [
                    {
                        "sbg:y": 163,
                        "id": "#output_normvector",
                        "source": [
                            "#extract_mcool_normvector_for_juicebox.output_normvector"
                        ],
                        "label": "output_normvector",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:includeInPorts": true,
                        "sbg:x": 923
                    }
                ],
                "sbg:createdBy": "4dn-dcic",
                "inputs": [
                    {
                        "sbg:fileTypes": "MCOOL",
                        "sbg:y": 171,
                        "required": false,
                        "id": "#input_mcool",
                        "label": "input_mcool",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:x": 89
                    }
                ],
                "requirements": [],
                "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1",
                "sbg:canvas_zoom": 1,
                "sbg:createdOn": 1501770707,
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:validationErrors": [],
                "sbg:revision": 1,
                "id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1",
                "sbg:modifiedOn": 1501770804,
                "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1.png",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "description": "",
                "sbg:projectName": "Dev",
                "sbg:project": "4dn-dcic/dev"
            },
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox_1.output_normvector"
                }
            ],
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
            "run": {
                "sbg:sbgMaintained": false,
                "class": "CommandLineTool",
                "temporaryFailCodes": [],
                "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1499653917,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1499654479,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1499659501,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1499701134,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1502652131,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "baseCommand": [
                    "run-add-hicnormvector-to-mcool.sh"
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "label": "add_hic_normvector_to_mcool",
                "hints": [
                    {
                        "value": 8000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v33"
                    },
                    {
                        "value": 4,
                        "class": "sbg:CPURequirement"
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "input_mcool": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_mcool.ext"
                        },
                        "input_hic": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_hic.ext"
                        },
                        "outdir": "outdir-string-value"
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 4
                    }
                },
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "$job.inputs.outdir + '*.mcool'"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#output_mcool"
                    }
                ],
                "sbg:createdBy": "4dn-dcic",
                "stdout": "",
                "sbg:modifiedOn": 1502652131,
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true
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
                            "separate": true,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": ".MCOOL",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_mcool"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "\".\"",
                                "engine": "#cwl-js-engine"
                            },
                            "sbg:cmdInclude": true,
                            "position": 3
                        },
                        "sbg:toolDefaultValue": ".",
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outdir"
                    }
                ],
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
                "stdin": "",
                "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/4",
                "sbg:latestRevision": 4,
                "sbg:validationErrors": [],
                "sbg:revision": 4,
                "sbg:createdOn": 1499653917,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/add-hic-normvector-to-mcool/4/raw/",
                "sbg:image_url": null,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "successCodes": [],
                "description": "",
                "sbg:projectName": "Dev",
                "sbg:project": "4dn-dcic/dev",
                "arguments": []
            },
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "sbg:x": 560
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1496182175,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1496182242,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedOn": 1496190458,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1499683283,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "now partD and E are integrated.",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1502649274,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 5,
            "sbg:modifiedOn": 1502649307,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "updated add_hic_normvector_to_mcool so it can deal with non-mcool extension input.",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1502652177,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "replaced extract-mcool-normvector-for-juicebox workflow to the corresponding app.",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1502653559,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "r3.2xlarge",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1502712335,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:canvas_y": 0,
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "4dn-dcic",
    "label": "Hi-C_processing_partC",
    "sbg:revisionNotes": "updated add_hic_normvector_to_mcool so it can deal with non-mcool extension input.",
    "outputs": [
        {
            "sbg:y": 144,
            "required": false,
            "id": "#output_mcool",
            "source": [
                "#add_hic_normvector_to_mcool.output_mcool"
            ],
            "label": "output_mcool",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "sbg:x": 934
        },
        {
            "sbg:y": 351,
            "required": false,
            "id": "#output_normvector",
            "source": [
                "#extract_mcool_normvector_for_juicebox_1.output_normvector"
            ],
            "label": "output_normvector",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "sbg:x": 939
        }
    ],
    "sbg:createdBy": "4dn-dcic",
    "inputs": [
        {
            "sbg:fileTypes": ".COOL",
            "sbg:y": 143,
            "id": "#input_cool",
            "label": "input_cool",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 90
        },
        {
            "sbg:fileTypes": ".HIC",
            "sbg:y": 312,
            "id": "#input_hic",
            "label": "input_hic",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 91
        },
        {
            "sbg:stageInput": null,
            "sbg:suggestedValue": 8,
            "required": false,
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "4",
            "sbg:includeInPorts": false
        }
    ],
    "requirements": [],
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/6",
    "sbg:canvas_zoom": 1,
    "sbg:latestRevision": 8,
    "sbg:revision": 6,
    "sbg:createdOn": 1496182175,
    "sbg:modifiedOn": 1502652177,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/6/raw/",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "description": "",
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev"
}