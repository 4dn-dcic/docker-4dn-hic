{
    "outputs": [
        {
            "sbg:y": 188.99716186523438,
            "sbg:x": 738,
            "label": "output_mcool",
            "id": "#output_mcool",
            "sbg:includeInPorts": true,
            "source": [
                "#cool2mcool.output_mcool"
            ],
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:createdOn": 1496182175,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/1",
    "cwlVersion": "sbg:draft-2",
    "sbg:latestRevision": 3,
    "sbg:canvas_x": 0,
    "hints": [],
    "description": "",
    "sbg:canvas_zoom": 1,
    "sbg:project": "4dn-dcic/dev",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/1.png",
    "steps": [
        {
            "outputs": [
                {
                    "id": "#coolerbalance.out_cool"
                }
            ],
            "sbg:x": 270,
            "sbg:y": 197.65625,
            "id": "#coolerbalance",
            "inputs": [
                {
                    "id": "#coolerbalance.input_cool",
                    "source": [
                        "#input_cool"
                    ]
                },
                {
                    "default": 5000,
                    "id": "#coolerbalance.max_iter"
                },
                {
                    "default": "out",
                    "id": "#coolerbalance.outprefix"
                }
            ],
            "run": {
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.outprefix"
                            }
                        },
                        "id": "#out_cool",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:createdOn": 1496180027,
                "sbg:id": "4dn-dcic/dev/coolerbalance/2",
                "sbg:latestRevision": 2,
                "sbg:image_url": null,
                "hints": [
                    {
                        "class": "sbg:MemRequirement",
                        "value": 8000
                    },
                    {
                        "dockerPull": "duplexa/4dn-hic:v17",
                        "class": "DockerRequirement",
                        "dockerImageId": ""
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 8
                    }
                ],
                "baseCommand": [
                    "run-cooler-balance.sh"
                ],
                "description": "",
                "sbg:project": "4dn-dcic/dev",
                "sbg:projectName": "Dev",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1496180027,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1496180123,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1496180208,
                        "sbg:revisionNotes": null
                    }
                ],
                "requirements": [],
                "sbg:revision": 2,
                "sbg:modifiedOn": 1496180208,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "arguments": [],
                "sbg:validationErrors": [],
                "sbg:sbgMaintained": false,
                "label": "coolerbalance",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/coolerbalance/2/raw/",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 8000
                    },
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "max_iter": 4,
                        "input_cool": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_cool.ext",
                            "class": "File"
                        }
                    }
                },
                "inputs": [
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true
                        },
                        "id": "#input_cool",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".COOL"
                    },
                    {
                        "sbg:toolDefaultValue": "5000",
                        "sbg:stageInput": null,
                        "id": "#max_iter",
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": true
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "out",
                        "id": "#outprefix",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": true
                        }
                    }
                ],
                "stdin": "",
                "sbg:cmdPreview": "run-cooler-balance.sh",
                "class": "CommandLineTool",
                "stdout": "",
                "sbg:createdBy": "4dn-dcic",
                "successCodes": [],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "temporaryFailCodes": [],
                "cwlVersion": "sbg:draft-2"
            }
        },
        {
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "sbg:x": 542,
            "sbg:y": 205.65625,
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
                    "default": "out",
                    "id": "#cool2mcool.outprefix"
                }
            ],
            "run": {
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.multires.cool"
                        },
                        "id": "#output_mcool",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".COOL"
                    }
                ],
                "sbg:createdOn": 1496166920,
                "sbg:id": "4dn-dcic/dev/cool2mcool/2",
                "sbg:latestRevision": 2,
                "sbg:image_url": null,
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
                        "dockerPull": "duplexa/4dn-hic:v17",
                        "class": "DockerRequirement",
                        "dockerImageId": ""
                    }
                ],
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "description": "",
                "sbg:project": "4dn-dcic/dev",
                "sbg:projectName": "Dev",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1496166920,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1496167248,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1496181675,
                        "sbg:revisionNotes": null
                    }
                ],
                "requirements": [],
                "sbg:revision": 2,
                "sbg:modifiedOn": 1496181675,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "arguments": [],
                "sbg:validationErrors": [],
                "sbg:sbgMaintained": false,
                "label": "cool2mcool",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/2/raw/",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "ncores": 9,
                        "input_cool": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_cool.ext",
                            "class": "File"
                        }
                    }
                },
                "inputs": [
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true
                        },
                        "id": "#input_cool",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".COOL"
                    },
                    {
                        "sbg:toolDefaultValue": "4",
                        "sbg:stageInput": null,
                        "id": "#ncores",
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": true
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "out",
                        "id": "#outprefix",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": true
                        }
                    }
                ],
                "stdin": "",
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "class": "CommandLineTool",
                "stdout": "",
                "sbg:createdBy": "4dn-dcic",
                "successCodes": [],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "temporaryFailCodes": [],
                "cwlVersion": "sbg:draft-2"
            }
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1496182175,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1496182242,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1496190458,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1499683283,
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)"
        }
    ],
    "requirements": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1496182242,
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
    "label": "Hi-C_processing_partC",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/1/raw/",
    "class": "Workflow",
    "sbg:canvas_y": 0,
    "sbg:createdBy": "4dn-dcic",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:revision": 1,
    "inputs": [
        {
            "sbg:y": 182.99716186523438,
            "sbg:x": 87,
            "sbg:fileTypes": ".COOL",
            "label": "input_cool",
            "id": "#input_cool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:toolDefaultValue": "4",
            "sbg:stageInput": null,
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ]
        }
    ]
}