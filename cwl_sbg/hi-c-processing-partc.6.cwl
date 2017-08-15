{
    "sbg:revisionNotes": "updated add_hic_normvector_to_mcool so it can deal with non-mcool extension input.",
    "inputs": [
        {
            "sbg:fileTypes": ".COOL",
            "type": [
                "null",
                "File"
            ],
            "label": "input_cool",
            "sbg:x": 90,
            "id": "#input_cool",
            "sbg:y": 143
        },
        {
            "sbg:fileTypes": ".HIC",
            "type": [
                "null",
                "File"
            ],
            "label": "input_hic",
            "sbg:x": 91,
            "id": "#input_hic",
            "sbg:y": 312
        },
        {
            "required": false,
            "type": [
                "null",
                "int"
            ],
            "sbg:includeInPorts": false,
            "sbg:suggestedValue": 8,
            "id": "#ncores",
            "sbg:toolDefaultValue": "4",
            "sbg:stageInput": null
        }
    ],
    "label": "Hi-C_processing_partC",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496182175,
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496182242,
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496190458,
            "sbg:revision": 2
        },
        {
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499683283,
            "sbg:revision": 3
        },
        {
            "sbg:revisionNotes": "now partD and E are integrated.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502649274,
            "sbg:revision": 4
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502649307,
            "sbg:revision": 5
        },
        {
            "sbg:revisionNotes": "updated add_hic_normvector_to_mcool so it can deal with non-mcool extension input.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502652177,
            "sbg:revision": 6
        },
        {
            "sbg:revisionNotes": "replaced extract-mcool-normvector-for-juicebox workflow to the corresponding app.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502653559,
            "sbg:revision": 7
        },
        {
            "sbg:revisionNotes": "r3.2xlarge",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502712335,
            "sbg:revision": 8
        }
    ],
    "outputs": [
        {
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "label": "output_mcool",
            "sbg:includeInPorts": true,
            "source": [
                "#add_hic_normvector_to_mcool.output_mcool"
            ],
            "sbg:x": 934,
            "id": "#output_mcool",
            "sbg:y": 144
        },
        {
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "label": "output_normvector",
            "sbg:includeInPorts": true,
            "source": [
                "#extract_mcool_normvector_for_juicebox_1.output_normvector"
            ],
            "sbg:x": 939,
            "id": "#output_normvector",
            "sbg:y": 351
        }
    ],
    "steps": [
        {
            "inputs": [
                {
                    "default": "out",
                    "id": "#cool2mcool.outprefix"
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
            "run": {
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out"
                    },
                    {
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:includeInPorts": false,
                        "sbg:stageInput": null,
                        "id": "#ncores",
                        "sbg:toolDefaultValue": "4"
                    },
                    {
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": ".COOL",
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_cool"
                    }
                ],
                "arguments": [],
                "sbg:revision": 2,
                "label": "cool2mcool",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496166920,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496167248,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496181675,
                        "sbg:revision": 2
                    }
                ],
                "outputs": [
                    {
                        "sbg:fileTypes": ".COOL",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#output_mcool",
                        "outputBinding": {
                            "glob": "*.multires.cool"
                        }
                    }
                ],
                "sbg:validationErrors": [],
                "sbg:latestRevision": 2,
                "sbg:job": {
                    "inputs": {
                        "input_cool": {
                            "size": 0,
                            "path": "/path/to/input_cool.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "outprefix": "outprefix-string-value",
                        "ncores": 9
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
                "cwlVersion": "sbg:draft-2",
                "successCodes": [],
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "sbg:projectName": "Dev",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:createdBy": "4dn-dcic",
                "stdin": "",
                "class": "CommandLineTool",
                "stdout": "",
                "description": "",
                "y": 160.65625,
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
                        "dockerImageId": "",
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v17"
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:image_url": null,
                "x": 338,
                "id": "4dn-dcic/dev/cool2mcool/2",
                "sbg:createdOn": 1496166920,
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "temporaryFailCodes": [],
                "sbg:id": "4dn-dcic/dev/cool2mcool/2",
                "sbg:modifiedOn": 1496181675,
                "requirements": []
            },
            "sbg:x": 338,
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "id": "#cool2mcool",
            "sbg:y": 160.65625
        },
        {
            "inputs": [
                {
                    "source": [
                        "#add_hic_normvector_to_mcool.output_mcool"
                    ],
                    "id": "#extract_mcool_normvector_for_juicebox_1.input_mcool"
                }
            ],
            "run": {
                "inputs": [
                    {
                        "sbg:fileTypes": "MCOOL",
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "input_mcool",
                        "sbg:x": 89,
                        "id": "#input_mcool",
                        "sbg:y": 171
                    }
                ],
                "label": "extract-mcool-normvector-for-juicebox-1",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501770707,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501770804,
                        "sbg:revision": 1
                    }
                ],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "output_normvector",
                        "sbg:includeInPorts": true,
                        "source": [
                            "#extract_mcool_normvector_for_juicebox.output_normvector"
                        ],
                        "sbg:x": 923,
                        "id": "#output_normvector",
                        "sbg:y": 163
                    }
                ],
                "sbg:validationErrors": [],
                "steps": [
                    {
                        "inputs": [
                            {
                                "source": [
                                    "#input_mcool"
                                ],
                                "id": "#extract_mcool_normvector_for_juicebox.input_mcool"
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
                        "run": {
                            "inputs": [
                                {
                                    "inputBinding": {
                                        "position": 1,
                                        "separate": true,
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
                                        "position": 2,
                                        "valueFrom": {
                                            "script": "\".\"",
                                            "class": "Expression",
                                            "engine": "#cwl-js-engine"
                                        },
                                        "separate": true,
                                        "sbg:cmdInclude": true
                                    },
                                    "type": [
                                        "null",
                                        "string"
                                    ],
                                    "id": "#outdir",
                                    "sbg:toolDefaultValue": "."
                                },
                                {
                                    "inputBinding": {
                                        "position": 3,
                                        "valueFrom": {
                                            "script": "\"out\"",
                                            "class": "Expression",
                                            "engine": "#cwl-js-engine"
                                        },
                                        "separate": true,
                                        "sbg:cmdInclude": true
                                    },
                                    "type": [
                                        "null",
                                        "string"
                                    ],
                                    "id": "#output_prefix",
                                    "sbg:toolDefaultValue": "out"
                                },
                                {
                                    "inputBinding": {
                                        "position": 4,
                                        "separate": true,
                                        "sbg:cmdInclude": true
                                    },
                                    "type": [
                                        "null",
                                        "int"
                                    ],
                                    "id": "#nres",
                                    "sbg:toolDefaultValue": "13",
                                    "sbg:stageInput": null
                                }
                            ],
                            "arguments": [],
                            "sbg:cmdPreview": "run-mcool2hic.sh",
                            "label": "extract-mcool-normvector-for-juicebox",
                            "sbg:revisionsInfo": [
                                {
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:modifiedOn": 1499701567,
                                    "sbg:revision": 0
                                },
                                {
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:modifiedOn": 1499701784,
                                    "sbg:revision": 1
                                },
                                {
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:modifiedOn": 1499703640,
                                    "sbg:revision": 2
                                },
                                {
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:modifiedOn": 1499704766,
                                    "sbg:revision": 3
                                },
                                {
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:modifiedOn": 1499705191,
                                    "sbg:revision": 4
                                }
                            ],
                            "outputs": [
                                {
                                    "sbg:fileTypes": "GZ",
                                    "type": [
                                        "null",
                                        "File"
                                    ],
                                    "id": "#output_normvector",
                                    "outputBinding": {
                                        "glob": "'*.juicerformat.gz'"
                                    }
                                }
                            ],
                            "sbg:validationErrors": [],
                            "sbg:latestRevision": 4,
                            "stdin": "",
                            "cwlVersion": "sbg:draft-2",
                            "sbg:revision": 4,
                            "sbg:sbgMaintained": false,
                            "sbg:project": "4dn-dcic/dev",
                            "sbg:projectName": "Dev",
                            "sbg:contributors": [
                                "4dn-dcic"
                            ],
                            "sbg:createdBy": "4dn-dcic",
                            "requirements": [
                                {
                                    "requirements": [
                                        {
                                            "dockerPull": "rabix/js-engine",
                                            "class": "DockerRequirement"
                                        }
                                    ],
                                    "class": "ExpressionEngineRequirement",
                                    "id": "#cwl-js-engine"
                                }
                            ],
                            "class": "CommandLineTool",
                            "stdout": "",
                            "description": "",
                            "temporaryFailCodes": [],
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
                                    "dockerImageId": "",
                                    "class": "DockerRequirement",
                                    "dockerPull": "duplexa/4dn-hic:v24"
                                }
                            ],
                            "sbg:appVersion": [
                                "sbg:draft-2"
                            ],
                            "sbg:image_url": null,
                            "successCodes": [],
                            "sbg:modifiedBy": "4dn-dcic",
                            "sbg:createdOn": 1499701567,
                            "baseCommand": [
                                "run-mcool2hic.sh"
                            ],
                            "sbg:job": {
                                "inputs": {
                                    "nres": 7,
                                    "outdir": "outdir-string-value",
                                    "input_mcool": {
                                        "size": 0,
                                        "path": "/path/to/input_mcool.ext",
                                        "class": "File",
                                        "secondaryFiles": []
                                    },
                                    "output_prefix": "output_prefix-string-value"
                                },
                                "allocatedResources": {
                                    "mem": 8000,
                                    "cpu": 8
                                }
                            },
                            "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/4",
                            "sbg:modifiedOn": 1499705191,
                            "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/extract-mcool-normvector-for-juicebox/4/raw/"
                        },
                        "sbg:x": 499,
                        "outputs": [
                            {
                                "id": "#extract_mcool_normvector_for_juicebox.output_normvector"
                            }
                        ],
                        "id": "#extract_mcool_normvector_for_juicebox",
                        "sbg:y": 167
                    }
                ],
                "sbg:canvas_y": 0,
                "sbg:latestRevision": 1,
                "cwlVersion": "sbg:draft-2",
                "sbg:revision": 1,
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "sbg:canvas_x": 0,
                "sbg:projectName": "Dev",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:createdBy": "4dn-dcic",
                "requirements": [],
                "class": "Workflow",
                "description": "",
                "y": 319,
                "hints": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1.png",
                "x": 756,
                "id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1",
                "sbg:createdOn": 1501770707,
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:canvas_zoom": 1,
                "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox-1/1",
                "sbg:modifiedOn": 1501770804
            },
            "sbg:x": 756,
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox_1.output_normvector"
                }
            ],
            "id": "#extract_mcool_normvector_for_juicebox_1",
            "sbg:y": 319
        },
        {
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
                    "default": ".",
                    "id": "#add_hic_normvector_to_mcool.outdir"
                }
            ],
            "run": {
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
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
                            "position": 2,
                            "separate": true,
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
                            "position": 3,
                            "valueFrom": {
                                "script": "\".\"",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            },
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": ".",
                        "id": "#outdir"
                    }
                ],
                "arguments": [],
                "sbg:revision": 4,
                "label": "add_hic_normvector_to_mcool",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499653917,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499654479,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499659501,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499701134,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502652131,
                        "sbg:revision": 4
                    }
                ],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#output_mcool",
                        "outputBinding": {
                            "glob": "$job.inputs.outdir + '*.mcool'"
                        }
                    }
                ],
                "sbg:validationErrors": [],
                "sbg:latestRevision": 4,
                "sbg:job": {
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
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 4
                    }
                },
                "cwlVersion": "sbg:draft-2",
                "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "sbg:projectName": "Dev",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:createdBy": "4dn-dcic",
                "stdin": "",
                "class": "CommandLineTool",
                "stdout": "",
                "description": "",
                "temporaryFailCodes": [],
                "hints": [
                    {
                        "class": "sbg:MemRequirement",
                        "value": 8000
                    },
                    {
                        "dockerImageId": "",
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v33"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 4
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:image_url": null,
                "successCodes": [],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/add-hic-normvector-to-mcool/4/raw/",
                "sbg:createdOn": 1499653917,
                "baseCommand": [
                    "run-add-hicnormvector-to-mcool.sh"
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/4",
                "sbg:modifiedOn": 1502652131,
                "requirements": [
                    {
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine"
                    }
                ]
            },
            "sbg:x": 560,
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "id": "#add_hic_normvector_to_mcool",
            "sbg:y": 210
        }
    ],
    "sbg:canvas_y": 0,
    "sbg:latestRevision": 8,
    "cwlVersion": "sbg:draft-2",
    "sbg:revision": 6,
    "sbg:sbgMaintained": false,
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdBy": "4dn-dcic",
    "sbg:canvas_x": 0,
    "sbg:projectName": "Dev",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:validationErrors": [],
    "requirements": [],
    "class": "Workflow",
    "description": "",
    "hints": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/6.png",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/6/raw/",
    "sbg:createdOn": 1496182175,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:canvas_zoom": 1,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/6",
    "sbg:modifiedOn": 1502652177
}