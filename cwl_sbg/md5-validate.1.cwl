{
    "sbg:canvas_y": 0,
    "hints": [],
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "sbg:latestRevision": 1,
    "sbg:revision": 1,
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1484924251,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1484924434,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "outputs": [
        {
            "sbg:x": 1018,
            "sbg:includeInPorts": true,
            "sbg:y": 355.8819580078125,
            "label": "validate_report",
            "source": [
                "#validatefiles.report"
            ],
            "id": "#validatefiles_report",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:x": 1014,
            "sbg:includeInPorts": true,
            "sbg:y": 107.88194274902344,
            "label": "md5_report",
            "source": [
                "#md5.report"
            ],
            "id": "#md5_report",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:canvas_zoom": 1,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "sbg:modifiedOn": 1484924434,
    "sbg:validationErrors": [],
    "steps": [
        {
            "sbg:x": 617,
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "id": "#md5",
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
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    },
                    "inputs": {
                        "input_file": {
                            "class": "File",
                            "path": "/path/to/input_file.ext",
                            "size": 0,
                            "secondaryFiles": []
                        }
                    }
                },
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
                        "dockerPull": "duplexa/md5:v1",
                        "class": "DockerRequirement",
                        "dockerImageId": ""
                    }
                ],
                "temporaryFailCodes": [],
                "sbg:id": "4dn-dcic/dev/md5/1",
                "successCodes": [],
                "sbg:latestRevision": 1,
                "sbg:revision": 1,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480978938,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480978992,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "sbg:modifiedBy": "duplexa",
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "\"report\""
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#report"
                    }
                ],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "sbg:modifiedOn": 1480978992,
                "sbg:validationErrors": [],
                "stdout": "",
                "sbg:cmdPreview": "run.sh",
                "class": "CommandLineTool",
                "stdin": "",
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "sbg:createdOn": 1480978938,
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "duplexa"
                ],
                "description": "",
                "arguments": [],
                "sbg:createdBy": "duplexa",
                "label": "md5",
                "sbg:image_url": null,
                "baseCommand": [
                    "run.sh"
                ],
                "requirements": [],
                "inputs": [
                    {
                        "id": "#input_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    }
                ]
            }
        },
        {
            "sbg:x": 647,
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "id": "#validatefiles",
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
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 500,
                        "cpu": 1
                    },
                    "inputs": {
                        "type": "fastq",
                        "input_file": {
                            "class": "File",
                            "path": "/path/to/input_file.ext",
                            "size": 0,
                            "secondaryFiles": []
                        }
                    }
                },
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
                        "dockerPull": "duplexa/validatefiles:v1",
                        "class": "DockerRequirement",
                        "dockerImageId": ""
                    }
                ],
                "temporaryFailCodes": [],
                "sbg:id": "4dn-dcic/dev/validate/10",
                "successCodes": [],
                "sbg:latestRevision": 10,
                "sbg:revision": 10,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1476287593,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": "first revision",
                        "sbg:modifiedOn": 1476287940,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479853127,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479853200,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479853246,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:revisionNotes": "added validate_on switch.",
                        "sbg:modifiedOn": 1480958676,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480958776,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480958819,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480958939,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480981348,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                        "sbg:modifiedOn": 1480981592,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "sbg:modifiedBy": "duplexa",
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "\"report_validatefiles\""
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#report"
                    }
                ],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
                "sbg:modifiedOn": 1480981592,
                "sbg:validationErrors": [],
                "stdout": "",
                "sbg:cmdPreview": "run.sh",
                "class": "CommandLineTool",
                "stdin": "",
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "sbg:createdOn": 1476287593,
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "duplexa"
                ],
                "description": "",
                "arguments": [],
                "sbg:createdBy": "duplexa",
                "label": "validatefiles",
                "sbg:image_url": null,
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "inputs": [
                    {
                        "id": "#input_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
                    },
                    {
                        "sbg:toolDefaultValue": "fastq",
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
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "\"fastq\"",
                                "class": "Expression"
                            }
                        }
                    }
                ]
            }
        }
    ],
    "sbg:projectName": "Dev",
    "class": "Workflow",
    "sbg:canvas_x": 0,
    "sbg:sbgMaintained": false,
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1484924251,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:contributors": [
        "duplexa"
    ],
    "description": "",
    "sbg:createdBy": "duplexa",
    "label": "md5-validate",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "requirements": [],
    "inputs": [
        {
            "sbg:x": 104,
            "sbg:y": 409.88194274902344,
            "label": "input_file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        }
    ]
}