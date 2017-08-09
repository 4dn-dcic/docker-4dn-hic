{
    "sbg:modifiedBy": "4dn-dcic",
    "steps": [
        {
            "id": "#coolerbalance",
            "sbg:y": 197.65625,
            "run": {
                "arguments": [],
                "baseCommand": [
                    "run-cooler-balance.sh"
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "stdin": "",
                "temporaryFailCodes": [],
                "requirements": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "successCodes": [],
                "hints": [
                    {
                        "class": "sbg:MemRequirement",
                        "value": 8000
                    },
                    {
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v17",
                        "dockerImageId": ""
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 8
                    }
                ],
                "sbg:sbgMaintained": false,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/coolerbalance/2/raw/",
                "sbg:createdOn": 1496180027,
                "sbg:cmdPreview": "run-cooler-balance.sh",
                "sbg:projectName": "Dev",
                "sbg:revision": 2,
                "sbg:job": {
                    "inputs": {
                        "max_iter": 4,
                        "outprefix": "outprefix-string-value",
                        "input_cool": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_cool.ext"
                        }
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    }
                },
                "inputs": [
                    {
                        "sbg:fileTypes": ".COOL",
                        "id": "#input_cool",
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:toolDefaultValue": "5000",
                        "id": "#max_iter",
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "sbg:toolDefaultValue": "out",
                        "id": "#outprefix",
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    }
                ],
                "description": "",
                "sbg:modifiedOn": 1496180208,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1496180027,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:modifiedOn": 1496180123,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:modifiedOn": 1496180208,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "stdout": "",
                "sbg:id": "4dn-dcic/dev/coolerbalance/2",
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.outprefix",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#out_cool",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "label": "coolerbalance",
                "cwlVersion": "sbg:draft-2",
                "class": "CommandLineTool",
                "sbg:image_url": null,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:project": "4dn-dcic/dev",
                "sbg:createdBy": "4dn-dcic",
                "sbg:validationErrors": [],
                "sbg:latestRevision": 2
            },
            "sbg:x": 270,
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
            "outputs": [
                {
                    "id": "#coolerbalance.out_cool"
                }
            ]
        },
        {
            "id": "#cool2mcool",
            "sbg:y": 205.65625,
            "run": {
                "arguments": [],
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "stdin": "",
                "temporaryFailCodes": [],
                "requirements": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "successCodes": [],
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
                "sbg:sbgMaintained": false,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/2/raw/",
                "sbg:createdOn": 1496166920,
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "sbg:projectName": "Dev",
                "sbg:revision": 2,
                "sbg:job": {
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "ncores": 9,
                        "input_cool": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_cool.ext"
                        }
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
                "inputs": [
                    {
                        "sbg:fileTypes": ".COOL",
                        "id": "#input_cool",
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:toolDefaultValue": "4",
                        "id": "#ncores",
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "sbg:toolDefaultValue": "out",
                        "id": "#outprefix",
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    }
                ],
                "description": "",
                "sbg:modifiedOn": 1496181675,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1496166920,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:modifiedOn": 1496167248,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:modifiedOn": 1496181675,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "stdout": "",
                "sbg:id": "4dn-dcic/dev/cool2mcool/2",
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.multires.cool"
                        },
                        "sbg:fileTypes": ".COOL",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#output_mcool"
                    }
                ],
                "label": "cool2mcool",
                "cwlVersion": "sbg:draft-2",
                "class": "CommandLineTool",
                "sbg:image_url": null,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:project": "4dn-dcic/dev",
                "sbg:createdBy": "4dn-dcic",
                "sbg:validationErrors": [],
                "sbg:latestRevision": 2
            },
            "sbg:x": 542,
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
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ]
        }
    ],
    "sbg:modifiedOn": 1496182242,
    "requirements": [],
    "sbg:sbgMaintained": false,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/1/raw/",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1496182175,
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1496182242,
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1496190458,
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1499683283,
            "sbg:revision": 3,
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)",
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "inputs": [
        {
            "sbg:fileTypes": ".COOL",
            "sbg:y": 182.99716186523438,
            "sbg:x": 87,
            "id": "#input_cool",
            "type": [
                "null",
                "File"
            ],
            "label": "input_cool"
        },
        {
            "sbg:toolDefaultValue": "4",
            "id": "#ncores",
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "sbg:canvas_zoom": 1,
    "sbg:createdOn": 1496182175,
    "sbg:projectName": "Dev",
    "sbg:revision": 1,
    "sbg:validationErrors": [],
    "description": "",
    "sbg:canvas_x": 0,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "hints": [],
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/1",
    "outputs": [
        {
            "sbg:includeInPorts": true,
            "sbg:y": 188.99716186523438,
            "source": [
                "#cool2mcool.output_mcool"
            ],
            "id": "#output_mcool",
            "sbg:x": 738,
            "type": [
                "null",
                "File"
            ],
            "label": "output_mcool"
        }
    ],
    "label": "Hi-C_processing_partC",
    "cwlVersion": "sbg:draft-2",
    "class": "Workflow",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/1.png",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdBy": "4dn-dcic",
    "sbg:canvas_y": 0,
    "sbg:latestRevision": 3
}