{
    "hints": [],
    "sbg:modifiedOn": 1484924434,
    "sbg:canvas_y": 0,
    "sbg:canvas_x": 0,
    "sbg:canvas_zoom": 1,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdBy": "duplexa",
    "sbg:validationErrors": [],
    "label": "md5-validate",
    "sbg:revision": 1,
    "sbg:projectName": "Dev",
    "class": "Workflow",
    "steps": [
        {
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "sbg:x": 617,
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
                "arguments": [],
                "stdout": "",
                "sbg:modifiedOn": 1480978992,
                "baseCommand": [
                    "run.sh"
                ],
                "successCodes": [],
                "sbg:contributors": [
                    "duplexa"
                ],
                "temporaryFailCodes": [],
                "sbg:revision": 1,
                "sbg:createdBy": "duplexa",
                "sbg:validationErrors": [],
                "label": "md5",
                "sbg:cmdPreview": "run.sh",
                "class": "CommandLineTool",
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "\"report\""
                        },
                        "id": "#report"
                    }
                ],
                "description": "",
                "cwlVersion": "sbg:draft-2",
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
                        "dockerPull": "duplexa/md5:v1"
                    }
                ],
                "requirements": [],
                "stdin": "",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_file",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        }
                    }
                ],
                "sbg:sbgMaintained": false,
                "sbg:id": "4dn-dcic/dev/md5/1",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480978938,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480978992,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "sbg:createdOn": 1480978938,
                "sbg:latestRevision": 1,
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    },
                    "inputs": {
                        "input_file": {
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/input_file.ext"
                        }
                    }
                },
                "sbg:image_url": null,
                "sbg:modifiedBy": "duplexa",
                "sbg:project": "4dn-dcic/dev"
            }
        },
        {
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "sbg:x": 647,
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
                "arguments": [],
                "stdout": "",
                "sbg:modifiedOn": 1480981592,
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "successCodes": [],
                "sbg:contributors": [
                    "duplexa"
                ],
                "temporaryFailCodes": [],
                "sbg:revision": 10,
                "sbg:createdBy": "duplexa",
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "sbg:validationErrors": [],
                "label": "validatefiles",
                "sbg:cmdPreview": "run.sh",
                "class": "CommandLineTool",
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "\"report_validatefiles\""
                        },
                        "id": "#report"
                    }
                ],
                "description": "",
                "cwlVersion": "sbg:draft-2",
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
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/validatefiles:v1"
                    }
                ],
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ]
                    }
                ],
                "stdin": "",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_file",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        },
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
                    },
                    {
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "symbols": [
                                    "fastq",
                                    "fasta",
                                    "bam"
                                ],
                                "name": "type"
                            }
                        ],
                        "sbg:toolDefaultValue": "fastq",
                        "id": "#type",
                        "inputBinding": {
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "\"fastq\""
                            },
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        }
                    }
                ],
                "sbg:sbgMaintained": false,
                "sbg:id": "4dn-dcic/dev/validate/10",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1476287593,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "first revision",
                        "sbg:modifiedOn": 1476287940,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479853127,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479853200,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479853246,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "added validate_on switch.",
                        "sbg:modifiedOn": 1480958676,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480958776,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480958819,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480958939,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480981348,
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                        "sbg:modifiedOn": 1480981592,
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
                "sbg:createdOn": 1476287593,
                "sbg:latestRevision": 10,
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 500,
                        "cpu": 1
                    },
                    "inputs": {
                        "type": "fastq",
                        "input_file": {
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/input_file.ext"
                        }
                    }
                },
                "sbg:image_url": null,
                "sbg:modifiedBy": "duplexa",
                "sbg:project": "4dn-dcic/dev"
            }
        }
    ],
    "description": "",
    "cwlVersion": "sbg:draft-2",
    "requirements": [],
    "inputs": [
        {
            "sbg:y": 409.88194274902344,
            "sbg:x": 104,
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ],
            "label": "input_file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1484924251,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1484924434,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "sbg:createdOn": 1484924251,
    "sbg:latestRevision": 1,
    "outputs": [
        {
            "sbg:y": 355.8819580078125,
            "sbg:x": 1018,
            "id": "#validatefiles_report",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "validate_report",
            "source": [
                "#validatefiles.report"
            ]
        },
        {
            "sbg:y": 107.88194274902344,
            "sbg:x": 1014,
            "id": "#md5_report",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "md5_report",
            "source": [
                "#md5.report"
            ]
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "sbg:modifiedBy": "duplexa",
    "sbg:project": "4dn-dcic/dev"
}