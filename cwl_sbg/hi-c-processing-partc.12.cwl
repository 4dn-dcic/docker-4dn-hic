{
    "inputs": [
        {
            "sbg:fileTypes": ".COOL",
            "type": [
                "null",
                "File"
            ],
            "label": "input_cool",
            "sbg:x": 90,
            "sbg:y": 143,
            "id": "#input_cool"
        },
        {
            "sbg:fileTypes": ".HIC",
            "type": [
                "null",
                "File"
            ],
            "label": "input_hic",
            "sbg:x": 91,
            "sbg:y": 312,
            "id": "#input_hic"
        },
        {
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "sbg:suggestedValue": 13,
            "sbg:toolDefaultValue": "13",
            "id": "#nres"
        },
        {
            "required": false,
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "4",
            "sbg:suggestedValue": 8,
            "type": [
                "null",
                "int"
            ],
            "sbg:includeInPorts": false,
            "id": "#ncores"
        }
    ],
    "sbg:canvas_zoom": 1,
    "description": "",
    "label": "Hi-C_processing_partC",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/12/raw/",
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/12",
    "requirements": [],
    "sbg:projectName": "Dev",
    "sbg:validationErrors": [],
    "steps": [
        {
            "run": {
                "x": 560,
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
                "description": "",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 8000
                    },
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
                    }
                },
                "id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
                "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
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
                "sbg:project": "4dn-dcic/dev",
                "sbg:validationErrors": [],
                "sbg:modifiedOn": 1502899564,
                "stdin": "",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outdir",
                        "sbg:toolDefaultValue": ".",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": true
                        }
                    },
                    {
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_mcool",
                        "sbg:fileTypes": ".MCOOL",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": true
                        }
                    },
                    {
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_hic",
                        "sbg:fileTypes": ".HIC",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true
                        }
                    }
                ],
                "sbg:createdOn": 1499653917,
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
                "stdout": "",
                "successCodes": [],
                "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
                "arguments": [],
                "sbg:projectName": "Dev",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "class": "CommandLineTool",
                "sbg:createdBy": "4dn-dcic",
                "temporaryFailCodes": [],
                "label": "add_hic_normvector_to_mcool",
                "hints": [
                    {
                        "value": 8000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "dockerPull": "duplexa/4dn-hic:v33",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    },
                    {
                        "value": 4,
                        "class": "sbg:CPURequirement"
                    }
                ],
                "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
                "baseCommand": [
                    "run-add-hicnormvector-to-mcool.sh"
                ],
                "sbg:sbgMaintained": false,
                "sbg:revision": 5,
                "sbg:image_url": null,
                "cwlVersion": "sbg:draft-2",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:latestRevision": 5,
                "sbg:modifiedBy": "4dn-dcic",
                "y": 210
            },
            "inputs": [
                {
                    "default": ".",
                    "id": "#add_hic_normvector_to_mcool.outdir"
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
            "sbg:x": 560,
            "sbg:y": 210,
            "id": "#add_hic_normvector_to_mcool"
        },
        {
            "run": {
                "x": 746,
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
                "description": "",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 8000
                    },
                    "inputs": {
                        "output_prefix": "output_prefix-string-value",
                        "nres": 7,
                        "outdir": "outdir-string-value",
                        "input_mcool": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_mcool.ext"
                        }
                    }
                },
                "id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
                "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
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
                "sbg:project": "4dn-dcic/dev",
                "sbg:validationErrors": [],
                "sbg:modifiedOn": 1502900127,
                "stdin": "",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#output_prefix",
                        "sbg:toolDefaultValue": "out",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": true
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
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": true
                        }
                    },
                    {
                        "sbg:stageInput": null,
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#nres",
                        "sbg:toolDefaultValue": "13",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 4,
                            "separate": true
                        }
                    },
                    {
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_mcool",
                        "sbg:fileTypes": "MCOOL",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true
                        }
                    }
                ],
                "sbg:createdOn": 1499701567,
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
                "stdout": "",
                "successCodes": [],
                "sbg:cmdPreview": "run-mcool2hic.sh",
                "arguments": [],
                "sbg:projectName": "Dev",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "class": "CommandLineTool",
                "sbg:createdBy": "4dn-dcic",
                "temporaryFailCodes": [],
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
                        "dockerPull": "duplexa/4dn-hic:v33",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:revisionNotes": "removed valuefrom from output_prefix",
                "baseCommand": [
                    "run-mcool2hic.sh"
                ],
                "sbg:sbgMaintained": false,
                "sbg:revision": 6,
                "sbg:image_url": null,
                "cwlVersion": "sbg:draft-2",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:latestRevision": 6,
                "sbg:modifiedBy": "4dn-dcic",
                "y": 310
            },
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
                    "source": [
                        "#nres"
                    ],
                    "default": 13,
                    "id": "#extract_mcool_normvector_for_juicebox.nres"
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
            "sbg:x": 746,
            "sbg:y": 310,
            "id": "#extract_mcool_normvector_for_juicebox"
        },
        {
            "run": {
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_cool",
                        "sbg:fileTypes": ".COOL",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true
                        }
                    },
                    {
                        "sbg:stageInput": null,
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#ncores",
                        "sbg:toolDefaultValue": "4",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": true
                        }
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": true
                        }
                    }
                ],
                "sbg:revision": 3,
                "description": "",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "input_cool": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_cool.ext"
                        },
                        "outprefix": "outprefix-string-value",
                        "ncores": 9
                    }
                },
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
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/3/raw/",
                "sbg:id": "4dn-dcic/dev/cool2mcool/3",
                "requirements": [],
                "sbg:project": "4dn-dcic/dev",
                "sbg:validationErrors": [],
                "sbg:modifiedOn": 1502996615,
                "stdin": "",
                "sbg:createdOn": 1496166920,
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
                "stdout": "",
                "successCodes": [],
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "arguments": [],
                "sbg:projectName": "Dev",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "class": "CommandLineTool",
                "sbg:createdBy": "4dn-dcic",
                "temporaryFailCodes": [],
                "label": "cool2mcool",
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
                        "dockerPull": "duplexa/4dn-hic:v17",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    }
                ],
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "sbg:sbgMaintained": false,
                "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
                "sbg:image_url": null,
                "cwlVersion": "sbg:draft-2",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:latestRevision": 3
            },
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
                    "default": 8,
                    "id": "#cool2mcool.ncores"
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
            ],
            "sbg:x": 338,
            "sbg:y": 160.65625,
            "id": "#cool2mcool"
        }
    ],
    "sbg:canvas_x": 0,
    "sbg:createdOn": 1496182175,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1496182175,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1496182242,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1496190458,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2
        },
        {
            "sbg:modifiedOn": 1499683283,
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1502649274,
            "sbg:revisionNotes": "now partD and E are integrated.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4
        },
        {
            "sbg:modifiedOn": 1502649307,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5
        },
        {
            "sbg:modifiedOn": 1502652177,
            "sbg:revisionNotes": "updated add_hic_normvector_to_mcool so it can deal with non-mcool extension input.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6
        },
        {
            "sbg:modifiedOn": 1502653559,
            "sbg:revisionNotes": "replaced extract-mcool-normvector-for-juicebox workflow to the corresponding app.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 7
        },
        {
            "sbg:modifiedOn": 1502712335,
            "sbg:revisionNotes": "r3.2xlarge",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 8
        },
        {
            "sbg:modifiedOn": 1502899628,
            "sbg:revisionNotes": "add_hic_normvector rev5 (just removed 'valuefrom' for outdir, no real change)",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 9
        },
        {
            "sbg:modifiedOn": 1502899984,
            "sbg:revisionNotes": "extract-mcool rev5 (docker v33 and removed  valuefrom for outdir)",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 10
        },
        {
            "sbg:modifiedOn": 1502900163,
            "sbg:revisionNotes": "extract-mcool rev6, (removed valuefrom from output_prefix, no real change)",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 11
        },
        {
            "sbg:modifiedOn": 1502996712,
            "sbg:revisionNotes": "cool2mcool v3",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 12
        }
    ],
    "outputs": [
        {
            "required": false,
            "label": "output_mcool",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "sbg:x": 934,
            "source": [
                "#add_hic_normvector_to_mcool.output_mcool"
            ],
            "sbg:y": 144,
            "id": "#output_mcool"
        },
        {
            "required": false,
            "label": "output_normvector",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "GZ",
            "sbg:x": 939,
            "source": [
                "#extract_mcool_normvector_for_juicebox.output_normvector"
            ],
            "sbg:y": 351,
            "sbg:includeInPorts": true,
            "id": "#output_normvector"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "class": "Workflow",
    "sbg:createdBy": "4dn-dcic",
    "hints": [
        {
            "value": "r3.2xlarge",
            "class": "sbg:AWSInstanceType"
        }
    ],
    "sbg:revisionNotes": "cool2mcool v3",
    "sbg:canvas_y": 0,
    "sbg:sbgMaintained": false,
    "sbg:revision": 12,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/12.png",
    "cwlVersion": "sbg:draft-2",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:latestRevision": 12,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:modifiedOn": 1502996712
}