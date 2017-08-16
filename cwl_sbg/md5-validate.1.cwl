{
    "label": "md5-validate",
    "cwlVersion": "sbg:draft-2",
    "sbg:validationErrors": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "sbg:createdBy": "duplexa",
    "sbg:latestRevision": 1,
    "hints": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "label": "validate_report",
            "id": "#validatefiles_report",
            "sbg:includeInPorts": true,
            "sbg:y": 355.8819580078125,
            "source": [
                "#validatefiles.report"
            ],
            "sbg:x": 1018
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "md5_report",
            "id": "#md5_report",
            "sbg:includeInPorts": true,
            "sbg:y": 107.88194274902344,
            "source": [
                "#md5.report"
            ],
            "sbg:x": 1014
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedBy": "duplexa",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revision": 1,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1484924251,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1484924434,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        }
    ],
    "sbg:canvas_zoom": 1,
    "requirements": [],
    "inputs": [
        {
            "label": "input_file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 104,
            "id": "#input_file",
            "sbg:y": 409.88194274902344
        }
    ],
    "description": "",
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1484924434,
    "sbg:createdOn": 1484924251,
    "steps": [
        {
            "run": {
                "label": "md5",
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
                "arguments": [],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "sbg:createdBy": "duplexa",
                "sbg:latestRevision": 1,
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
                        "dockerPull": "duplexa/md5:v1",
                        "class": "DockerRequirement",
                        "dockerImageId": ""
                    }
                ],
                "sbg:cmdPreview": "run.sh",
                "temporaryFailCodes": [],
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "\"report\""
                        },
                        "id": "#report",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:image_url": null,
                "sbg:id": "4dn-dcic/dev/md5/1",
                "successCodes": [],
                "sbg:project": "4dn-dcic/dev",
                "sbg:contributors": [
                    "duplexa"
                ],
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:revision": 1,
                "sbg:modifiedBy": "duplexa",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1480978938,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480978992,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    }
                ],
                "stdin": "",
                "requirements": [],
                "inputs": [
                    {
                        "id": "#input_file",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "description": "",
                "sbg:sbgMaintained": false,
                "stdout": "",
                "sbg:modifiedOn": 1480978992,
                "sbg:createdOn": 1480978938,
                "class": "CommandLineTool",
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "path": "/path/to/input_file.ext",
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                }
            },
            "inputs": [
                {
                    "id": "#md5.input_file",
                    "source": [
                        "#input_file"
                    ]
                }
            ],
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "sbg:x": 617,
            "id": "#md5",
            "sbg:y": 117.48957824707031
        },
        {
            "run": {
                "label": "validatefiles",
                "cwlVersion": "sbg:draft-2",
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "sbg:validationErrors": [],
                "arguments": [],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
                "sbg:createdBy": "duplexa",
                "sbg:latestRevision": 10,
                "hints": [
                    {
                        "value": 1,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": 500,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "dockerPull": "duplexa/validatefiles:v1",
                        "class": "DockerRequirement",
                        "dockerImageId": ""
                    }
                ],
                "sbg:cmdPreview": "run.sh",
                "temporaryFailCodes": [],
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "\"report_validatefiles\""
                        },
                        "id": "#report",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:image_url": null,
                "sbg:id": "4dn-dcic/dev/validate/10",
                "successCodes": [],
                "sbg:project": "4dn-dcic/dev",
                "sbg:contributors": [
                    "duplexa"
                ],
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "sbg:revision": 10,
                "sbg:modifiedBy": "duplexa",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1476287593,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1476287940,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "first revision"
                    },
                    {
                        "sbg:modifiedOn": 1479853127,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479853200,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479853246,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480958676,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "added validate_on switch."
                    },
                    {
                        "sbg:modifiedOn": 1480958776,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480958819,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480958939,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480981348,
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480981592,
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "changed report name to 'report_validatefiles'"
                    }
                ],
                "stdin": "",
                "requirements": [
                    {
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "inputs": [
                    {
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "id": "#input_file",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#type",
                        "inputBinding": {
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "\"fastq\""
                            },
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "type",
                                "symbols": [
                                    "fastq",
                                    "fasta",
                                    "bam"
                                ]
                            }
                        ],
                        "sbg:toolDefaultValue": "fastq"
                    }
                ],
                "description": "",
                "sbg:sbgMaintained": false,
                "stdout": "",
                "sbg:modifiedOn": 1480981592,
                "sbg:createdOn": 1476287593,
                "class": "CommandLineTool",
                "sbg:job": {
                    "inputs": {
                        "type": "fastq",
                        "input_file": {
                            "path": "/path/to/input_file.ext",
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "mem": 500,
                        "cpu": 1
                    }
                }
            },
            "inputs": [
                {
                    "id": "#validatefiles.input_file",
                    "source": [
                        "#input_file"
                    ]
                },
                {
                    "id": "#validatefiles.type"
                }
            ],
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "sbg:x": 647,
            "id": "#validatefiles",
            "sbg:y": 394.3784484863281
        }
    ],
    "sbg:canvas_y": 0,
    "sbg:canvas_x": 0,
    "sbg:contributors": [
        "duplexa"
    ],
    "class": "Workflow"
}