{
    "sbg:canvas_x": 0,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/12/raw/",
    "inputs": [
        {
            "sbg:y": 143,
            "label": "input_cool",
            "id": "#input_cool",
            "sbg:x": 90,
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": ".COOL"
        },
        {
            "sbg:y": 312,
            "label": "input_hic",
            "id": "#input_hic",
            "sbg:x": 91,
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": ".HIC"
        },
        {
            "id": "#nres",
            "sbg:suggestedValue": 13,
            "sbg:toolDefaultValue": "13",
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null
        },
        {
            "sbg:includeInPorts": false,
            "sbg:suggestedValue": 8,
            "id": "#ncores",
            "required": false,
            "sbg:toolDefaultValue": "4",
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null
        }
    ],
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/12",
    "sbg:revision": 12,
    "sbg:projectName": "Dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdOn": 1496182175,
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionNotes": "cool2mcool v3",
    "sbg:modifiedBy": "4dn-dcic",
    "requirements": [],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496182175
        },
        {
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496182242
        },
        {
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496190458
        },
        {
            "sbg:revision": 3,
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499683283
        },
        {
            "sbg:revision": 4,
            "sbg:revisionNotes": "now partD and E are integrated.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502649274
        },
        {
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502649307
        },
        {
            "sbg:revision": 6,
            "sbg:revisionNotes": "updated add_hic_normvector_to_mcool so it can deal with non-mcool extension input.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502652177
        },
        {
            "sbg:revision": 7,
            "sbg:revisionNotes": "replaced extract-mcool-normvector-for-juicebox workflow to the corresponding app.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502653559
        },
        {
            "sbg:revision": 8,
            "sbg:revisionNotes": "r3.2xlarge",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502712335
        },
        {
            "sbg:revision": 9,
            "sbg:revisionNotes": "add_hic_normvector rev5 (just removed 'valuefrom' for outdir, no real change)",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502899628
        },
        {
            "sbg:revision": 10,
            "sbg:revisionNotes": "extract-mcool rev5 (docker v33 and removed  valuefrom for outdir)",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502899984
        },
        {
            "sbg:revision": 11,
            "sbg:revisionNotes": "extract-mcool rev6, (removed valuefrom from output_prefix, no real change)",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502900163
        },
        {
            "sbg:revision": 12,
            "sbg:revisionNotes": "cool2mcool v3",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502996712
        }
    ],
    "sbg:createdBy": "4dn-dcic",
    "sbg:canvas_zoom": 1,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/12.png",
    "outputs": [
        {
            "required": false,
            "sbg:includeInPorts": true,
            "sbg:y": 144,
            "label": "output_mcool",
            "id": "#output_mcool",
            "source": [
                "#add_hic_normvector_to_mcool.output_mcool"
            ],
            "sbg:x": 934,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "required": false,
            "sbg:includeInPorts": true,
            "sbg:y": 351,
            "label": "output_normvector",
            "id": "#output_normvector",
            "source": [
                "#extract_mcool_normvector_for_juicebox.output_normvector"
            ],
            "sbg:x": 939,
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "GZ"
        }
    ],
    "steps": [
        {
            "sbg:y": 210,
            "id": "#add_hic_normvector_to_mcool",
            "run": {
                "id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
                "successCodes": [],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
                "inputs": [
                    {
                        "id": "#outdir",
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": ".",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#input_mcool",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".MCOOL"
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#input_hic",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".HIC"
                    }
                ],
                "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
                "sbg:revision": 5,
                "temporaryFailCodes": [],
                "x": 560,
                "sbg:projectName": "Dev",
                "baseCommand": [
                    "run-add-hicnormvector-to-mcool.sh"
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "stdout": "",
                "sbg:createdOn": 1499653917,
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
                "stdin": "",
                "y": 210,
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
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499653917,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499654479,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499659501,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499701134,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1502652131,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
                        "sbg:modifiedOn": 1502899564,
                        "sbg:modifiedBy": "4dn-dcic"
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
                "sbg:image_url": null,
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
                "cwlVersion": "sbg:draft-2",
                "sbg:createdBy": "4dn-dcic",
                "label": "add_hic_normvector_to_mcool",
                "sbg:validationErrors": [],
                "description": "",
                "class": "CommandLineTool",
                "sbg:sbgMaintained": false,
                "arguments": [],
                "sbg:latestRevision": 5,
                "sbg:modifiedOn": 1502899564,
                "sbg:job": {
                    "inputs": {
                        "input_hic": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_hic.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "input_mcool": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_mcool.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "outdir": "outdir-string-value"
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 4
                    }
                }
            },
            "sbg:x": 560,
            "inputs": [
                {
                    "default": ".",
                    "id": "#add_hic_normvector_to_mcool.outdir"
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
            ],
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ]
        },
        {
            "sbg:y": 310,
            "id": "#extract_mcool_normvector_for_juicebox",
            "run": {
                "id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
                "successCodes": [],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:cmdPreview": "run-mcool2hic.sh",
                "inputs": [
                    {
                        "id": "#output_prefix",
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#outdir",
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": ".",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#nres",
                        "inputBinding": {
                            "position": 4,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "13",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#input_mcool",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "MCOOL"
                    }
                ],
                "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
                "sbg:revision": 6,
                "temporaryFailCodes": [],
                "x": 746,
                "sbg:projectName": "Dev",
                "baseCommand": [
                    "run-mcool2hic.sh"
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "stdout": "",
                "sbg:createdOn": 1499701567,
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionNotes": "removed valuefrom from output_prefix",
                "stdin": "",
                "y": 310,
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
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499701567,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499701784,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499703640,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499704766,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499705191,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:revisionNotes": "docker v33 and removed valuefrom for outdir (default is enough)",
                        "sbg:modifiedOn": 1502899948,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:revisionNotes": "removed valuefrom from output_prefix",
                        "sbg:modifiedOn": 1502900127,
                        "sbg:modifiedBy": "4dn-dcic"
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
                        "dockerPull": "duplexa/4dn-hic:v33",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:image_url": null,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "'*.juicerformat.gz'"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#output_normvector",
                        "sbg:fileTypes": "GZ"
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:createdBy": "4dn-dcic",
                "label": "extract-mcool-normvector-for-juicebox",
                "sbg:validationErrors": [],
                "description": "",
                "class": "CommandLineTool",
                "sbg:sbgMaintained": false,
                "arguments": [],
                "sbg:latestRevision": 6,
                "sbg:modifiedOn": 1502900127,
                "sbg:job": {
                    "inputs": {
                        "nres": 7,
                        "input_mcool": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_mcool.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "output_prefix": "output_prefix-string-value",
                        "outdir": "outdir-string-value"
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    }
                }
            },
            "sbg:x": 746,
            "inputs": [
                {
                    "default": "out",
                    "id": "#extract_mcool_normvector_for_juicebox.output_prefix"
                },
                {
                    "default": ".",
                    "id": "#extract_mcool_normvector_for_juicebox.outdir"
                },
                {
                    "default": 13,
                    "id": "#extract_mcool_normvector_for_juicebox.nres",
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
            ],
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.output_normvector"
                }
            ]
        },
        {
            "sbg:y": 160.65625,
            "id": "#cool2mcool",
            "run": {
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/3/raw/",
                "successCodes": [],
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#input_cool",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".COOL"
                    },
                    {
                        "id": "#ncores",
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "4",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null
                    },
                    {
                        "id": "#outprefix",
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ]
                    }
                ],
                "sbg:id": "4dn-dcic/dev/cool2mcool/3",
                "sbg:revision": 3,
                "stdin": "",
                "temporaryFailCodes": [],
                "sbg:projectName": "Dev",
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "stdout": "",
                "sbg:createdOn": 1496166920,
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
                "sbg:modifiedBy": "4dn-dcic",
                "requirements": [],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496166920,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496167248,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496181675,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
                        "sbg:modifiedOn": 1502996615,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
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
                "sbg:image_url": null,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.multires.cool *.mcool"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#output_mcool",
                        "sbg:fileTypes": ".COOL"
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:createdBy": "4dn-dcic",
                "label": "cool2mcool",
                "sbg:validationErrors": [],
                "description": "",
                "class": "CommandLineTool",
                "sbg:sbgMaintained": false,
                "arguments": [],
                "sbg:latestRevision": 3,
                "sbg:modifiedOn": 1502996615,
                "sbg:job": {
                    "inputs": {
                        "input_cool": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_cool.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "outprefix": "outprefix-string-value",
                        "ncores": 9
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                }
            },
            "sbg:x": 338,
            "inputs": [
                {
                    "id": "#cool2mcool.input_cool",
                    "source": [
                        "#input_cool"
                    ]
                },
                {
                    "default": 8,
                    "id": "#cool2mcool.ncores",
                    "source": [
                        "#ncores"
                    ]
                },
                {
                    "default": "out",
                    "id": "#cool2mcool.outprefix"
                }
            ],
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ]
        }
    ],
    "hints": [
        {
            "value": "r3.2xlarge",
            "class": "sbg:AWSInstanceType"
        }
    ],
    "label": "Hi-C_processing_partC",
    "sbg:validationErrors": [],
    "description": "",
    "class": "Workflow",
    "sbg:sbgMaintained": false,
    "sbg:latestRevision": 12,
    "sbg:modifiedOn": 1502996712,
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_y": 0
}