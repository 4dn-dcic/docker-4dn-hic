{
    "sbg:canvas_y": 0,
    "sbg:canvas_x": 0,
    "requirements": [],
    "inputs": [
        {
            "id": "#input_cool",
            "sbg:x": 87,
            "type": [
                "null",
                "File"
            ],
            "label": "input_cool",
            "sbg:fileTypes": ".COOL",
            "sbg:y": 182.99716186523438
        },
        {
            "sbg:toolDefaultValue": "4",
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null
        }
    ],
    "sbg:revision": 1,
    "steps": [
        {
            "id": "#coolerbalance",
            "sbg:x": 270,
            "run": {
                "temporaryFailCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "stdin": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496180027,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496180123,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496180208,
                        "sbg:revision": 2
                    }
                ],
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "id": "#input_cool",
                        "sbg:fileTypes": ".COOL",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "5000",
                        "id": "#max_iter",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "out",
                        "id": "#outprefix",
                        "type": [
                            "null",
                            "string"
                        ]
                    }
                ],
                "baseCommand": [
                    "run-cooler-balance.sh"
                ],
                "successCodes": [],
                "sbg:revision": 2,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/coolerbalance/2/raw/",
                "sbg:id": "4dn-dcic/dev/coolerbalance/2",
                "class": "CommandLineTool",
                "sbg:latestRevision": 2,
                "label": "coolerbalance",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:image_url": null,
                "sbg:createdBy": "4dn-dcic",
                "sbg:project": "4dn-dcic/dev",
                "hints": [
                    {
                        "value": 8000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "dockerImageId": "",
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v17"
                    },
                    {
                        "value": 8,
                        "class": "sbg:CPURequirement"
                    }
                ],
                "sbg:sbgMaintained": false,
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 8000
                    },
                    "inputs": {
                        "input_cool": {
                            "path": "/path/to/input_cool.ext",
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "outprefix": "outprefix-string-value",
                        "max_iter": 4
                    }
                },
                "outputs": [
                    {
                        "id": "#out_cool",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.outprefix"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:projectName": "Dev",
                "cwlVersion": "sbg:draft-2",
                "sbg:createdOn": 1496180027,
                "stdout": "",
                "sbg:cmdPreview": "run-cooler-balance.sh",
                "sbg:validationErrors": [],
                "requirements": [],
                "sbg:modifiedOn": 1496180208,
                "description": "",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "arguments": []
            },
            "inputs": [
                {
                    "source": [
                        "#input_cool"
                    ],
                    "id": "#coolerbalance.input_cool"
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
            "id": "#cool2mcool",
            "sbg:x": 542,
            "run": {
                "temporaryFailCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "stdin": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496166920,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496167248,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496181675,
                        "sbg:revision": 2
                    }
                ],
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "id": "#input_cool",
                        "sbg:fileTypes": ".COOL",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "4",
                        "id": "#ncores",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "out",
                        "id": "#outprefix",
                        "type": [
                            "null",
                            "string"
                        ]
                    }
                ],
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "successCodes": [],
                "sbg:revision": 2,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/2/raw/",
                "sbg:id": "4dn-dcic/dev/cool2mcool/2",
                "class": "CommandLineTool",
                "sbg:latestRevision": 2,
                "label": "cool2mcool",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:image_url": null,
                "sbg:createdBy": "4dn-dcic",
                "sbg:project": "4dn-dcic/dev",
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
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v17"
                    }
                ],
                "sbg:sbgMaintained": false,
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "input_cool": {
                            "path": "/path/to/input_cool.ext",
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "outprefix": "outprefix-string-value",
                        "ncores": 9
                    }
                },
                "outputs": [
                    {
                        "id": "#output_mcool",
                        "sbg:fileTypes": ".COOL",
                        "outputBinding": {
                            "glob": "*.multires.cool"
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:projectName": "Dev",
                "cwlVersion": "sbg:draft-2",
                "sbg:createdOn": 1496166920,
                "stdout": "",
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "sbg:validationErrors": [],
                "requirements": [],
                "sbg:modifiedOn": 1496181675,
                "description": "",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "arguments": []
            },
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
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/1",
    "class": "Workflow",
    "sbg:latestRevision": 3,
    "sbg:createdBy": "4dn-dcic",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/1.png",
    "description": "",
    "sbg:project": "4dn-dcic/dev",
    "hints": [],
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:projectName": "Dev",
    "cwlVersion": "sbg:draft-2",
    "sbg:createdOn": 1496182175,
    "sbg:canvas_zoom": 1,
    "sbg:validationErrors": [],
    "sbg:modifiedOn": 1496182242,
    "label": "Hi-C_processing_partC",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496182175,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496182242,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496190458,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)",
            "sbg:modifiedOn": 1499683283,
            "sbg:revision": 3
        }
    ],
    "outputs": [
        {
            "source": [
                "#cool2mcool.output_mcool"
            ],
            "id": "#output_mcool",
            "sbg:x": 738,
            "type": [
                "null",
                "File"
            ],
            "label": "output_mcool",
            "sbg:includeInPorts": true,
            "sbg:y": 188.99716186523438
        }
    ]
}