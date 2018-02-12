{
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496182175,
            "sbg:revision": 0,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496182242,
            "sbg:revision": 1,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496190458,
            "sbg:revision": 2,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)",
            "sbg:modifiedOn": 1499683283,
            "sbg:revision": 3,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "now partD and E are integrated.",
            "sbg:modifiedOn": 1502649274,
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1502649307,
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "updated add_hic_normvector_to_mcool so it can deal with non-mcool extension input.",
            "sbg:modifiedOn": 1502652177,
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "replaced extract-mcool-normvector-for-juicebox workflow to the corresponding app.",
            "sbg:modifiedOn": 1502653559,
            "sbg:revision": 7,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "r3.2xlarge",
            "sbg:modifiedOn": 1502712335,
            "sbg:revision": 8,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "add_hic_normvector rev5 (just removed 'valuefrom' for outdir, no real change)",
            "sbg:modifiedOn": 1502899628,
            "sbg:revision": 9,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "extract-mcool rev5 (docker v33 and removed  valuefrom for outdir)",
            "sbg:modifiedOn": 1502899984,
            "sbg:revision": 10,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "extract-mcool rev6, (removed valuefrom from output_prefix, no real change)",
            "sbg:modifiedOn": 1502900163,
            "sbg:revision": 11,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "cool2mcool v3",
            "sbg:modifiedOn": 1502996712,
            "sbg:revision": 12,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "class": "Workflow",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/12/raw/",
    "sbg:validationErrors": [],
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/12",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 90,
            "sbg:y": 143,
            "id": "#input_cool",
            "label": "input_cool",
            "sbg:fileTypes": ".COOL"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 91,
            "sbg:y": 312,
            "id": "#input_hic",
            "label": "input_hic",
            "sbg:fileTypes": ".HIC"
        },
        {
            "sbg:toolDefaultValue": "13",
            "sbg:suggestedValue": 13,
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "id": "#nres"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "4",
            "id": "#ncores",
            "sbg:suggestedValue": 8,
            "sbg:stageInput": null,
            "required": false,
            "sbg:includeInPorts": false
        }
    ],
    "hints": [
        {
            "class": "sbg:AWSInstanceType",
            "value": "r3.2xlarge"
        }
    ],
    "sbg:modifiedOn": 1502996712,
    "sbg:canvas_zoom": 1,
    "sbg:sbgMaintained": false,
    "sbg:createdBy": "4dn-dcic",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 934,
            "sbg:y": 144,
            "id": "#output_mcool",
            "label": "output_mcool",
            "source": [
                "#add_hic_normvector_to_mcool.output_mcool"
            ],
            "required": false,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 939,
            "sbg:y": 351,
            "id": "#output_normvector",
            "label": "output_normvector",
            "source": [
                "#extract_mcool_normvector_for_juicebox.output_normvector"
            ],
            "required": false,
            "sbg:fileTypes": "GZ",
            "sbg:includeInPorts": true
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/12.png",
    "sbg:latestRevision": 12,
    "sbg:canvas_y": 0,
    "steps": [
        {
            "sbg:x": 560,
            "sbg:y": 210,
            "id": "#add_hic_normvector_to_mcool",
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
            "run": {
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499653917,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499654479,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499659501,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499701134,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1502652131,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
                        "sbg:modifiedOn": 1502899564,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "class": "CommandLineTool",
                "label": "add_hic_normvector_to_mcool",
                "sbg:validationErrors": [],
                "sbg:job": {
                    "inputs": {
                        "outdir": "outdir-string-value",
                        "input_hic": {
                            "path": "/path/to/input_hic.ext",
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "input_mcool": {
                            "path": "/path/to/input_mcool.ext",
                            "size": 0,
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
                "baseCommand": [
                    "run-add-hicnormvector-to-mcool.sh"
                ],
                "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
                "y": 210,
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": ".",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        },
                        "id": "#outdir"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "sbg:fileTypes": ".MCOOL",
                        "required": false,
                        "id": "#input_mcool"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "sbg:fileTypes": ".HIC",
                        "required": false,
                        "id": "#input_hic"
                    }
                ],
                "id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
                "hints": [
                    {
                        "class": "sbg:MemRequirement",
                        "value": 8000
                    },
                    {
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v33",
                        "class": "DockerRequirement"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 4
                    }
                ],
                "sbg:modifiedOn": 1502899564,
                "description": "",
                "sbg:sbgMaintained": false,
                "sbg:createdBy": "4dn-dcic",
                "successCodes": [],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "$job.inputs.outdir + '*.mcool'"
                        },
                        "id": "#output_mcool"
                    }
                ],
                "sbg:image_url": null,
                "sbg:latestRevision": 5,
                "sbg:modifiedBy": "4dn-dcic",
                "arguments": [],
                "stdout": "",
                "x": 560,
                "sbg:projectName": "Dev",
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
                "sbg:revision": 5,
                "sbg:createdOn": 1499653917,
                "stdin": "",
                "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
                "temporaryFailCodes": [],
                "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
                "sbg:contributors": [
                    "4dn-dcic"
                ]
            },
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ]
        },
        {
            "sbg:x": 746,
            "sbg:y": 310,
            "id": "#extract_mcool_normvector_for_juicebox",
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
            "run": {
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499701567,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499701784,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499703640,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499704766,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499705191,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": "docker v33 and removed valuefrom for outdir (default is enough)",
                        "sbg:modifiedOn": 1502899948,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": "removed valuefrom from output_prefix",
                        "sbg:modifiedOn": 1502900127,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "class": "CommandLineTool",
                "label": "extract-mcool-normvector-for-juicebox",
                "sbg:validationErrors": [],
                "sbg:job": {
                    "inputs": {
                        "outdir": "outdir-string-value",
                        "input_mcool": {
                            "path": "/path/to/input_mcool.ext",
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "nres": 7,
                        "output_prefix": "output_prefix-string-value"
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    }
                },
                "cwlVersion": "sbg:draft-2",
                "baseCommand": [
                    "run-mcool2hic.sh"
                ],
                "sbg:cmdPreview": "run-mcool2hic.sh",
                "y": 310,
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        },
                        "id": "#output_prefix"
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": ".",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "id": "#outdir"
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "13",
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 4
                        },
                        "id": "#nres"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "sbg:fileTypes": "MCOOL",
                        "required": false,
                        "id": "#input_mcool"
                    }
                ],
                "id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
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
                        "dockerPull": "duplexa/4dn-hic:v33",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:modifiedOn": 1502900127,
                "description": "",
                "sbg:sbgMaintained": false,
                "sbg:createdBy": "4dn-dcic",
                "successCodes": [],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "GZ",
                        "outputBinding": {
                            "glob": "'*.juicerformat.gz'"
                        },
                        "id": "#output_normvector"
                    }
                ],
                "sbg:image_url": null,
                "sbg:latestRevision": 6,
                "sbg:modifiedBy": "4dn-dcic",
                "arguments": [],
                "stdout": "",
                "x": 746,
                "sbg:projectName": "Dev",
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
                "sbg:revision": 6,
                "sbg:createdOn": 1499701567,
                "stdin": "",
                "sbg:revisionNotes": "removed valuefrom from output_prefix",
                "temporaryFailCodes": [],
                "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
                "sbg:contributors": [
                    "4dn-dcic"
                ]
            },
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.output_normvector"
                }
            ]
        },
        {
            "sbg:x": 338,
            "sbg:y": 160.65625,
            "id": "#cool2mcool",
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
            "run": {
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496166920,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496167248,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496181675,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
                        "sbg:modifiedOn": 1502996615,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "class": "CommandLineTool",
                "label": "cool2mcool",
                "sbg:validationErrors": [],
                "sbg:job": {
                    "inputs": {
                        "ncores": 9,
                        "outprefix": "outprefix-string-value",
                        "input_cool": {
                            "path": "/path/to/input_cool.ext",
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": []
                        }
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
                "cwlVersion": "sbg:draft-2",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "sbg:id": "4dn-dcic/dev/cool2mcool/3",
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "sbg:fileTypes": ".COOL",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_cool"
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "4",
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "id": "#ncores"
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        },
                        "id": "#outprefix"
                    }
                ],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/3/raw/",
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
                        "dockerPull": "duplexa/4dn-hic:v17",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:modifiedOn": 1502996615,
                "description": "",
                "sbg:sbgMaintained": false,
                "sbg:createdBy": "4dn-dcic",
                "successCodes": [],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".COOL",
                        "outputBinding": {
                            "glob": "*.multires.cool *.mcool"
                        },
                        "id": "#output_mcool"
                    }
                ],
                "sbg:image_url": null,
                "sbg:latestRevision": 3,
                "arguments": [],
                "stdout": "",
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "sbg:projectName": "Dev",
                "requirements": [],
                "sbg:revision": 3,
                "sbg:createdOn": 1496166920,
                "stdin": "",
                "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
                "temporaryFailCodes": [],
                "sbg:contributors": [
                    "4dn-dcic"
                ]
            },
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ]
        }
    ],
    "sbg:canvas_x": 0,
    "sbg:projectName": "Dev",
    "requirements": [],
    "sbg:revision": 12,
    "label": "Hi-C_processing_partC",
    "sbg:createdOn": 1496182175,
    "sbg:revisionNotes": "cool2mcool v3",
    "sbg:contributors": [
        "4dn-dcic"
    ]
}