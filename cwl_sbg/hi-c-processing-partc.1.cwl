{
    "sbg:canvas_zoom": 1,
    "sbg:canvas_x": 0,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/1",
    "sbg:createdBy": "4dn-dcic",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:canvas_y": 0,
    "sbg:projectName": "Dev",
    "requirements": [],
    "sbg:validationErrors": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1496182175,
    "steps": [
        {
            "run": {
                "sbg:createdBy": "4dn-dcic",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496180027
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496180123
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496180208
                    }
                ],
                "sbg:projectName": "Dev",
                "requirements": [],
                "sbg:validationErrors": [],
                "arguments": [],
                "sbg:project": "4dn-dcic/dev",
                "class": "CommandLineTool",
                "sbg:createdOn": 1496180027,
                "sbg:cmdPreview": "run-cooler-balance.sh",
                "stdout": "",
                "sbg:revision": 2,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.outprefix"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#out_cool"
                    }
                ],
                "label": "coolerbalance",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/coolerbalance/2/raw/",
                "sbg:job": {
                    "inputs": {
                        "input_cool": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_cool.ext"
                        },
                        "max_iter": 4,
                        "outprefix": "outprefix-string-value"
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    }
                },
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:image_url": null,
                "baseCommand": [
                    "run-cooler-balance.sh"
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:sbgMaintained": false,
                "sbg:id": "4dn-dcic/dev/coolerbalance/2",
                "hints": [
                    {
                        "class": "sbg:MemRequirement",
                        "value": 8000
                    },
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v17"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 8
                    }
                ],
                "sbg:latestRevision": 2,
                "successCodes": [],
                "temporaryFailCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "stdin": "",
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
                        "sbg:toolDefaultValue": "5000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "id": "#max_iter"
                    },
                    {
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        },
                        "id": "#outprefix"
                    }
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "description": "",
                "sbg:modifiedOn": 1496180208
            },
            "id": "#coolerbalance",
            "outputs": [
                {
                    "id": "#coolerbalance.out_cool"
                }
            ],
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
            ],
            "sbg:x": 270,
            "sbg:y": 197.65625
        },
        {
            "run": {
                "sbg:createdBy": "4dn-dcic",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496166920
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496167248
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496181675
                    }
                ],
                "sbg:projectName": "Dev",
                "requirements": [],
                "sbg:validationErrors": [],
                "arguments": [],
                "sbg:project": "4dn-dcic/dev",
                "class": "CommandLineTool",
                "sbg:createdOn": 1496166920,
                "sbg:cmdPreview": "run-cool2multirescool.sh",
                "stdout": "",
                "sbg:revision": 2,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.multires.cool"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".COOL",
                        "id": "#output_mcool"
                    }
                ],
                "label": "cool2mcool",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/2/raw/",
                "sbg:job": {
                    "inputs": {
                        "input_cool": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_cool.ext"
                        },
                        "ncores": 9,
                        "outprefix": "outprefix-string-value"
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:image_url": null,
                "baseCommand": [
                    "run-cool2multirescool.sh"
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:sbgMaintained": false,
                "sbg:id": "4dn-dcic/dev/cool2mcool/2",
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v17"
                    }
                ],
                "sbg:latestRevision": 2,
                "successCodes": [],
                "temporaryFailCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "stdin": "",
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
                        "sbg:toolDefaultValue": "4",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "id": "#ncores"
                    },
                    {
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        },
                        "id": "#outprefix"
                    }
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "description": "",
                "sbg:modifiedOn": 1496181675
            },
            "id": "#cool2mcool",
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ],
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
            ],
            "sbg:x": 542,
            "sbg:y": 205.65625
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partc/1/raw/",
    "sbg:revision": 1,
    "label": "Hi-C_processing_partC",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496182175
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496182242
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496190458
        },
        {
            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)",
            "sbg:revision": 3,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499683283
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/1.png",
    "cwlVersion": "sbg:draft-2",
    "sbg:sbgMaintained": false,
    "hints": [],
    "class": "Workflow",
    "sbg:latestRevision": 3,
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 738,
            "id": "#output_mcool",
            "sbg:y": 188.99716186523438,
            "label": "output_mcool",
            "source": [
                "#cool2mcool.output_mcool"
            ],
            "sbg:includeInPorts": true
        }
    ],
    "sbg:modifiedOn": 1496182242,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "inputs": [
        {
            "label": "input_cool",
            "sbg:fileTypes": ".COOL",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 87,
            "sbg:y": 182.99716186523438,
            "id": "#input_cool"
        },
        {
            "sbg:toolDefaultValue": "4",
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "id": "#ncores"
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "description": ""
}