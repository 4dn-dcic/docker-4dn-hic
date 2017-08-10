{
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/1",
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_x": 0,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:createdOn": 1496182175,
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
    "sbg:project": "4dn-dcic/dev",
    "sbg:canvas_zoom": 1,
    "class": "Workflow",
    "hints": [],
    "label": "Hi-C_processing_partC",
    "sbg:canvas_y": 0,
    "sbg:revision": 1,
    "sbg:createdBy": "4dn-dcic",
    "sbg:latestRevision": 3,
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "description": "",
    "requirements": [],
    "sbg:projectName": "Dev",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_mcool",
            "sbg:includeInPorts": true,
            "sbg:x": 738,
            "source": [
                "#cool2mcool.output_mcool"
            ],
            "label": "output_mcool",
            "sbg:y": 188.99716186523438
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496182175,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496182242,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496190458,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 3,
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)",
            "sbg:modifiedOn": 1499683283,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "steps": [
        {
            "outputs": [
                {
                    "id": "#coolerbalance.out_cool"
                }
            ],
            "id": "#coolerbalance",
            "sbg:x": 270,
            "run": {
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:id": "4dn-dcic/dev/coolerbalance/2",
                "successCodes": [],
                "cwlVersion": "sbg:draft-2",
                "label": "coolerbalance",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:createdOn": 1496180027,
                "sbg:validationErrors": [],
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "stdout": "",
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#out_cool",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.outprefix",
                                "engine": "#cwl-js-engine"
                            }
                        }
                    }
                ],
                "class": "CommandLineTool",
                "sbg:createdBy": "4dn-dcic",
                "arguments": [],
                "sbg:revision": 2,
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
                "sbg:latestRevision": 2,
                "baseCommand": [
                    "run-cooler-balance.sh"
                ],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:projectName": "Dev",
                "stdin": "",
                "requirements": [],
                "sbg:job": {
                    "inputs": {
                        "max_iter": 4,
                        "input_cool": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_cool.ext",
                            "class": "File",
                            "size": 0
                        },
                        "outprefix": "outprefix-string-value"
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    }
                },
                "description": "",
                "sbg:cmdPreview": "run-cooler-balance.sh",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496180027,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496180123,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496180208,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "temporaryFailCodes": [],
                "sbg:image_url": null,
                "inputs": [
                    {
                        "sbg:fileTypes": ".COOL",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_cool",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    },
                    {
                        "sbg:stageInput": null,
                        "sbg:toolDefaultValue": "5000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#max_iter",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        }
                    }
                ],
                "sbg:modifiedOn": 1496180208,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/coolerbalance/2/raw/"
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
            "sbg:y": 197.65625
        },
        {
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
            "id": "#cool2mcool",
            "sbg:x": 542,
            "run": {
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:id": "4dn-dcic/dev/cool2mcool/2",
                "successCodes": [],
                "cwlVersion": "sbg:draft-2",
                "label": "cool2mcool",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:createdOn": 1496166920,
                "sbg:validationErrors": [],
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "stdout": "",
                "outputs": [
                    {
                        "sbg:fileTypes": ".COOL",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#output_mcool",
                        "outputBinding": {
                            "glob": "*.multires.cool"
                        }
                    }
                ],
                "class": "CommandLineTool",
                "sbg:createdBy": "4dn-dcic",
                "arguments": [],
                "sbg:revision": 2,
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
                "sbg:latestRevision": 2,
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:projectName": "Dev",
                "stdin": "",
                "requirements": [],
                "sbg:job": {
                    "inputs": {
                        "ncores": 9,
                        "input_cool": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_cool.ext",
                            "class": "File",
                            "size": 0
                        },
                        "outprefix": "outprefix-string-value"
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
                "description": "",
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496166920,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496167248,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496181675,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "temporaryFailCodes": [],
                "sbg:image_url": null,
                "inputs": [
                    {
                        "sbg:fileTypes": ".COOL",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_cool",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    },
                    {
                        "sbg:stageInput": null,
                        "sbg:toolDefaultValue": "4",
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#ncores",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        }
                    }
                ],
                "sbg:modifiedOn": 1496181675,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/2/raw/"
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
            "sbg:y": 205.65625
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/1.png",
    "inputs": [
        {
            "sbg:fileTypes": ".COOL",
            "type": [
                "null",
                "File"
            ],
            "id": "#input_cool",
            "sbg:x": 87,
            "label": "input_cool",
            "sbg:y": 182.99716186523438
        },
        {
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "4",
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores"
        }
    ],
    "sbg:modifiedOn": 1496182242,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/1/raw/"
}