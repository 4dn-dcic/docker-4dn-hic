{
    "hints": [],
    "description": "",
    "sbg:latestRevision": 3,
    "sbg:canvas_zoom": 1,
    "sbg:sbgMaintained": false,
    "sbg:createdOn": 1496182175,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "outputs": [
        {
            "id": "#output_mcool",
            "sbg:x": 738,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "output_mcool",
            "sbg:y": 188.99716186523438,
            "source": [
                "#cool2mcool.output_mcool"
            ]
        }
    ],
    "sbg:canvas_x": 0,
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:createdBy": "4dn-dcic",
    "sbg:canvas_y": 0,
    "cwlVersion": "sbg:draft-2",
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "steps": [
        {
            "id": "#coolerbalance",
            "sbg:x": 270,
            "run": {
                "hints": [
                    {
                        "class": "sbg:MemRequirement",
                        "value": 8000
                    },
                    {
                        "dockerImageId": "",
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v17"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 8
                    }
                ],
                "description": "",
                "sbg:image_url": null,
                "sbg:latestRevision": 2,
                "sbg:sbgMaintained": false,
                "sbg:cmdPreview": "run-cooler-balance.sh",
                "sbg:appVersion": [
                    "sbg:draft-2"
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
                "stdin": "",
                "sbg:validationErrors": [],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    },
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "input_cool": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_cool.ext"
                        },
                        "max_iter": 4
                    }
                },
                "successCodes": [],
                "stdout": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496180027
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496180123
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496180208
                    }
                ],
                "sbg:project": "4dn-dcic/dev",
                "baseCommand": [
                    "run-cooler-balance.sh"
                ],
                "sbg:createdBy": "4dn-dcic",
                "sbg:modifiedOn": 1496180208,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "requirements": [],
                "sbg:revision": 2,
                "arguments": [],
                "sbg:id": "4dn-dcic/dev/coolerbalance/2",
                "sbg:projectName": "Dev",
                "sbg:createdOn": 1496180027,
                "class": "CommandLineTool",
                "temporaryFailCodes": [],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/coolerbalance/2/raw/",
                "label": "coolerbalance",
                "cwlVersion": "sbg:draft-2",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true
                        },
                        "sbg:fileTypes": ".COOL",
                        "id": "#input_cool"
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": true
                        },
                        "id": "#max_iter",
                        "sbg:toolDefaultValue": "5000",
                        "sbg:stageInput": null
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": true
                        },
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out"
                    }
                ]
            },
            "outputs": [
                {
                    "id": "#coolerbalance.out_cool"
                }
            ],
            "sbg:y": 197.65625,
            "inputs": [
                {
                    "source": [
                        "#input_cool"
                    ],
                    "id": "#coolerbalance.input_cool"
                },
                {
                    "default": 5000,
                    "id": "#coolerbalance.max_iter"
                },
                {
                    "default": "out",
                    "id": "#coolerbalance.outprefix"
                }
            ]
        },
        {
            "id": "#cool2mcool",
            "sbg:x": 542,
            "run": {
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
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v17"
                    }
                ],
                "description": "",
                "sbg:image_url": null,
                "sbg:latestRevision": 2,
                "sbg:sbgMaintained": false,
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".COOL",
                        "outputBinding": {
                            "glob": "*.multires.cool"
                        },
                        "id": "#output_mcool"
                    }
                ],
                "stdin": "",
                "sbg:validationErrors": [],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    },
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "ncores": 9,
                        "input_cool": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_cool.ext"
                        }
                    }
                },
                "successCodes": [],
                "stdout": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496166920
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496167248
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496181675
                    }
                ],
                "sbg:project": "4dn-dcic/dev",
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "sbg:createdBy": "4dn-dcic",
                "sbg:modifiedOn": 1496181675,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "requirements": [],
                "sbg:revision": 2,
                "arguments": [],
                "sbg:id": "4dn-dcic/dev/cool2mcool/2",
                "sbg:projectName": "Dev",
                "sbg:createdOn": 1496166920,
                "class": "CommandLineTool",
                "temporaryFailCodes": [],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/2/raw/",
                "label": "cool2mcool",
                "cwlVersion": "sbg:draft-2",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true
                        },
                        "sbg:fileTypes": ".COOL",
                        "id": "#input_cool"
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": true
                        },
                        "id": "#ncores",
                        "sbg:toolDefaultValue": "4",
                        "sbg:stageInput": null
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": true
                        },
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out"
                    }
                ]
            },
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "sbg:y": 205.65625,
            "inputs": [
                {
                    "source": [
                        "#coolerbalance.out_cool"
                    ],
                    "id": "#cool2mcool.input_cool"
                },
                {
                    "source": [
                        "#ncores"
                    ],
                    "id": "#cool2mcool.ncores"
                },
                {
                    "default": "out",
                    "id": "#cool2mcool.outprefix"
                }
            ]
        }
    ],
    "sbg:modifiedOn": 1496182242,
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:revision": 1,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/1.png",
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/1",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496182175
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496182242
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496190458
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)",
            "sbg:modifiedOn": 1499683283
        }
    ],
    "requirements": [],
    "class": "Workflow",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/1/raw/",
    "label": "Hi-C_processing_partC",
    "inputs": [
        {
            "sbg:fileTypes": ".COOL",
            "id": "#input_cool",
            "sbg:x": 87,
            "type": [
                "null",
                "File"
            ],
            "label": "input_cool",
            "sbg:y": 182.99716186523438
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "sbg:toolDefaultValue": "4",
            "sbg:stageInput": null
        }
    ]
}