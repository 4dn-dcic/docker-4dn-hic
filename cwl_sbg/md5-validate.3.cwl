{
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1503348727,
    "requirements": [],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/3.png",
    "sbg:createdOn": 1484924251,
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:latestRevision": 3,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/3/raw/",
    "sbg:id": "4dn-dcic/dev/md5-validate/3",
    "label": "md5-validate",
    "inputs": [
        {
            "sbg:y": 409.88194274902344,
            "id": "#input_file",
            "sbg:x": 104,
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "type": [
                "null",
                "File"
            ],
            "label": "input_file"
        }
    ],
    "sbg:sbgMaintained": false,
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
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1503348669
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1503348727
        }
    ],
    "sbg:projectName": "Dev",
    "hints": [],
    "steps": [
        {
            "sbg:y": 117.48957824707031,
            "id": "#md5",
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "run": {
                "successCodes": [],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:modifiedOn": 1503348580,
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 500
                    },
                    "inputs": {
                        "input_file": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_file.ext"
                        }
                    }
                },
                "requirements": [],
                "sbg:image_url": null,
                "sbg:createdOn": 1480978938,
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "temporaryFailCodes": [],
                "sbg:cmdPreview": "run.sh",
                "sbg:latestRevision": 5,
                "label": "md5",
                "id": "4dn-dcic/dev/md5/5",
                "stdout": "",
                "sbg:id": "4dn-dcic/dev/md5/5",
                "y": 117.48957824707031,
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "id": "#input_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false
                    }
                ],
                "sbg:revisionNotes": "removed quotes in output glob",
                "arguments": [],
                "x": 617,
                "sbg:sbgMaintained": false,
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:projectName": "Dev",
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
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1494438192
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1494438281
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1494536730
                    },
                    {
                        "sbg:revisionNotes": "removed quotes in output glob",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1503348580
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
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "duplexa/md5:v1"
                    }
                ],
                "sbg:project": "4dn-dcic/dev",
                "sbg:createdBy": "duplexa",
                "sbg:revision": 5,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "report"
                        },
                        "id": "#report",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "description": "",
                "class": "CommandLineTool",
                "stdin": "",
                "sbg:validationErrors": []
            },
            "sbg:x": 617,
            "inputs": [
                {
                    "source": [
                        "#input_file"
                    ],
                    "id": "#md5.input_file"
                }
            ]
        },
        {
            "sbg:y": 394.3784484863281,
            "id": "#validatefiles",
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "run": {
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:modifiedOn": 1503348708,
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 500
                    },
                    "inputs": {
                        "type": "fastq",
                        "input_file": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_file.ext"
                        }
                    }
                },
                "requirements": [
                    {
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "sbg:image_url": null,
                "sbg:createdOn": 1476287593,
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "temporaryFailCodes": [],
                "sbg:revisionNotes": "removed quote from output glob",
                "sbg:latestRevision": 11,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/11/raw/",
                "stdout": "",
                "sbg:id": "4dn-dcic/dev/validate/11",
                "label": "validatefiles",
                "inputs": [
                    {
                        "id": "#input_file",
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "\"fastq\""
                            },
                            "separate": true,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "id": "#type",
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
                        "sbg:toolDefaultValue": "fastq"
                    }
                ],
                "sbg:cmdPreview": "run.sh",
                "arguments": [],
                "successCodes": [],
                "sbg:sbgMaintained": false,
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "sbg:projectName": "Dev",
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
                    },
                    {
                        "sbg:revisionNotes": "removed quote from output glob",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1503348708
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
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "duplexa/validatefiles:v1"
                    }
                ],
                "sbg:project": "4dn-dcic/dev",
                "sbg:createdBy": "duplexa",
                "sbg:revision": 11,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "report_validatefiles"
                        },
                        "id": "#report",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "description": "",
                "class": "CommandLineTool",
                "stdin": "",
                "sbg:validationErrors": []
            },
            "sbg:x": 647,
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
            ]
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdBy": "duplexa",
    "sbg:revision": 3,
    "sbg:canvas_x": 0,
    "sbg:canvas_y": 0,
    "description": "",
    "class": "Workflow",
    "sbg:canvas_zoom": 1,
    "sbg:validationErrors": [],
    "outputs": [
        {
            "sbg:y": 355.8819580078125,
            "id": "#validatefiles_report",
            "required": false,
            "sbg:x": 1018,
            "source": [
                "#validatefiles.report"
            ],
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "label": "validate_report"
        },
        {
            "sbg:y": 107.88194274902344,
            "id": "#md5_report",
            "required": false,
            "sbg:x": 1014,
            "source": [
                "#md5.report"
            ],
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "label": "md5_report"
        }
    ]
}