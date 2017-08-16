{
    "cwlVersion": "sbg:draft-2",
    "sbg:createdOn": 1484924251,
    "sbg:revision": 1,
    "description": "",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "sbg:createdBy": "duplexa",
    "sbg:sbgMaintained": false,
    "sbg:canvas_zoom": 1,
    "steps": [
        {
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "id": "#md5",
            "sbg:y": 117.48957824707031,
            "inputs": [
                {
                    "source": [
                        "#input_file"
                    ],
                    "id": "#md5.input_file"
                }
            ],
            "run": {
                "cwlVersion": "sbg:draft-2",
                "sbg:id": "4dn-dcic/dev/md5/1",
                "sbg:revision": 1,
                "description": "",
                "sbg:project": "4dn-dcic/dev",
                "sbg:image_url": null,
                "sbg:createdOn": 1480978938,
                "sbg:createdBy": "duplexa",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "input_file": {
                            "size": 0,
                            "path": "/path/to/input_file.ext",
                            "secondaryFiles": [],
                            "class": "File"
                        }
                    }
                },
                "sbg:sbgMaintained": false,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1480978938,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480978992,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "sbg:cmdPreview": "run.sh",
                "class": "CommandLineTool",
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
                        "dockerPull": "duplexa/md5:v1"
                    }
                ],
                "sbg:latestRevision": 1,
                "baseCommand": [
                    "run.sh"
                ],
                "arguments": [],
                "label": "md5",
                "sbg:contributors": [
                    "duplexa"
                ],
                "requirements": [],
                "successCodes": [],
                "sbg:validationErrors": [],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "stdin": "",
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
                "sbg:modifiedOn": 1480978992,
                "temporaryFailCodes": [],
                "sbg:modifiedBy": "duplexa",
                "stdout": "",
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "id": "#input_file",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ]
            },
            "sbg:x": 617
        },
        {
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "id": "#validatefiles",
            "sbg:y": 394.3784484863281,
            "inputs": [
                {
                    "source": [
                        "#input_file"
                    ],
                    "id": "#validatefiles.input_file"
                },
                {
                    "id": "#validatefiles.type"
                }
            ],
            "run": {
                "cwlVersion": "sbg:draft-2",
                "sbg:id": "4dn-dcic/dev/validate/10",
                "sbg:revision": 10,
                "description": "",
                "arguments": [],
                "sbg:image_url": null,
                "sbg:createdOn": 1476287593,
                "sbg:createdBy": "duplexa",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 500
                    },
                    "inputs": {
                        "input_file": {
                            "size": 0,
                            "path": "/path/to/input_file.ext",
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "type": "fastq"
                    }
                },
                "sbg:sbgMaintained": false,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1476287593,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1476287940,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": "first revision",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1479853127,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1479853200,
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1479853246,
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480958676,
                        "sbg:revision": 5,
                        "sbg:revisionNotes": "added validate_on switch.",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480958776,
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480958819,
                        "sbg:revision": 7,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480958939,
                        "sbg:revision": 8,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480981348,
                        "sbg:revision": 9,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480981592,
                        "sbg:revision": 10,
                        "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "sbg:cmdPreview": "run.sh",
                "class": "CommandLineTool",
                "hints": [
                    {
                        "class": "sbg:CPURequirement",
                        "value": 1
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 500
                    },
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "duplexa/validatefiles:v1"
                    }
                ],
                "sbg:latestRevision": 10,
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "sbg:project": "4dn-dcic/dev",
                "label": "validatefiles",
                "sbg:contributors": [
                    "duplexa"
                ],
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine"
                    }
                ],
                "successCodes": [],
                "sbg:validationErrors": [],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
                "stdin": "",
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
                "sbg:modifiedOn": 1480981592,
                "temporaryFailCodes": [],
                "sbg:modifiedBy": "duplexa",
                "stdout": "",
                "inputs": [
                    {
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "id": "#input_file",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:toolDefaultValue": "fastq",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "\"fastq\""
                            }
                        },
                        "id": "#type",
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
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'"
            },
            "sbg:x": 647
        }
    ],
    "label": "md5-validate",
    "class": "Workflow",
    "hints": [],
    "sbg:latestRevision": 1,
    "sbg:project": "4dn-dcic/dev",
    "sbg:projectName": "Dev",
    "sbg:contributors": [
        "duplexa"
    ],
    "requirements": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1484924251,
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1484924434,
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:canvas_x": 0,
    "sbg:validationErrors": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "outputs": [
        {
            "label": "validate_report",
            "sbg:includeInPorts": true,
            "source": [
                "#validatefiles.report"
            ],
            "sbg:y": 355.8819580078125,
            "sbg:x": 1018,
            "id": "#validatefiles_report",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "label": "md5_report",
            "sbg:includeInPorts": true,
            "source": [
                "#md5.report"
            ],
            "sbg:y": 107.88194274902344,
            "sbg:x": 1014,
            "id": "#md5_report",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:canvas_y": 0,
    "sbg:modifiedOn": 1484924434,
    "sbg:modifiedBy": "duplexa",
    "inputs": [
        {
            "label": "input_file",
            "id": "#input_file",
            "sbg:y": 409.88194274902344,
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "sbg:x": 104,
            "type": [
                "null",
                "File"
            ]
        }
    ]
}