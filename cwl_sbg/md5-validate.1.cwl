{
    "steps": [
        {
            "id": "#md5",
            "sbg:x": 617,
            "sbg:y": 117.48957824707031,
            "inputs": [
                {
                    "id": "#md5.input_file",
                    "source": [
                        "#input_file"
                    ]
                }
            ],
            "run": {
                "requirements": [],
                "sbg:createdBy": "duplexa",
                "label": "md5",
                "sbg:validationErrors": [],
                "sbg:latestRevision": 1,
                "temporaryFailCodes": [],
                "description": "",
                "successCodes": [],
                "sbg:id": "4dn-dcic/dev/md5/1",
                "class": "CommandLineTool",
                "sbg:image_url": null,
                "stdout": "",
                "arguments": [],
                "sbg:project": "4dn-dcic/dev",
                "sbg:createdOn": 1480978938,
                "sbg:sbgMaintained": false,
                "sbg:contributors": [
                    "duplexa"
                ],
                "stdin": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1480978938
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1480978992
                    }
                ],
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
                        "dockerPull": "duplexa/md5:v1",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_file.ext"
                        }
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
                "cwlVersion": "sbg:draft-2",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "outputs": [
                    {
                        "id": "#report",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "\"report\""
                        }
                    }
                ],
                "sbg:cmdPreview": "run.sh",
                "baseCommand": [
                    "run.sh"
                ],
                "inputs": [
                    {
                        "id": "#input_file",
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:modifiedOn": 1480978992,
                "sbg:modifiedBy": "duplexa",
                "sbg:revision": 1
            },
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ]
        },
        {
            "id": "#validatefiles",
            "sbg:x": 647,
            "sbg:y": 394.3784484863281,
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
            "run": {
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "sbg:createdBy": "duplexa",
                "label": "validatefiles",
                "sbg:validationErrors": [],
                "sbg:latestRevision": 10,
                "temporaryFailCodes": [],
                "description": "",
                "successCodes": [],
                "sbg:id": "4dn-dcic/dev/validate/10",
                "class": "CommandLineTool",
                "sbg:image_url": null,
                "stdout": "",
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "arguments": [],
                "sbg:project": "4dn-dcic/dev",
                "sbg:createdOn": 1476287593,
                "sbg:sbgMaintained": false,
                "sbg:contributors": [
                    "duplexa"
                ],
                "stdin": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1476287593
                    },
                    {
                        "sbg:revisionNotes": "first revision",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1476287940
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1479853127
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1479853200
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1479853246
                    },
                    {
                        "sbg:revisionNotes": "added validate_on switch.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1480958676
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1480958776
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1480958819
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1480958939
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1480981348
                    },
                    {
                        "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1480981592
                    }
                ],
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/validatefiles:v1",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_file.ext"
                        },
                        "type": "fastq"
                    },
                    "allocatedResources": {
                        "mem": 500,
                        "cpu": 1
                    }
                },
                "cwlVersion": "sbg:draft-2",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
                "outputs": [
                    {
                        "id": "#report",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "\"report_validatefiles\""
                        }
                    }
                ],
                "sbg:cmdPreview": "run.sh",
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "inputs": [
                    {
                        "id": "#input_file",
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#type",
                        "inputBinding": {
                            "separate": true,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "\"fastq\""
                            },
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
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
                "sbg:modifiedOn": 1480981592,
                "sbg:modifiedBy": "duplexa",
                "sbg:revision": 10
            },
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ]
        }
    ],
    "requirements": [],
    "sbg:createdBy": "duplexa",
    "label": "md5-validate",
    "sbg:canvas_x": 0,
    "sbg:canvas_y": 0,
    "class": "Workflow",
    "sbg:canvas_zoom": 1,
    "sbg:latestRevision": 1,
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "description": "",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "sbg:validationErrors": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:projectName": "Dev",
    "sbg:createdOn": 1484924251,
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:modifiedOn": 1484924434,
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1484924251
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1484924434
        }
    ],
    "hints": [],
    "cwlVersion": "sbg:draft-2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "outputs": [
        {
            "id": "#validatefiles_report",
            "sbg:x": 1018,
            "sbg:y": 355.8819580078125,
            "source": [
                "#validatefiles.report"
            ],
            "label": "validate_report",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true
        },
        {
            "id": "#md5_report",
            "sbg:x": 1014,
            "sbg:y": 107.88194274902344,
            "source": [
                "#md5.report"
            ],
            "label": "md5_report",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true
        }
    ],
    "inputs": [
        {
            "id": "#input_file",
            "sbg:x": 104,
            "sbg:y": 409.88194274902344,
            "label": "input_file",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:revision": 1
}