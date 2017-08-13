{
    "sbg:projectName": "Dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/6/raw/",
    "sbg:latestRevision": 6,
    "sbg:validationErrors": [],
    "requirements": [],
    "sbg:canvas_zoom": 1,
    "steps": [
        {
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "run": {
                "sbg:projectName": "Dev",
                "id": "4dn-dcic/dev/cool2mcool/2",
                "sbg:latestRevision": 2,
                "sbg:validationErrors": [],
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "requirements": [],
                "successCodes": [],
                "sbg:image_url": null,
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "cwlVersion": "sbg:draft-2",
                "y": 160.65625,
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "sbg:modifiedBy": "4dn-dcic",
                "inputs": [
                    {
                        "sbg:toolDefaultValue": "out",
                        "id": "#outprefix",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "required": false,
                        "sbg:toolDefaultValue": "4",
                        "id": "#ncores",
                        "sbg:includeInPorts": false
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_cool",
                        "sbg:fileTypes": ".COOL"
                    }
                ],
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.multires.cool"
                        },
                        "id": "#output_mcool",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".COOL"
                    }
                ],
                "sbg:revision": 2,
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
                        "dockerPull": "duplexa/4dn-hic:v17",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    }
                ],
                "class": "CommandLineTool",
                "sbg:createdOn": 1496166920,
                "arguments": [],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "ncores": 9,
                        "input_cool": {
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/input_cool.ext"
                        }
                    }
                },
                "sbg:id": "4dn-dcic/dev/cool2mcool/2",
                "sbg:modifiedOn": 1496181675,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "label": "cool2mcool",
                "temporaryFailCodes": [],
                "stdin": "",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "x": 338,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1496166920
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1496167248
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1496181675
                    }
                ],
                "stdout": "",
                "description": "",
                "sbg:createdBy": "4dn-dcic"
            },
            "inputs": [
                {
                    "id": "#cool2mcool.outprefix",
                    "default": "out"
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
            "sbg:y": 160.65625,
            "id": "#cool2mcool",
            "sbg:x": 338
        },
        {
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox_1.output_normvector"
                }
            ],
            "run": {
                "sbg:projectName": "Dev",
                "id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1",
                "sbg:latestRevision": 1,
                "sbg:validationErrors": [],
                "requirements": [],
                "sbg:canvas_zoom": 1,
                "steps": [
                    {
                        "outputs": [
                            {
                                "id": "#extract_mcool_normvector_for_juicebox.output_normvector"
                            }
                        ],
                        "run": {
                            "sbg:projectName": "Dev",
                            "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/extract-mcool-normvector-for-juicebox/4/raw/",
                            "sbg:latestRevision": 4,
                            "sbg:validationErrors": [],
                            "requirements": [
                                {
                                    "id": "#cwl-js-engine",
                                    "requirements": [
                                        {
                                            "dockerPull": "rabix/js-engine",
                                            "class": "DockerRequirement"
                                        }
                                    ],
                                    "class": "ExpressionEngineRequirement"
                                }
                            ],
                            "sbg:image_url": null,
                            "sbg:cmdPreview": "run-mcool2hic.sh",
                            "cwlVersion": "sbg:draft-2",
                            "sbg:appVersion": [
                                "sbg:draft-2"
                            ],
                            "baseCommand": [
                                "run-mcool2hic.sh"
                            ],
                            "sbg:project": "4dn-dcic/dev",
                            "sbg:modifiedBy": "4dn-dcic",
                            "inputs": [
                                {
                                    "inputBinding": {
                                        "position": 1,
                                        "sbg:cmdInclude": true,
                                        "separate": true
                                    },
                                    "id": "#input_mcool",
                                    "type": [
                                        "null",
                                        "File"
                                    ],
                                    "sbg:fileTypes": "MCOOL"
                                },
                                {
                                    "sbg:toolDefaultValue": ".",
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
                                    "type": [
                                        "null",
                                        "string"
                                    ],
                                    "id": "#outdir"
                                },
                                {
                                    "sbg:toolDefaultValue": "out",
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
                                    "type": [
                                        "null",
                                        "string"
                                    ],
                                    "id": "#output_prefix"
                                },
                                {
                                    "sbg:stageInput": null,
                                    "inputBinding": {
                                        "position": 4,
                                        "sbg:cmdInclude": true,
                                        "separate": true
                                    },
                                    "type": [
                                        "null",
                                        "int"
                                    ],
                                    "id": "#nres",
                                    "sbg:toolDefaultValue": "13"
                                }
                            ],
                            "outputs": [
                                {
                                    "outputBinding": {
                                        "glob": "'*.juicerformat.gz'"
                                    },
                                    "id": "#output_normvector",
                                    "type": [
                                        "null",
                                        "File"
                                    ],
                                    "sbg:fileTypes": "GZ"
                                }
                            ],
                            "sbg:revision": 4,
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
                                    "dockerPull": "duplexa/4dn-hic:v24",
                                    "dockerImageId": "",
                                    "class": "DockerRequirement"
                                }
                            ],
                            "class": "CommandLineTool",
                            "sbg:sbgMaintained": false,
                            "arguments": [],
                            "stdout": "",
                            "sbg:job": {
                                "allocatedResources": {
                                    "cpu": 8,
                                    "mem": 8000
                                },
                                "inputs": {
                                    "outdir": "outdir-string-value",
                                    "input_mcool": {
                                        "secondaryFiles": [],
                                        "size": 0,
                                        "class": "File",
                                        "path": "/path/to/input_mcool.ext"
                                    },
                                    "output_prefix": "output_prefix-string-value",
                                    "nres": 7
                                }
                            },
                            "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/4",
                            "sbg:modifiedOn": 1499705191,
                            "successCodes": [],
                            "label": "extract-mcool-normvector-for-juicebox",
                            "temporaryFailCodes": [],
                            "stdin": "",
                            "sbg:contributors": [
                                "4dn-dcic"
                            ],
                            "sbg:revisionsInfo": [
                                {
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 0,
                                    "sbg:modifiedOn": 1499701567
                                },
                                {
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 1,
                                    "sbg:modifiedOn": 1499701784
                                },
                                {
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 2,
                                    "sbg:modifiedOn": 1499703640
                                },
                                {
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 3,
                                    "sbg:modifiedOn": 1499704766
                                },
                                {
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 4,
                                    "sbg:modifiedOn": 1499705191
                                }
                            ],
                            "sbg:createdOn": 1499701567,
                            "description": "",
                            "sbg:createdBy": "4dn-dcic"
                        },
                        "inputs": [
                            {
                                "id": "#extract_mcool_normvector_for_juicebox.input_mcool",
                                "source": [
                                    "#input_mcool"
                                ]
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
                        "sbg:y": 167,
                        "id": "#extract_mcool_normvector_for_juicebox",
                        "sbg:x": 499
                    }
                ],
                "inputs": [
                    {
                        "label": "input_mcool",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:x": 89,
                        "sbg:y": 171,
                        "required": false,
                        "id": "#input_mcool",
                        "sbg:fileTypes": "MCOOL"
                    }
                ],
                "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1.png",
                "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1",
                "cwlVersion": "sbg:draft-2",
                "sbg:canvas_y": 0,
                "hints": [],
                "y": 319,
                "sbg:project": "4dn-dcic/dev",
                "sbg:modifiedOn": 1501770804,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1501770707
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1501770804
                    }
                ],
                "outputs": [
                    {
                        "label": "output_normvector",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:x": 923,
                        "sbg:y": 163,
                        "source": [
                            "#extract_mcool_normvector_for_juicebox.output_normvector"
                        ],
                        "id": "#output_normvector",
                        "sbg:includeInPorts": true
                    }
                ],
                "sbg:revision": 1,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "class": "Workflow",
                "sbg:sbgMaintained": false,
                "sbg:canvas_x": 0,
                "sbg:modifiedBy": "4dn-dcic",
                "label": "extract-mcool-normvector-for-juicebox-1",
                "sbg:createdBy": "4dn-dcic",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "x": 756,
                "sbg:createdOn": 1501770707,
                "description": ""
            },
            "inputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox_1.input_mcool",
                    "source": [
                        "#add_hic_normvector_to_mcool.output_mcool"
                    ]
                }
            ],
            "sbg:y": 319,
            "id": "#extract_mcool_normvector_for_juicebox_1",
            "sbg:x": 756
        },
        {
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "run": {
                "sbg:projectName": "Dev",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/add-hic-normvector-to-mcool/4/raw/",
                "sbg:latestRevision": 4,
                "sbg:validationErrors": [],
                "baseCommand": [
                    "run-add-hicnormvector-to-mcool.sh"
                ],
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "sbg:image_url": null,
                "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
                "cwlVersion": "sbg:draft-2",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "sbg:modifiedBy": "4dn-dcic",
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_hic",
                        "sbg:fileTypes": ".HIC"
                    },
                    {
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_mcool",
                        "sbg:fileTypes": ".MCOOL"
                    },
                    {
                        "sbg:toolDefaultValue": ".",
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
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outdir"
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
                "sbg:revision": 4,
                "hints": [
                    {
                        "class": "sbg:MemRequirement",
                        "value": 8000
                    },
                    {
                        "dockerPull": "duplexa/4dn-hic:v33",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 4
                    }
                ],
                "class": "CommandLineTool",
                "sbg:createdOn": 1499653917,
                "arguments": [],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 8000
                    },
                    "inputs": {
                        "input_hic": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_hic.ext",
                            "class": "File"
                        },
                        "outdir": "outdir-string-value",
                        "input_mcool": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_mcool.ext",
                            "class": "File"
                        }
                    }
                },
                "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/4",
                "sbg:modifiedOn": 1502652131,
                "successCodes": [],
                "label": "add_hic_normvector_to_mcool",
                "temporaryFailCodes": [],
                "stdin": "",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1499653917
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1499654479
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1499659501
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1499701134
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1502652131
                    }
                ],
                "stdout": "",
                "description": "",
                "sbg:createdBy": "4dn-dcic"
            },
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
                    "id": "#add_hic_normvector_to_mcool.outdir",
                    "default": "."
                }
            ],
            "sbg:y": 210,
            "id": "#add_hic_normvector_to_mcool",
            "sbg:x": 560
        }
    ],
    "sbg:revisionNotes": "updated add_hic_normvector_to_mcool so it can deal with non-mcool extension input.",
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/6",
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_y": 0,
    "hints": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedOn": 1502652177,
    "inputs": [
        {
            "label": "input_cool",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 90,
            "sbg:y": 143,
            "sbg:fileTypes": ".COOL",
            "id": "#input_cool"
        },
        {
            "label": "input_hic",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 91,
            "sbg:y": 312,
            "sbg:fileTypes": ".HIC",
            "id": "#input_hic"
        },
        {
            "sbg:stageInput": null,
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ],
            "sbg:suggestedValue": 8,
            "required": false,
            "sbg:toolDefaultValue": "4",
            "sbg:includeInPorts": false
        }
    ],
    "outputs": [
        {
            "label": "output_mcool",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 934,
            "sbg:y": 144,
            "required": false,
            "source": [
                "#add_hic_normvector_to_mcool.output_mcool"
            ],
            "id": "#output_mcool",
            "sbg:includeInPorts": true
        },
        {
            "label": "output_normvector",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 939,
            "sbg:y": 351,
            "required": false,
            "source": [
                "#extract_mcool_normvector_for_juicebox_1.output_normvector"
            ],
            "id": "#output_normvector",
            "sbg:includeInPorts": true
        }
    ],
    "sbg:revision": 6,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "class": "Workflow",
    "sbg:sbgMaintained": false,
    "sbg:canvas_x": 0,
    "sbg:modifiedBy": "4dn-dcic",
    "label": "Hi-C_processing_partC",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/6.png",
    "sbg:createdBy": "4dn-dcic",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1496182175
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1496182242
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1496190458
        },
        {
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1499683283
        },
        {
            "sbg:revisionNotes": "now partD and E are integrated.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1502649274
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1502649307
        },
        {
            "sbg:revisionNotes": "updated add_hic_normvector_to_mcool so it can deal with non-mcool extension input.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1502652177
        }
    ],
    "sbg:createdOn": 1496182175,
    "description": ""
}