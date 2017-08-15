{
    "cwlVersion": "sbg:draft-2",
    "class": "Workflow",
    "sbg:contributors": [
        "duplexa"
    ],
    "inputs": [
        {
            "sbg:y": 409.88194274902344,
            "label": "input_file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 104,
            "id": "#input_file"
        }
    ],
    "sbg:latestRevision": 1,
    "sbg:validationErrors": [],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "sbg:canvas_x": 0,
    "description": "",
    "steps": [
        {
            "sbg:y": 117.48957824707031,
            "run": {
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_file.ext"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "duplexa"
                ],
                "stdout": "",
                "baseCommand": [
                    "run.sh"
                ],
                "inputs": [
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true
                        },
                        "id": "#input_file",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:latestRevision": 1,
                "sbg:validationErrors": [],
                "sbg:image_url": null,
                "temporaryFailCodes": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1480978938,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480978992,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    }
                ],
                "successCodes": [],
                "sbg:createdOn": 1480978938,
                "requirements": [],
                "sbg:sbgMaintained": false,
                "sbg:modifiedOn": 1480978992,
                "sbg:cmdPreview": "run.sh",
                "sbg:revision": 1,
                "sbg:project": "4dn-dcic/dev",
                "sbg:modifiedBy": "duplexa",
                "stdin": "",
                "arguments": [],
                "sbg:id": "4dn-dcic/dev/md5/1",
                "sbg:createdBy": "duplexa",
                "label": "md5",
                "description": "",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
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
                ]
            },
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "sbg:x": 617,
            "id": "#md5",
            "inputs": [
                {
                    "id": "#md5.input_file",
                    "source": [
                        "#input_file"
                    ]
                }
            ]
        },
        {
            "sbg:y": 394.3784484863281,
            "run": {
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_file.ext"
                        },
                        "type": "fastq"
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 500
                    }
                },
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "inputs": [
                    {
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true
                        },
                        "id": "#input_file",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "script": "\"fastq\"",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            },
                            "position": 2,
                            "separate": true
                        },
                        "id": "#type",
                        "sbg:toolDefaultValue": "fastq",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "fastq",
                                    "fasta",
                                    "bam"
                                ],
                                "name": "type",
                                "type": "enum"
                            }
                        ]
                    }
                ],
                "sbg:latestRevision": 10,
                "stdout": "",
                "sbg:image_url": null,
                "temporaryFailCodes": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1476287593,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1476287940,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": "first revision"
                    },
                    {
                        "sbg:modifiedOn": 1479853127,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479853200,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479853246,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480958676,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 5,
                        "sbg:revisionNotes": "added validate_on switch."
                    },
                    {
                        "sbg:modifiedOn": 1480958776,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480958819,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480958939,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 8,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480981348,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 9,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480981592,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 10,
                        "sbg:revisionNotes": "changed report name to 'report_validatefiles'"
                    }
                ],
                "successCodes": [],
                "sbg:createdOn": 1476287593,
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
                "sbg:sbgMaintained": false,
                "sbg:modifiedOn": 1480981592,
                "sbg:cmdPreview": "run.sh",
                "sbg:revision": 10,
                "sbg:project": "4dn-dcic/dev",
                "sbg:modifiedBy": "duplexa",
                "stdin": "",
                "arguments": [],
                "sbg:id": "4dn-dcic/dev/validate/10",
                "sbg:createdBy": "duplexa",
                "label": "validatefiles",
                "description": "",
                "sbg:validationErrors": [],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
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
                ]
            },
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "sbg:x": 647,
            "id": "#validatefiles",
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
            ]
        }
    ],
    "sbg:createdOn": 1484924251,
    "requirements": [],
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1484924434,
    "sbg:canvas_zoom": 1,
    "sbg:revision": 1,
    "sbg:project": "4dn-dcic/dev",
    "sbg:canvas_y": 0,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "sbg:createdBy": "duplexa",
    "label": "md5-validate",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:projectName": "Dev",
    "hints": [],
    "outputs": [
        {
            "sbg:y": 355.8819580078125,
            "label": "validate_report",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#validatefiles.report"
            ],
            "sbg:x": 1018,
            "id": "#validatefiles_report",
            "sbg:includeInPorts": true
        },
        {
            "sbg:y": 107.88194274902344,
            "label": "md5_report",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#md5.report"
            ],
            "sbg:x": 1014,
            "id": "#md5_report",
            "sbg:includeInPorts": true
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1484924251,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1484924434,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:revisionNotes": null
        }
    ]
}