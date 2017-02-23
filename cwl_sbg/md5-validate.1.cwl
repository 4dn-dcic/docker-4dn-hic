{
    "sbg:modifiedBy": "duplexa",
    "steps": [
        {
            "sbg:x": 617,
            "id": "#md5",
            "inputs": [
                {
                    "id": "#md5.input_file",
                    "source": [
                        "#input_file"
                    ]
                }
            ],
            "sbg:y": 117.48957824707031,
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "run": {
                "sbg:modifiedBy": "duplexa",
                "baseCommand": [
                    "run.sh"
                ],
                "successCodes": [],
                "sbg:modifiedOn": 1480978992,
                "stdin": "",
                "sbg:project": "4dn-dcic/dev",
                "sbg:contributors": [
                    "duplexa"
                ],
                "description": "",
                "sbg:sbgMaintained": false,
                "stdout": "",
                "temporaryFailCodes": [],
                "sbg:createdBy": "duplexa",
                "sbg:validationErrors": [],
                "label": "md5",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1480978938,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480978992,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_file"
                    }
                ],
                "sbg:revision": 1,
                "class": "CommandLineTool",
                "sbg:createdOn": 1480978938,
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
                        "dockerPull": "duplexa/md5:v1",
                        "class": "DockerRequirement"
                    }
                ],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    },
                    "inputs": {
                        "input_file": {
                            "path": "/path/to/input_file.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        }
                    }
                },
                "requirements": [],
                "arguments": [],
                "sbg:id": "4dn-dcic/dev/md5/1",
                "sbg:latestRevision": 1,
                "cwlVersion": "sbg:draft-2",
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
                "sbg:cmdPreview": "run.sh"
            }
        },
        {
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
            ],
            "sbg:y": 394.3784484863281,
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "run": {
                "sbg:modifiedBy": "duplexa",
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "successCodes": [],
                "sbg:modifiedOn": 1480981592,
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "sbg:project": "4dn-dcic/dev",
                "sbg:contributors": [
                    "duplexa"
                ],
                "description": "",
                "sbg:sbgMaintained": false,
                "arguments": [],
                "temporaryFailCodes": [],
                "class": "CommandLineTool",
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/validatefiles:v1",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:validationErrors": [],
                "label": "validatefiles",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1476287593,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1476287940,
                        "sbg:revisionNotes": "first revision",
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1479853127,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1479853200,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1479853246,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480958676,
                        "sbg:revisionNotes": "added validate_on switch.",
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480958776,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480958819,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480958939,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480981348,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480981592,
                        "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_file",
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
                    },
                    {
                        "inputBinding": {
                            "position": 2,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "\"fastq\"",
                                "class": "Expression"
                            },
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "type",
                                "type": "enum",
                                "symbols": [
                                    "fastq",
                                    "fasta",
                                    "bam"
                                ]
                            }
                        ],
                        "sbg:toolDefaultValue": "fastq",
                        "id": "#type"
                    }
                ],
                "sbg:revision": 10,
                "stdout": "",
                "sbg:createdOn": 1476287593,
                "sbg:createdBy": "duplexa",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 500,
                        "cpu": 1
                    },
                    "inputs": {
                        "type": "fastq",
                        "input_file": {
                            "path": "/path/to/input_file.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        }
                    }
                },
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
                "sbg:id": "4dn-dcic/dev/validate/10",
                "stdin": "",
                "sbg:latestRevision": 10,
                "cwlVersion": "sbg:draft-2",
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
                "sbg:cmdPreview": "run.sh"
            }
        }
    ],
    "sbg:modifiedOn": 1484924434,
    "sbg:project": "4dn-dcic/dev",
    "sbg:contributors": [
        "duplexa"
    ],
    "description": "",
    "sbg:sbgMaintained": false,
    "sbg:createdBy": "duplexa",
    "sbg:canvas_y": 0,
    "sbg:validationErrors": [],
    "label": "md5-validate",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1484924251,
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1484924434,
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "inputs": [
        {
            "label": "input_file",
            "sbg:x": 104,
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
            "sbg:y": 409.88194274902344,
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
        }
    ],
    "sbg:revision": 1,
    "class": "Workflow",
    "sbg:createdOn": 1484924251,
    "hints": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "sbg:canvas_zoom": 1,
    "requirements": [],
    "sbg:canvas_x": 0,
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "sbg:latestRevision": 1,
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
            "label": "validate_report",
            "source": [
                "#validatefiles.report"
            ],
            "sbg:x": 1018,
            "type": [
                "null",
                "File"
            ],
            "id": "#validatefiles_report",
            "sbg:includeInPorts": true,
            "sbg:y": 355.8819580078125
        },
        {
            "label": "md5_report",
            "source": [
                "#md5.report"
            ],
            "sbg:x": 1014,
            "type": [
                "null",
                "File"
            ],
            "id": "#md5_report",
            "sbg:includeInPorts": true,
            "sbg:y": 107.88194274902344
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png"
}