{
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/1",
    "sbg:modifiedOn": 1496182242,
    "sbg:projectName": "Dev",
    "outputs": [
        {
            "sbg:x": 738,
            "source": [
                "#cool2mcool.output_mcool"
            ],
            "label": "output_mcool",
            "type": [
                "null",
                "File"
            ],
            "id": "#output_mcool",
            "sbg:includeInPorts": true,
            "sbg:y": 188.99716186523438
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "description": "",
    "sbg:createdOn": 1496182175,
    "sbg:createdBy": "4dn-dcic",
    "sbg:latestRevision": 3,
    "sbg:canvas_x": 0,
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_zoom": 1,
    "requirements": [],
    "sbg:revision": 1,
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:sbgMaintained": false,
    "steps": [
        {
            "sbg:x": 270,
            "run": {
                "sbg:projectName": "Dev",
                "sbg:id": "4dn-dcic/dev/coolerbalance/2",
                "sbg:modifiedOn": 1496180208,
                "arguments": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1496180027,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1496180123,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1496180208,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null
                    }
                ],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.outprefix"
                            }
                        },
                        "id": "#out_cool"
                    }
                ],
                "successCodes": [],
                "stdout": "",
                "description": "",
                "sbg:createdOn": 1496180027,
                "sbg:createdBy": "4dn-dcic",
                "stdin": "",
                "baseCommand": [
                    "run-cooler-balance.sh"
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:cmdPreview": "run-cooler-balance.sh",
                "sbg:latestRevision": 2,
                "temporaryFailCodes": [],
                "requirements": [],
                "sbg:revision": 2,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:sbgMaintained": false,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/coolerbalance/2/raw/",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    },
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "input_cool": {
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/input_cool.ext"
                        },
                        "max_iter": 4
                    }
                },
                "inputs": [
                    {
                        "sbg:fileTypes": ".COOL",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "id": "#input_cool"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "5000",
                        "sbg:stageInput": null,
                        "id": "#max_iter"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out",
                        "id": "#outprefix"
                    }
                ],
                "sbg:image_url": null,
                "label": "coolerbalance",
                "hints": [
                    {
                        "value": 8000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v17",
                        "class": "DockerRequirement"
                    },
                    {
                        "value": 8,
                        "class": "sbg:CPURequirement"
                    }
                ],
                "class": "CommandLineTool",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:project": "4dn-dcic/dev",
                "sbg:validationErrors": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ]
            },
            "id": "#coolerbalance",
            "inputs": [
                {
                    "id": "#coolerbalance.input_cool",
                    "source": [
                        "#input_cool"
                    ]
                },
                {
                    "id": "#coolerbalance.max_iter",
                    "default": 5000
                },
                {
                    "id": "#coolerbalance.outprefix",
                    "default": "out"
                }
            ],
            "sbg:y": 197.65625,
            "outputs": [
                {
                    "id": "#coolerbalance.out_cool"
                }
            ]
        },
        {
            "sbg:x": 542,
            "run": {
                "sbg:projectName": "Dev",
                "sbg:id": "4dn-dcic/dev/cool2mcool/2",
                "sbg:modifiedOn": 1496181675,
                "arguments": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1496166920,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1496167248,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1496181675,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null
                    }
                ],
                "outputs": [
                    {
                        "sbg:fileTypes": ".COOL",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "*.multires.cool"
                        },
                        "id": "#output_mcool"
                    }
                ],
                "successCodes": [],
                "stdout": "",
                "description": "",
                "sbg:createdOn": 1496166920,
                "sbg:createdBy": "4dn-dcic",
                "stdin": "",
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "sbg:latestRevision": 2,
                "temporaryFailCodes": [],
                "requirements": [],
                "sbg:revision": 2,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:sbgMaintained": false,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/2/raw/",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    },
                    "inputs": {
                        "input_cool": {
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/input_cool.ext"
                        },
                        "outprefix": "outprefix-string-value",
                        "ncores": 9
                    }
                },
                "inputs": [
                    {
                        "sbg:fileTypes": ".COOL",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "id": "#input_cool"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "4",
                        "sbg:stageInput": null,
                        "id": "#ncores"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out",
                        "id": "#outprefix"
                    }
                ],
                "sbg:image_url": null,
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v17",
                        "class": "DockerRequirement"
                    }
                ],
                "class": "CommandLineTool",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:project": "4dn-dcic/dev",
                "sbg:validationErrors": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ]
            },
            "id": "#cool2mcool",
            "inputs": [
                {
                    "id": "#cool2mcool.input_cool",
                    "source": [
                        "#coolerbalance.out_cool"
                    ]
                },
                {
                    "id": "#cool2mcool.ncores",
                    "source": [
                        "#ncores"
                    ]
                },
                {
                    "id": "#cool2mcool.outprefix",
                    "default": "out"
                }
            ],
            "sbg:y": 205.65625,
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ]
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/1/raw/",
    "label": "Hi-C_processing_partC",
    "inputs": [
        {
            "sbg:fileTypes": ".COOL",
            "sbg:x": 87,
            "label": "input_cool",
            "type": [
                "null",
                "File"
            ],
            "id": "#input_cool",
            "sbg:y": 182.99716186523438
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "4",
            "sbg:stageInput": null,
            "id": "#ncores"
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/1.png",
    "sbg:canvas_y": 0,
    "hints": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1496182175,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1496182242,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1496190458,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1499683283,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)"
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:project": "4dn-dcic/dev",
    "sbg:validationErrors": [],
    "class": "Workflow"
}