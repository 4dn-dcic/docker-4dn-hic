{
    "sbg:canvas_zoom": 1,
    "class": "Workflow",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:canvas_y": 0,
    "hints": [
        {
            "class": "sbg:AWSInstanceType",
            "value": "r3.2xlarge"
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/12.png",
    "label": "Hi-C_processing_partC",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:latestRevision": 12,
    "sbg:modifiedOn": 1502996712,
    "sbg:project": "4dn-dcic/dev",
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_x": 0,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/12",
    "inputs": [
        {
            "sbg:y": 143,
            "id": "#input_cool",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 90,
            "sbg:fileTypes": ".COOL",
            "label": "input_cool"
        },
        {
            "sbg:y": 312,
            "id": "#input_hic",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 91,
            "sbg:fileTypes": ".HIC",
            "label": "input_hic"
        },
        {
            "sbg:suggestedValue": 13,
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "13",
            "id": "#nres",
            "sbg:stageInput": null
        },
        {
            "sbg:suggestedValue": 8,
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "4",
            "sbg:includeInPorts": false,
            "id": "#ncores",
            "required": false
        }
    ],
    "sbg:revisionNotes": "cool2mcool v3",
    "description": "",
    "sbg:validationErrors": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/12/raw/",
    "requirements": [],
    "sbg:projectName": "Dev",
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
    "sbg:sbgMaintained": false,
    "steps": [
        {
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
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "sbg:x": 560,
            "run": {
                "class": "CommandLineTool",
                "arguments": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:project": "4dn-dcic/dev",
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
                "sbg:image_url": null,
                "stdout": "",
                "label": "add_hic_normvector_to_mcool",
                "y": 210,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:latestRevision": 5,
                "sbg:job": {
                    "inputs": {
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
                        },
                        "outdir": "outdir-string-value"
                    },
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 8000
                    }
                },
                "sbg:modifiedOn": 1502899564,
                "x": 560,
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
                "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": ".",
                        "id": "#outdir",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        }
                    },
                    {
                        "sbg:fileTypes": ".MCOOL",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#input_mcool",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        }
                    },
                    {
                        "sbg:fileTypes": ".HIC",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#input_hic",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        }
                    }
                ],
                "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
                "description": "",
                "temporaryFailCodes": [],
                "sbg:validationErrors": [],
                "sbg:revision": 5,
                "sbg:projectName": "Dev",
                "id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
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
                "successCodes": [],
                "sbg:sbgMaintained": false,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499653917
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499654479
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499659501
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499701134
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502652131
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502899564
                    }
                ],
                "sbg:createdBy": "4dn-dcic",
                "baseCommand": [
                    "run-add-hicnormvector-to-mcool.sh"
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
                "sbg:createdOn": 1499653917
            },
            "id": "#add_hic_normvector_to_mcool"
        },
        {
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
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.output_normvector"
                }
            ],
            "sbg:x": 746,
            "run": {
                "class": "CommandLineTool",
                "arguments": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:project": "4dn-dcic/dev",
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
                "sbg:image_url": null,
                "stdout": "",
                "label": "extract-mcool-normvector-for-juicebox",
                "y": 310,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:latestRevision": 6,
                "sbg:job": {
                    "inputs": {
                        "input_mcool": {
                            "size": 0,
                            "path": "/path/to/input_mcool.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "outdir": "outdir-string-value",
                        "nres": 7,
                        "output_prefix": "output_prefix-string-value"
                    },
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 8000
                    }
                },
                "sbg:modifiedOn": 1502900127,
                "x": 746,
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
                "sbg:cmdPreview": "run-mcool2hic.sh",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out",
                        "id": "#output_prefix",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        }
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": ".",
                        "id": "#outdir",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        }
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 4
                        },
                        "sbg:toolDefaultValue": "13",
                        "id": "#nres",
                        "sbg:stageInput": null
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        },
                        "sbg:fileTypes": "MCOOL",
                        "id": "#input_mcool",
                        "required": false
                    }
                ],
                "sbg:revisionNotes": "removed valuefrom from output_prefix",
                "description": "",
                "temporaryFailCodes": [],
                "sbg:validationErrors": [],
                "sbg:revision": 6,
                "sbg:projectName": "Dev",
                "id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
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
                "successCodes": [],
                "sbg:sbgMaintained": false,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499701567
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499701784
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499703640
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499704766
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499705191
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:revisionNotes": "docker v33 and removed valuefrom for outdir (default is enough)",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502899948
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:revisionNotes": "removed valuefrom from output_prefix",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502900127
                    }
                ],
                "sbg:createdBy": "4dn-dcic",
                "baseCommand": [
                    "run-mcool2hic.sh"
                ],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "GZ",
                        "id": "#output_normvector",
                        "outputBinding": {
                            "glob": "'*.juicerformat.gz'"
                        }
                    }
                ],
                "sbg:createdOn": 1499701567
            },
            "id": "#extract_mcool_normvector_for_juicebox"
        },
        {
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
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "sbg:x": 338,
            "run": {
                "class": "CommandLineTool",
                "sbg:image_url": null,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:modifiedBy": "4dn-dcic",
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
                "arguments": [],
                "stdout": "",
                "label": "cool2mcool",
                "sbg:revision": 3,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:latestRevision": 3,
                "sbg:job": {
                    "inputs": {
                        "ncores": 9,
                        "outprefix": "outprefix-string-value",
                        "input_cool": {
                            "size": 0,
                            "path": "/path/to/input_cool.ext",
                            "class": "File",
                            "secondaryFiles": []
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "sbg:modifiedOn": 1502996615,
                "sbg:project": "4dn-dcic/dev",
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:id": "4dn-dcic/dev/cool2mcool/3",
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".COOL",
                        "id": "#input_cool",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        }
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "sbg:toolDefaultValue": "4",
                        "id": "#ncores",
                        "sbg:stageInput": null
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out",
                        "id": "#outprefix",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        }
                    }
                ],
                "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
                "description": "",
                "temporaryFailCodes": [],
                "sbg:validationErrors": [],
                "sbg:projectName": "Dev",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/3/raw/",
                "requirements": [],
                "successCodes": [],
                "sbg:sbgMaintained": false,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496166920
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496167248
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496181675
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502996615
                    }
                ],
                "sbg:createdBy": "4dn-dcic",
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".COOL",
                        "id": "#output_mcool",
                        "outputBinding": {
                            "glob": "*.multires.cool *.mcool"
                        }
                    }
                ],
                "sbg:createdOn": 1496166920
            },
            "id": "#cool2mcool"
        }
    ],
    "sbg:createdBy": "4dn-dcic",
    "sbg:revision": 12,
    "outputs": [
        {
            "sbg:y": 144,
            "id": "#output_mcool",
            "source": [
                "#add_hic_normvector_to_mcool.output_mcool"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 934,
            "sbg:includeInPorts": true,
            "label": "output_mcool",
            "required": false
        },
        {
            "sbg:y": 351,
            "id": "#output_normvector",
            "required": false,
            "source": [
                "#extract_mcool_normvector_for_juicebox.output_normvector"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 939,
            "sbg:includeInPorts": true,
            "label": "output_normvector",
            "sbg:fileTypes": "GZ"
        }
    ],
    "sbg:createdOn": 1496182175
}