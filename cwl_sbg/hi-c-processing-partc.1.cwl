{
    "requirements": [],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:canvas_y": 0,
    "class": "Workflow",
    "sbg:validationErrors": [],
    "steps": [
        {
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
            "run": {
                "requirements": [],
                "label": "coolerbalance",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:cmdPreview": "run-cooler-balance.sh",
                "baseCommand": [
                    "run-cooler-balance.sh"
                ],
                "arguments": [],
                "class": "CommandLineTool",
                "sbg:validationErrors": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1496180027
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1496180123
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1496180208
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "max_iter": 4,
                        "input_cool": {
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/input_cool.ext",
                            "secondaryFiles": []
                        },
                        "outprefix": "outprefix-string-value"
                    },
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 8000
                    }
                },
                "sbg:latestRevision": 2,
                "sbg:id": "4dn-dcic/dev/coolerbalance/2",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/coolerbalance/2/raw/",
                "stdin": "",
                "outputs": [
                    {
                        "id": "#out_cool",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.outprefix",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        }
                    }
                ],
                "sbg:revision": 2,
                "inputs": [
                    {
                        "id": "#input_cool",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": ".COOL"
                    },
                    {
                        "id": "#max_iter",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "5000",
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:stageInput": null
                    },
                    {
                        "id": "#outprefix",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out",
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    }
                ],
                "sbg:projectName": "Dev",
                "successCodes": [],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:createdOn": 1496180027,
                "sbg:createdBy": "4dn-dcic",
                "sbg:modifiedOn": 1496180208,
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
                "sbg:image_url": null,
                "temporaryFailCodes": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:project": "4dn-dcic/dev",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:sbgMaintained": false,
                "stdout": "",
                "description": ""
            },
            "sbg:y": 197.65625,
            "id": "#coolerbalance",
            "outputs": [
                {
                    "id": "#coolerbalance.out_cool"
                }
            ],
            "sbg:x": 270
        },
        {
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
            "run": {
                "requirements": [],
                "label": "cool2mcool",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "arguments": [],
                "class": "CommandLineTool",
                "sbg:validationErrors": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1496166920
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1496167248
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1496181675
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "ncores": 9,
                        "input_cool": {
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/input_cool.ext",
                            "secondaryFiles": []
                        },
                        "outprefix": "outprefix-string-value"
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "sbg:latestRevision": 2,
                "sbg:id": "4dn-dcic/dev/cool2mcool/2",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/2/raw/",
                "stdin": "",
                "outputs": [
                    {
                        "id": "#output_mcool",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".COOL",
                        "outputBinding": {
                            "glob": "*.multires.cool"
                        }
                    }
                ],
                "sbg:revision": 2,
                "inputs": [
                    {
                        "id": "#input_cool",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": ".COOL"
                    },
                    {
                        "id": "#ncores",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "4",
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:stageInput": null
                    },
                    {
                        "id": "#outprefix",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out",
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    }
                ],
                "sbg:projectName": "Dev",
                "successCodes": [],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:createdOn": 1496166920,
                "sbg:createdBy": "4dn-dcic",
                "sbg:modifiedOn": 1496181675,
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
                "sbg:image_url": null,
                "temporaryFailCodes": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:project": "4dn-dcic/dev",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:sbgMaintained": false,
                "stdout": "",
                "description": ""
            },
            "sbg:y": 205.65625,
            "id": "#cool2mcool",
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "sbg:x": 542
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1496182175
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1496182242
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1496190458
        },
        {
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1499683283
        }
    ],
    "label": "Hi-C_processing_partC",
    "sbg:latestRevision": 3,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/1",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/1/raw/",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:revision": 1,
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "label": "input_cool",
            "sbg:y": 182.99716186523438,
            "id": "#input_cool",
            "sbg:fileTypes": ".COOL",
            "sbg:x": 87
        },
        {
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "4",
            "sbg:stageInput": null
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "label": "output_mcool",
            "sbg:includeInPorts": true,
            "sbg:y": 188.99716186523438,
            "id": "#output_mcool",
            "source": [
                "#cool2mcool.output_mcool"
            ],
            "sbg:x": 738
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:canvas_zoom": 1,
    "sbg:createdOn": 1496182175,
    "sbg:createdBy": "4dn-dcic",
    "sbg:modifiedOn": 1496182242,
    "hints": [],
    "sbg:canvas_x": 0,
    "cwlVersion": "sbg:draft-2",
    "sbg:project": "4dn-dcic/dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:sbgMaintained": false,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/1.png",
    "description": ""
}