{
    "sbg:createdOn": 1496182175,
    "sbg:canvas_zoom": 1,
    "outputs": [
        {
            "id": "#output_mcool",
            "sbg:x": 934,
            "label": "output_mcool",
            "sbg:y": 144,
            "required": false,
            "source": [
                "#add_hic_normvector_to_mcool.output_mcool"
            ],
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#output_normvector",
            "sbg:x": 939,
            "label": "output_normvector",
            "sbg:y": 351,
            "sbg:fileTypes": "GZ",
            "required": false,
            "source": [
                "#extract_mcool_normvector_for_juicebox.output_normvector"
            ],
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "inputs": [
        {
            "id": "#input_cool",
            "sbg:x": 90,
            "label": "input_cool",
            "sbg:y": 143,
            "sbg:fileTypes": ".COOL",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#input_hic",
            "sbg:x": 91,
            "label": "input_hic",
            "sbg:y": 312,
            "sbg:fileTypes": ".HIC",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:stageInput": null,
            "sbg:suggestedValue": 13,
            "id": "#nres",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "13"
        },
        {
            "sbg:stageInput": null,
            "id": "#ncores",
            "sbg:toolDefaultValue": "4",
            "sbg:suggestedValue": 8,
            "required": false,
            "sbg:includeInPorts": false,
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "sbg:revisionNotes": "cool2mcool v3",
    "steps": [
        {
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "id": "#add_hic_normvector_to_mcool",
            "sbg:x": 560,
            "run": {
                "sbg:createdOn": 1499653917,
                "outputs": [
                    {
                        "id": "#output_mcool",
                        "outputBinding": {
                            "glob": "$job.inputs.outdir + '*.mcool'"
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "stdin": "",
                "inputs": [
                    {
                        "id": "#outdir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:toolDefaultValue": "."
                    },
                    {
                        "sbg:fileTypes": ".MCOOL",
                        "id": "#input_mcool",
                        "required": false,
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": ".HIC",
                        "id": "#input_hic",
                        "required": false,
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "successCodes": [],
                "sbg:image_url": null,
                "sbg:modifiedOn": 1502899564,
                "sbg:createdBy": "4dn-dcic",
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499653917,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499654479,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499659501,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499701134,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1502652131,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
                        "sbg:modifiedOn": 1502899564,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 5
                    }
                ],
                "class": "CommandLineTool",
                "sbg:sbgMaintained": false,
                "stdout": "",
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
                "x": 560,
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 8000
                    },
                    "inputs": {
                        "outdir": "outdir-string-value",
                        "input_hic": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_hic.ext",
                            "size": 0
                        },
                        "input_mcool": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_mcool.ext",
                            "size": 0
                        }
                    }
                },
                "id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
                "sbg:latestRevision": 5,
                "y": 210,
                "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
                "arguments": [],
                "sbg:revision": 5,
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
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "cwlVersion": "sbg:draft-2",
                "description": "",
                "label": "add_hic_normvector_to_mcool",
                "sbg:projectName": "Dev",
                "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
                "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:validationErrors": [],
                "baseCommand": [
                    "run-add-hicnormvector-to-mcool.sh"
                ],
                "temporaryFailCodes": [],
                "sbg:modifiedBy": "4dn-dcic"
            },
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
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.output_normvector"
                }
            ],
            "id": "#extract_mcool_normvector_for_juicebox",
            "sbg:x": 746,
            "run": {
                "sbg:createdOn": 1499701567,
                "outputs": [
                    {
                        "id": "#output_normvector",
                        "sbg:fileTypes": "GZ",
                        "outputBinding": {
                            "glob": "'*.juicerformat.gz'"
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "stdin": "",
                "inputs": [
                    {
                        "id": "#output_prefix",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:toolDefaultValue": "out"
                    },
                    {
                        "id": "#outdir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:toolDefaultValue": "."
                    },
                    {
                        "sbg:stageInput": null,
                        "id": "#nres",
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:toolDefaultValue": "13"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": "MCOOL",
                        "id": "#input_mcool",
                        "required": false
                    }
                ],
                "successCodes": [],
                "sbg:image_url": null,
                "sbg:modifiedOn": 1502900127,
                "sbg:createdBy": "4dn-dcic",
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499701567,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499701784,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499703640,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499704766,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499705191,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:revisionNotes": "docker v33 and removed valuefrom for outdir (default is enough)",
                        "sbg:modifiedOn": 1502899948,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 5
                    },
                    {
                        "sbg:revisionNotes": "removed valuefrom from output_prefix",
                        "sbg:modifiedOn": 1502900127,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 6
                    }
                ],
                "class": "CommandLineTool",
                "sbg:sbgMaintained": false,
                "stdout": "",
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
                        "dockerPull": "duplexa/4dn-hic:v33"
                    }
                ],
                "x": 746,
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 8000
                    },
                    "inputs": {
                        "outdir": "outdir-string-value",
                        "input_mcool": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_mcool.ext",
                            "size": 0
                        },
                        "output_prefix": "output_prefix-string-value",
                        "nres": 7
                    }
                },
                "id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
                "sbg:latestRevision": 6,
                "y": 310,
                "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
                "arguments": [],
                "sbg:revision": 6,
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
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "cwlVersion": "sbg:draft-2",
                "description": "",
                "label": "extract-mcool-normvector-for-juicebox",
                "sbg:projectName": "Dev",
                "sbg:revisionNotes": "removed valuefrom from output_prefix",
                "sbg:cmdPreview": "run-mcool2hic.sh",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:validationErrors": [],
                "baseCommand": [
                    "run-mcool2hic.sh"
                ],
                "temporaryFailCodes": [],
                "sbg:modifiedBy": "4dn-dcic"
            },
            "sbg:y": 310,
            "inputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.output_prefix",
                    "default": "out"
                },
                {
                    "id": "#extract_mcool_normvector_for_juicebox.outdir",
                    "default": "."
                },
                {
                    "id": "#extract_mcool_normvector_for_juicebox.nres",
                    "default": 13,
                    "source": [
                        "#nres"
                    ]
                },
                {
                    "id": "#extract_mcool_normvector_for_juicebox.input_mcool",
                    "source": [
                        "#add_hic_normvector_to_mcool.output_mcool"
                    ]
                }
            ]
        },
        {
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "id": "#cool2mcool",
            "sbg:x": 338,
            "run": {
                "sbg:createdOn": 1496166920,
                "outputs": [
                    {
                        "id": "#output_mcool",
                        "sbg:fileTypes": ".COOL",
                        "outputBinding": {
                            "glob": "*.multires.cool *.mcool"
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "stdin": "",
                "sbg:projectName": "Dev",
                "inputs": [
                    {
                        "id": "#input_cool",
                        "sbg:fileTypes": ".COOL",
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:stageInput": null,
                        "id": "#ncores",
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:toolDefaultValue": "4"
                    },
                    {
                        "id": "#outprefix",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:toolDefaultValue": "out"
                    }
                ],
                "successCodes": [],
                "sbg:image_url": null,
                "sbg:modifiedOn": 1502996615,
                "sbg:createdBy": "4dn-dcic",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496166920,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496167248,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496181675,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
                        "sbg:modifiedOn": 1502996615,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 3
                    }
                ],
                "class": "CommandLineTool",
                "sbg:sbgMaintained": false,
                "stdout": "",
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
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "ncores": 9,
                        "input_cool": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_cool.ext",
                            "size": 0
                        },
                        "outprefix": "outprefix-string-value"
                    }
                },
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/3/raw/",
                "sbg:latestRevision": 3,
                "sbg:id": "4dn-dcic/dev/cool2mcool/3",
                "arguments": [],
                "sbg:revision": 3,
                "sbg:project": "4dn-dcic/dev",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "cwlVersion": "sbg:draft-2",
                "description": "",
                "label": "cool2mcool",
                "requirements": [],
                "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:validationErrors": [],
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "temporaryFailCodes": [],
                "sbg:modifiedBy": "4dn-dcic"
            },
            "sbg:y": 160.65625,
            "inputs": [
                {
                    "id": "#cool2mcool.input_cool",
                    "source": [
                        "#input_cool"
                    ]
                },
                {
                    "id": "#cool2mcool.ncores",
                    "default": 8,
                    "source": [
                        "#ncores"
                    ]
                },
                {
                    "id": "#cool2mcool.outprefix",
                    "default": "out"
                }
            ]
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496182175,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496182242,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496190458,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2
        },
        {
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)",
            "sbg:modifiedOn": 1499683283,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3
        },
        {
            "sbg:revisionNotes": "now partD and E are integrated.",
            "sbg:modifiedOn": 1502649274,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1502649307,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5
        },
        {
            "sbg:revisionNotes": "updated add_hic_normvector_to_mcool so it can deal with non-mcool extension input.",
            "sbg:modifiedOn": 1502652177,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6
        },
        {
            "sbg:revisionNotes": "replaced extract-mcool-normvector-for-juicebox workflow to the corresponding app.",
            "sbg:modifiedOn": 1502653559,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 7
        },
        {
            "sbg:revisionNotes": "r3.2xlarge",
            "sbg:modifiedOn": 1502712335,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 8
        },
        {
            "sbg:revisionNotes": "add_hic_normvector rev5 (just removed 'valuefrom' for outdir, no real change)",
            "sbg:modifiedOn": 1502899628,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 9
        },
        {
            "sbg:revisionNotes": "extract-mcool rev5 (docker v33 and removed  valuefrom for outdir)",
            "sbg:modifiedOn": 1502899984,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 10
        },
        {
            "sbg:revisionNotes": "extract-mcool rev6, (removed valuefrom from output_prefix, no real change)",
            "sbg:modifiedOn": 1502900163,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 11
        },
        {
            "sbg:revisionNotes": "cool2mcool v3",
            "sbg:modifiedOn": 1502996712,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 12
        }
    ],
    "class": "Workflow",
    "requirements": [],
    "sbg:modifiedOn": 1502996712,
    "hints": [
        {
            "value": "r3.2xlarge",
            "class": "sbg:AWSInstanceType"
        }
    ],
    "sbg:canvas_x": 0,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/12/raw/",
    "sbg:latestRevision": 12,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/12",
    "sbg:canvas_y": 0,
    "sbg:revision": 12,
    "sbg:sbgMaintained": false,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "cwlVersion": "sbg:draft-2",
    "label": "Hi-C_processing_partC",
    "sbg:projectName": "Dev",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/12.png",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:validationErrors": [],
    "description": "",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:createdBy": "4dn-dcic"
}