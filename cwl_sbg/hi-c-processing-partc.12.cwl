{
    "sbg:createdBy": "4dn-dcic",
    "sbg:modifiedOn": 1502996712,
    "sbg:projectName": "Dev",
    "sbg:canvas_x": 0,
    "class": "Workflow",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "label": "input_cool",
            "id": "#input_cool",
            "sbg:y": 143,
            "sbg:x": 90,
            "sbg:fileTypes": ".COOL"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "input_hic",
            "id": "#input_hic",
            "sbg:y": 312,
            "sbg:x": 91,
            "sbg:fileTypes": ".HIC"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:suggestedValue": 13,
            "sbg:stageInput": null,
            "id": "#nres",
            "sbg:toolDefaultValue": "13"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:includeInPorts": false,
            "required": false,
            "id": "#ncores",
            "sbg:toolDefaultValue": "4",
            "sbg:suggestedValue": 8,
            "sbg:stageInput": null
        }
    ],
    "requirements": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "label": "output_mcool",
            "sbg:includeInPorts": true,
            "required": false,
            "id": "#output_mcool",
            "source": [
                "#add_hic_normvector_to_mcool.output_mcool"
            ],
            "sbg:y": 144,
            "sbg:x": 934
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "output_normvector",
            "sbg:includeInPorts": true,
            "required": false,
            "id": "#output_normvector",
            "source": [
                "#extract_mcool_normvector_for_juicebox.output_normvector"
            ],
            "sbg:y": 351,
            "sbg:x": 939,
            "sbg:fileTypes": "GZ"
        }
    ],
    "sbg:revision": 12,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
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
        },
        {
            "sbg:revision": 12,
            "sbg:modifiedOn": 1502996712,
            "sbg:revisionNotes": "cool2mcool v3",
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:revisionNotes": "cool2mcool v3",
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/12",
    "label": "Hi-C_processing_partC",
    "sbg:canvas_y": 0,
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "hints": [
        {
            "class": "sbg:AWSInstanceType",
            "value": "r3.2xlarge"
        }
    ],
    "sbg:canvas_zoom": 1,
    "steps": [
        {
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "run": {
                "temporaryFailCodes": [],
                "sbg:createdBy": "4dn-dcic",
                "stdout": "",
                "successCodes": [],
                "baseCommand": [
                    "run-add-hicnormvector-to-mcool.sh"
                ],
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine"
                    }
                ],
                "x": 560,
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
                "stdin": "",
                "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outdir",
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "."
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "sbg:fileTypes": ".MCOOL",
                        "id": "#input_mcool",
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "sbg:fileTypes": ".HIC",
                        "id": "#input_hic",
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        }
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1499653917,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1499654479,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1499659501,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1499701134,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1502652131,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1502899564,
                        "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
                "cwlVersion": "sbg:draft-2",
                "y": 210,
                "label": "add_hic_normvector_to_mcool",
                "arguments": [],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
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
                "sbg:projectName": "Dev",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 4
                    },
                    "inputs": {
                        "outdir": "outdir-string-value",
                        "input_hic": {
                            "class": "File",
                            "path": "/path/to/input_hic.ext",
                            "size": 0,
                            "secondaryFiles": []
                        },
                        "input_mcool": {
                            "class": "File",
                            "path": "/path/to/input_mcool.ext",
                            "size": 0,
                            "secondaryFiles": []
                        }
                    }
                },
                "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
                "sbg:validationErrors": [],
                "sbg:createdOn": 1499653917,
                "id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
                "sbg:image_url": null,
                "sbg:sbgMaintained": false,
                "sbg:latestRevision": 5,
                "sbg:project": "4dn-dcic/dev",
                "description": "",
                "class": "CommandLineTool",
                "sbg:modifiedOn": 1502899564,
                "sbg:revision": 5
            },
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
            "sbg:y": 210,
            "sbg:x": 560
        },
        {
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.output_normvector"
                }
            ],
            "run": {
                "temporaryFailCodes": [],
                "sbg:createdBy": "4dn-dcic",
                "stdout": "",
                "successCodes": [],
                "baseCommand": [
                    "run-mcool2hic.sh"
                ],
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine"
                    }
                ],
                "x": 746,
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "'*.juicerformat.gz'"
                        },
                        "id": "#output_normvector",
                        "sbg:fileTypes": "GZ"
                    }
                ],
                "stdin": "",
                "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#output_prefix",
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "out"
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outdir",
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "."
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#nres",
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "position": 4,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "13"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_mcool",
                        "required": false,
                        "sbg:fileTypes": "MCOOL",
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        }
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1499701567,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1499701784,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1499703640,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1499704766,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1499705191,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1502899948,
                        "sbg:revisionNotes": "docker v33 and removed valuefrom for outdir (default is enough)",
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1502900127,
                        "sbg:revisionNotes": "removed valuefrom from output_prefix",
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "sbg:revisionNotes": "removed valuefrom from output_prefix",
                "cwlVersion": "sbg:draft-2",
                "y": 310,
                "label": "extract-mcool-normvector-for-juicebox",
                "arguments": [],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
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
                        "dockerPull": "duplexa/4dn-hic:v33"
                    }
                ],
                "sbg:projectName": "Dev",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    },
                    "inputs": {
                        "outdir": "outdir-string-value",
                        "nres": 7,
                        "output_prefix": "output_prefix-string-value",
                        "input_mcool": {
                            "class": "File",
                            "path": "/path/to/input_mcool.ext",
                            "size": 0,
                            "secondaryFiles": []
                        }
                    }
                },
                "sbg:cmdPreview": "run-mcool2hic.sh",
                "sbg:validationErrors": [],
                "sbg:createdOn": 1499701567,
                "id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
                "sbg:image_url": null,
                "sbg:sbgMaintained": false,
                "sbg:latestRevision": 6,
                "sbg:project": "4dn-dcic/dev",
                "description": "",
                "class": "CommandLineTool",
                "sbg:modifiedOn": 1502900127,
                "sbg:revision": 6
            },
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
            "sbg:y": 310,
            "sbg:x": 746
        },
        {
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "run": {
                "temporaryFailCodes": [],
                "sbg:createdBy": "4dn-dcic",
                "stdout": "",
                "cwlVersion": "sbg:draft-2",
                "class": "CommandLineTool",
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "requirements": [],
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
                "stdin": "",
                "sbg:revision": 3,
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".COOL",
                        "id": "#input_cool",
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#ncores",
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "4"
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix",
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "out"
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496166920,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496167248,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496181675,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502996615,
                        "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
                        "sbg:revision": 3
                    }
                ],
                "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
                "sbg:id": "4dn-dcic/dev/cool2mcool/3",
                "label": "cool2mcool",
                "arguments": [],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
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
                "sbg:projectName": "Dev",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    },
                    "inputs": {
                        "ncores": 9,
                        "input_cool": {
                            "class": "File",
                            "path": "/path/to/input_cool.ext",
                            "size": 0,
                            "secondaryFiles": []
                        },
                        "outprefix": "outprefix-string-value"
                    }
                },
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "sbg:validationErrors": [],
                "sbg:createdOn": 1496166920,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/3/raw/",
                "sbg:image_url": null,
                "sbg:sbgMaintained": false,
                "sbg:latestRevision": 3,
                "sbg:project": "4dn-dcic/dev",
                "description": "",
                "successCodes": [],
                "sbg:modifiedOn": 1502996615
            },
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
            "sbg:y": 160.65625,
            "sbg:x": 338
        }
    ],
    "sbg:createdOn": 1496182175,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/12/raw/",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/12.png",
    "sbg:sbgMaintained": false,
    "sbg:latestRevision": 12,
    "sbg:project": "4dn-dcic/dev",
    "description": "",
    "cwlVersion": "sbg:draft-2",
    "sbg:validationErrors": []
}