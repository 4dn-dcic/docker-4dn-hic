{
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:latestRevision": 12,
    "description": "",
    "steps": [
        {
            "inputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.outdir",
                    "default": "."
                },
                {
                    "source": [
                        "#cool2mcool.output_mcool"
                    ],
                    "id": "#add_hic_normvector_to_mcool.input_mcool"
                },
                {
                    "source": [
                        "#input_hic"
                    ],
                    "id": "#add_hic_normvector_to_mcool.input_hic"
                }
            ],
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "run": {
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
                "sbg:project": "4dn-dcic/dev",
                "sbg:latestRevision": 5,
                "arguments": [],
                "description": "",
                "id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
                "label": "add_hic_normvector_to_mcool",
                "sbg:projectName": "Dev",
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
                "x": 560,
                "sbg:createdOn": 1499653917,
                "stdin": "",
                "sbg:job": {
                    "inputs": {
                        "outdir": "outdir-string-value",
                        "input_mcool": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_mcool.ext",
                            "class": "File",
                            "size": 0
                        },
                        "input_hic": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_hic.ext",
                            "class": "File",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 4
                    }
                },
                "y": 210,
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
                "sbg:revision": 5,
                "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
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
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": ".MCOOL",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_mcool",
                        "required": false
                    },
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
                        "id": "#input_hic",
                        "required": false
                    }
                ],
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
                "sbg:sbgMaintained": false,
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
                "sbg:modifiedOn": 1502899564,
                "temporaryFailCodes": [],
                "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
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
                "stdout": "",
                "sbg:modifiedBy": "4dn-dcic",
                "baseCommand": [
                    "run-add-hicnormvector-to-mcool.sh"
                ],
                "class": "CommandLineTool",
                "sbg:image_url": null,
                "successCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:createdBy": "4dn-dcic"
            },
            "sbg:y": 210,
            "sbg:x": 560,
            "id": "#add_hic_normvector_to_mcool"
        },
        {
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
                    "source": [
                        "#nres"
                    ],
                    "id": "#extract_mcool_normvector_for_juicebox.nres",
                    "default": 13
                },
                {
                    "source": [
                        "#add_hic_normvector_to_mcool.output_mcool"
                    ],
                    "id": "#extract_mcool_normvector_for_juicebox.input_mcool"
                }
            ],
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.output_normvector"
                }
            ],
            "run": {
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:cmdPreview": "run-mcool2hic.sh",
                "sbg:project": "4dn-dcic/dev",
                "sbg:latestRevision": 6,
                "arguments": [],
                "description": "",
                "id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
                "label": "extract-mcool-normvector-for-juicebox",
                "sbg:projectName": "Dev",
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
                "x": 746,
                "sbg:createdOn": 1499701567,
                "stdin": "",
                "sbg:job": {
                    "inputs": {
                        "nres": 7,
                        "outdir": "outdir-string-value",
                        "input_mcool": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_mcool.ext",
                            "class": "File",
                            "size": 0
                        },
                        "output_prefix": "output_prefix-string-value"
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    }
                },
                "y": 310,
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
                "sbg:revision": 6,
                "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
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
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outdir",
                        "sbg:toolDefaultValue": "."
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
                    },
                    {
                        "sbg:fileTypes": "MCOOL",
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_mcool",
                        "required": false
                    }
                ],
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
                "sbg:sbgMaintained": false,
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
                "sbg:modifiedOn": 1502900127,
                "temporaryFailCodes": [],
                "sbg:revisionNotes": "removed valuefrom from output_prefix",
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
                "stdout": "",
                "sbg:modifiedBy": "4dn-dcic",
                "baseCommand": [
                    "run-mcool2hic.sh"
                ],
                "class": "CommandLineTool",
                "sbg:image_url": null,
                "successCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:createdBy": "4dn-dcic"
            },
            "sbg:y": 310,
            "sbg:x": 746,
            "id": "#extract_mcool_normvector_for_juicebox"
        },
        {
            "inputs": [
                {
                    "source": [
                        "#input_cool"
                    ],
                    "id": "#cool2mcool.input_cool"
                },
                {
                    "source": [
                        "#ncores"
                    ],
                    "id": "#cool2mcool.ncores",
                    "default": 8
                },
                {
                    "id": "#cool2mcool.outprefix",
                    "default": "out"
                }
            ],
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "run": {
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "sbg:project": "4dn-dcic/dev",
                "sbg:latestRevision": 3,
                "arguments": [],
                "description": "",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/3/raw/",
                "sbg:projectName": "Dev",
                "outputs": [
                    {
                        "sbg:fileTypes": ".COOL",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#output_mcool",
                        "outputBinding": {
                            "glob": "*.multires.cool *.mcool"
                        }
                    }
                ],
                "sbg:createdOn": 1496166920,
                "stdin": "",
                "sbg:job": {
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "input_cool": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_cool.ext",
                            "class": "File",
                            "size": 0
                        },
                        "ncores": 9
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
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
                "sbg:revision": 3,
                "sbg:id": "4dn-dcic/dev/cool2mcool/3",
                "label": "cool2mcool",
                "requirements": [],
                "inputs": [
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
                        "id": "#input_cool"
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
                        "id": "#ncores",
                        "sbg:toolDefaultValue": "4"
                    },
                    {
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out"
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
                "sbg:modifiedOn": 1502996615,
                "temporaryFailCodes": [],
                "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
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
                "stdout": "",
                "sbg:modifiedBy": "4dn-dcic",
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "class": "CommandLineTool",
                "sbg:image_url": null,
                "sbg:createdBy": "4dn-dcic",
                "successCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:sbgMaintained": false
            },
            "sbg:y": 160.65625,
            "sbg:x": 338,
            "id": "#cool2mcool"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/12/raw/",
    "sbg:projectName": "Dev",
    "outputs": [
        {
            "label": "output_mcool",
            "sbg:includeInPorts": true,
            "sbg:x": 934,
            "sbg:y": 144,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "id": "#output_mcool",
            "source": [
                "#add_hic_normvector_to_mcool.output_mcool"
            ]
        },
        {
            "label": "output_normvector",
            "sbg:fileTypes": "GZ",
            "sbg:includeInPorts": true,
            "sbg:x": 939,
            "sbg:y": 351,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "id": "#output_normvector",
            "source": [
                "#extract_mcool_normvector_for_juicebox.output_normvector"
            ]
        }
    ],
    "sbg:canvas_y": 0,
    "sbg:createdOn": 1496182175,
    "sbg:canvas_zoom": 1,
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
    "sbg:revision": 12,
    "sbg:sbgMaintained": false,
    "inputs": [
        {
            "label": "input_cool",
            "sbg:fileTypes": ".COOL",
            "sbg:x": 90,
            "sbg:y": 143,
            "type": [
                "null",
                "File"
            ],
            "id": "#input_cool"
        },
        {
            "label": "input_hic",
            "sbg:fileTypes": ".HIC",
            "sbg:x": 91,
            "sbg:y": 312,
            "type": [
                "null",
                "File"
            ],
            "id": "#input_hic"
        },
        {
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "id": "#nres",
            "sbg:toolDefaultValue": "13",
            "sbg:suggestedValue": 13
        },
        {
            "sbg:toolDefaultValue": "4",
            "required": false,
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "sbg:includeInPorts": false,
            "sbg:suggestedValue": 8
        }
    ],
    "requirements": [],
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/12",
    "cwlVersion": "sbg:draft-2",
    "sbg:validationErrors": [],
    "sbg:modifiedOn": 1502996712,
    "sbg:canvas_x": 0,
    "sbg:revisionNotes": "cool2mcool v3",
    "hints": [
        {
            "value": "r3.2xlarge",
            "class": "sbg:AWSInstanceType"
        }
    ],
    "label": "Hi-C_processing_partC",
    "sbg:modifiedBy": "4dn-dcic",
    "class": "Workflow",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/12.png",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdBy": "4dn-dcic"
}