{
    "requirements": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/11/raw/",
    "sbg:projectName": "Dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:canvas_zoom": 1,
    "steps": [
        {
            "sbg:x": 338,
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "run": {
                "requirements": [],
                "id": "4dn-dcic/dev/cool2mcool/2",
                "sbg:projectName": "Dev",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "x": 338,
                "stdout": "",
                "sbg:revision": 2,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1496166920,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1496167248,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1496181675,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "label": "cool2mcool",
                "sbg:modifiedOn": 1496181675,
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#output_mcool",
                        "outputBinding": {
                            "glob": "*.multires.cool"
                        },
                        "sbg:fileTypes": ".COOL"
                    }
                ],
                "sbg:cmdPreview": "run-cool2multirescool.sh",
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
                "sbg:createdBy": "4dn-dcic",
                "class": "CommandLineTool",
                "successCodes": [],
                "sbg:sbgMaintained": false,
                "sbg:createdOn": 1496166920,
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:id": "4dn-dcic/dev/cool2mcool/2",
                "sbg:validationErrors": [],
                "arguments": [],
                "stdin": "",
                "description": "",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        }
                    },
                    {
                        "sbg:includeInPorts": false,
                        "id": "#ncores",
                        "required": false,
                        "sbg:toolDefaultValue": "4",
                        "sbg:stageInput": null,
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_cool",
                        "required": false,
                        "sbg:fileTypes": ".COOL",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "ncores": 9,
                        "input_cool": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_cool.ext"
                        },
                        "outprefix": "outprefix-string-value"
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
                "temporaryFailCodes": [],
                "y": 160.65625,
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "sbg:project": "4dn-dcic/dev",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:image_url": null,
                "sbg:latestRevision": 2
            },
            "id": "#cool2mcool",
            "sbg:y": 160.65625,
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
            ]
        },
        {
            "sbg:x": 560,
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "run": {
                "requirements": [
                    {
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine"
                    }
                ],
                "id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
                "sbg:projectName": "Dev",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "x": 560,
                "stdout": "",
                "sbg:revision": 5,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499653917,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499654479,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499659501,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499701134,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502652131,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502899564,
                        "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
                        "sbg:revision": 5
                    }
                ],
                "label": "add_hic_normvector_to_mcool",
                "sbg:modifiedOn": 1502899564,
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
                "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
                "sbg:project": "4dn-dcic/dev",
                "sbg:createdBy": "4dn-dcic",
                "class": "CommandLineTool",
                "successCodes": [],
                "sbg:sbgMaintained": false,
                "sbg:createdOn": 1499653917,
                "arguments": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
                "sbg:validationErrors": [],
                "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
                "stdin": "",
                "description": "",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outdir",
                        "sbg:toolDefaultValue": ".",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_mcool",
                        "required": false,
                        "sbg:fileTypes": ".MCOOL",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_hic",
                        "required": false,
                        "sbg:fileTypes": ".HIC",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "input_hic": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_hic.ext"
                        },
                        "outdir": "outdir-string-value",
                        "input_mcool": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_mcool.ext"
                        }
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 4
                    }
                },
                "temporaryFailCodes": [],
                "y": 210,
                "baseCommand": [
                    "run-add-hicnormvector-to-mcool.sh"
                ],
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
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:image_url": null,
                "sbg:latestRevision": 5
            },
            "id": "#add_hic_normvector_to_mcool",
            "sbg:y": 210,
            "inputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.outdir",
                    "default": "."
                },
                {
                    "id": "#add_hic_normvector_to_mcool.input_mcool",
                    "source": [
                        "#cool2mcool.output_mcool"
                    ]
                },
                {
                    "id": "#add_hic_normvector_to_mcool.input_hic",
                    "source": [
                        "#input_hic"
                    ]
                }
            ]
        },
        {
            "sbg:x": 746,
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.output_normvector"
                }
            ],
            "run": {
                "requirements": [
                    {
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine"
                    }
                ],
                "label": "extract-mcool-normvector-for-juicebox",
                "sbg:projectName": "Dev",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "stdout": "",
                "sbg:revision": 6,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499701567,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499701784,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499703640,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499704766,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499705191,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502899948,
                        "sbg:revisionNotes": "docker v33 and removed valuefrom for outdir (default is enough)",
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502900127,
                        "sbg:revisionNotes": "removed valuefrom from output_prefix",
                        "sbg:revision": 6
                    }
                ],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6/raw/",
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#output_normvector",
                        "outputBinding": {
                            "glob": "'*.juicerformat.gz'"
                        },
                        "sbg:fileTypes": "GZ"
                    }
                ],
                "sbg:cmdPreview": "run-mcool2hic.sh",
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
                        "dockerPull": "duplexa/4dn-hic:v33",
                        "dockerImageId": ""
                    }
                ],
                "sbg:createdBy": "4dn-dcic",
                "class": "CommandLineTool",
                "successCodes": [],
                "sbg:sbgMaintained": false,
                "sbg:createdOn": 1499701567,
                "arguments": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
                "sbg:validationErrors": [],
                "sbg:revisionNotes": "removed valuefrom from output_prefix",
                "stdin": "",
                "description": "",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_mcool",
                        "sbg:fileTypes": "MCOOL",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outdir",
                        "sbg:toolDefaultValue": ".",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        }
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#output_prefix",
                        "sbg:toolDefaultValue": "out",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        }
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 4
                        },
                        "id": "#nres",
                        "sbg:toolDefaultValue": "13",
                        "sbg:stageInput": null
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "output_prefix": "output_prefix-string-value",
                        "outdir": "outdir-string-value",
                        "nres": 7,
                        "input_mcool": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_mcool.ext"
                        }
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    }
                },
                "temporaryFailCodes": [],
                "sbg:latestRevision": 6,
                "baseCommand": [
                    "run-mcool2hic.sh"
                ],
                "sbg:project": "4dn-dcic/dev",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:image_url": null,
                "sbg:modifiedOn": 1502900127
            },
            "id": "#extract_mcool_normvector_for_juicebox",
            "sbg:y": 310,
            "inputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.input_mcool",
                    "source": [
                        "#add_hic_normvector_to_mcool.output_mcool"
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
                    "default": 13,
                    "source": [
                        "#nres"
                    ]
                }
            ]
        }
    ],
    "sbg:revision": 11,
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1496182175,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1496182242,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1496190458,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1499683283,
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)",
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1502649274,
            "sbg:revisionNotes": "now partD and E are integrated.",
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1502649307,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedOn": 1502652177,
            "sbg:revisionNotes": "updated add_hic_normvector_to_mcool so it can deal with non-mcool extension input.",
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedOn": 1502653559,
            "sbg:revisionNotes": "replaced extract-mcool-normvector-for-juicebox workflow to the corresponding app.",
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedOn": 1502712335,
            "sbg:revisionNotes": "r3.2xlarge",
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedOn": 1502899628,
            "sbg:revisionNotes": "add_hic_normvector rev5 (just removed 'valuefrom' for outdir, no real change)",
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedOn": 1502899984,
            "sbg:revisionNotes": "extract-mcool rev5 (docker v33 and removed  valuefrom for outdir)",
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 11,
            "sbg:modifiedOn": 1502900163,
            "sbg:revisionNotes": "extract-mcool rev6, (removed valuefrom from output_prefix, no real change)",
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:canvas_x": 0,
    "sbg:canvas_y": 0,
    "label": "Hi-C_processing_partC",
    "outputs": [
        {
            "sbg:includeInPorts": true,
            "label": "output_mcool",
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "id": "#output_mcool",
            "sbg:y": 144,
            "sbg:x": 934,
            "source": [
                "#add_hic_normvector_to_mcool.output_mcool"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "label": "output_normvector",
            "id": "#output_normvector",
            "sbg:fileTypes": "GZ",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:y": 351,
            "sbg:x": 939,
            "source": [
                "#extract_mcool_normvector_for_juicebox.output_normvector"
            ]
        }
    ],
    "hints": [
        {
            "class": "sbg:AWSInstanceType",
            "value": "r3.2xlarge"
        }
    ],
    "sbg:createdBy": "4dn-dcic",
    "class": "Workflow",
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/11",
    "sbg:sbgMaintained": false,
    "sbg:createdOn": 1496182175,
    "cwlVersion": "sbg:draft-2",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/11.png",
    "sbg:validationErrors": [],
    "sbg:revisionNotes": "extract-mcool rev6, (removed valuefrom from output_prefix, no real change)",
    "description": "",
    "inputs": [
        {
            "label": "input_cool",
            "id": "#input_cool",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 143,
            "sbg:x": 90,
            "sbg:fileTypes": ".COOL"
        },
        {
            "label": "input_hic",
            "id": "#input_hic",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 312,
            "sbg:x": 91,
            "sbg:fileTypes": ".HIC"
        },
        {
            "sbg:includeInPorts": false,
            "sbg:suggestedValue": 8,
            "id": "#ncores",
            "required": false,
            "sbg:toolDefaultValue": "4",
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ]
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:suggestedValue": 13,
            "id": "#nres",
            "sbg:toolDefaultValue": "13",
            "sbg:stageInput": null
        }
    ],
    "sbg:latestRevision": 11,
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:modifiedOn": 1502900163
}