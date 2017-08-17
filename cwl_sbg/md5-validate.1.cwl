{
    "label": "md5-validate",
    "sbg:canvas_x": 0,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
            "id": "#validatefiles_report",
            "sbg:y": 355.8819580078125,
            "sbg:x": 1018,
            "source": [
                "#validatefiles.report"
            ],
            "sbg:includeInPorts": true,
            "label": "validate_report",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#md5_report",
            "sbg:y": 107.88194274902344,
            "sbg:x": 1014,
            "source": [
                "#md5.report"
            ],
            "sbg:includeInPorts": true,
            "label": "md5_report",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:validationErrors": [],
    "description": "",
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1484924434,
    "sbg:createdBy": "duplexa",
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
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "class": "Workflow",
    "inputs": [
        {
            "label": "input_file",
            "sbg:x": 104,
            "id": "#input_file",
            "sbg:y": 409.88194274902344,
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "hints": [],
    "sbg:sbgMaintained": false,
    "requirements": [],
    "steps": [
        {
            "sbg:y": 117.48957824707031,
            "sbg:x": 617,
            "id": "#md5",
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "inputs": [
                {
                    "id": "#md5.input_file",
                    "source": [
                        "#input_file"
                    ]
                }
            ],
            "run": {
                "stdout": "",
                "sbg:contributors": [
                    "duplexa"
                ],
                "label": "md5",
                "cwlVersion": "sbg:draft-2",
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
                "sbg:validationErrors": [],
                "description": "",
                "sbg:modifiedOn": 1480978992,
                "sbg:createdBy": "duplexa",
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
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "class": "CommandLineTool",
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_file"
                    }
                ],
                "successCodes": [],
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_file.ext",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "arguments": [],
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
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "duplexa/md5:v1"
                    }
                ],
                "sbg:sbgMaintained": false,
                "baseCommand": [
                    "run.sh"
                ],
                "requirements": [],
                "sbg:latestRevision": 1,
                "sbg:id": "4dn-dcic/dev/md5/1",
                "sbg:revision": 1,
                "temporaryFailCodes": [],
                "stdin": "",
                "sbg:image_url": null,
                "sbg:createdOn": 1480978938,
                "sbg:cmdPreview": "run.sh",
                "sbg:project": "4dn-dcic/dev",
                "sbg:modifiedBy": "duplexa"
            }
        },
        {
            "sbg:y": 394.3784484863281,
            "sbg:x": 647,
            "id": "#validatefiles",
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
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
                "stdout": "",
                "sbg:contributors": [
                    "duplexa"
                ],
                "label": "validatefiles",
                "cwlVersion": "sbg:draft-2",
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
                "sbg:validationErrors": [],
                "description": "",
                "sbg:modifiedOn": 1480981592,
                "sbg:createdBy": "duplexa",
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
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
                "class": "CommandLineTool",
                "inputs": [
                    {
                        "id": "#input_file",
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "\"fastq\""
                            }
                        },
                        "sbg:toolDefaultValue": "fastq",
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
                        "id": "#type"
                    }
                ],
                "successCodes": [],
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_file.ext",
                            "size": 0
                        },
                        "type": "fastq"
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 500
                    }
                },
                "arguments": [],
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
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "duplexa/validatefiles:v1"
                    }
                ],
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "sbg:sbgMaintained": false,
                "baseCommand": [
                    "run.sh",
                    ""
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
                "sbg:latestRevision": 10,
                "sbg:id": "4dn-dcic/dev/validate/10",
                "sbg:revision": 10,
                "temporaryFailCodes": [],
                "stdin": "",
                "sbg:image_url": null,
                "sbg:createdOn": 1476287593,
                "sbg:cmdPreview": "run.sh",
                "sbg:project": "4dn-dcic/dev",
                "sbg:modifiedBy": "duplexa"
            }
        }
    ],
    "sbg:latestRevision": 1,
    "sbg:canvas_zoom": 1,
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "sbg:revision": 1,
    "sbg:canvas_y": 0,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "sbg:createdOn": 1484924251,
    "sbg:project": "4dn-dcic/dev"
}