{
    "steps": [
        {
            "id": "#md5",
            "inputs": [
                {
                    "id": "#md5.input_file",
                    "source": [
                        "#input_file"
                    ]
                }
            ],
            "run": {
                "stdin": "",
                "sbg:latestRevision": 1,
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
                "sbg:createdBy": "duplexa",
                "successCodes": [],
                "temporaryFailCodes": [],
                "sbg:createdOn": 1480978938,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "stdout": "",
                "sbg:sbgMaintained": false,
                "sbg:id": "4dn-dcic/dev/md5/1",
                "sbg:modifiedBy": "duplexa",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_file",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    }
                ],
                "label": "md5",
                "sbg:cmdPreview": "run.sh",
                "sbg:revision": 1,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480978938,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480978992,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1
                    }
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "input_file": {
                            "path": "/path/to/input_file.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        }
                    }
                },
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
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:modifiedOn": 1480978992,
                "class": "CommandLineTool",
                "baseCommand": [
                    "run.sh"
                ],
                "arguments": [],
                "requirements": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:image_url": null,
                "description": "",
                "sbg:project": "4dn-dcic/dev",
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:validationErrors": []
            },
            "sbg:y": 117.48957824707031,
            "sbg:x": 617,
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ]
        },
        {
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
            "run": {
                "stdin": "",
                "sbg:latestRevision": 10,
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
                "sbg:createdBy": "duplexa",
                "successCodes": [],
                "temporaryFailCodes": [],
                "stdout": "",
                "sbg:createdOn": 1476287593,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
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
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "sbg:sbgMaintained": false,
                "sbg:id": "4dn-dcic/dev/validate/10",
                "sbg:modifiedBy": "duplexa",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "id": "#input_file",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    },
                    {
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
                        "id": "#type",
                        "sbg:toolDefaultValue": "fastq",
                        "inputBinding": {
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "\"fastq\"",
                                "class": "Expression"
                            },
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        }
                    }
                ],
                "label": "validatefiles",
                "sbg:cmdPreview": "run.sh",
                "sbg:revision": 10,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1476287593,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": "first revision",
                        "sbg:modifiedOn": 1476287940,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479853127,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479853200,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479853246,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:revisionNotes": "added validate_on switch.",
                        "sbg:modifiedOn": 1480958676,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 5
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480958776,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480958819,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480958939,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 8
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480981348,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 9
                    },
                    {
                        "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                        "sbg:modifiedOn": 1480981592,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 10
                    }
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 500
                    },
                    "inputs": {
                        "input_file": {
                            "path": "/path/to/input_file.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "type": "fastq"
                    }
                },
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
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    }
                ],
                "class": "CommandLineTool",
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "arguments": [],
                "sbg:modifiedOn": 1480981592,
                "cwlVersion": "sbg:draft-2",
                "sbg:image_url": null,
                "description": "",
                "sbg:project": "4dn-dcic/dev",
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:validationErrors": []
            },
            "sbg:y": 394.3784484863281,
            "sbg:x": 647,
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ]
        }
    ],
    "sbg:latestRevision": 1,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "outputs": [
        {
            "sbg:y": 355.8819580078125,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#validatefiles.report"
            ],
            "sbg:includeInPorts": true,
            "id": "#validatefiles_report",
            "sbg:x": 1018,
            "label": "validate_report"
        },
        {
            "sbg:y": 107.88194274902344,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#md5.report"
            ],
            "sbg:includeInPorts": true,
            "id": "#md5_report",
            "sbg:x": 1014,
            "label": "md5_report"
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:createdOn": 1484924251,
    "sbg:contributors": [
        "duplexa"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "sbg:canvas_zoom": 1,
    "sbg:sbgMaintained": false,
    "class": "Workflow",
    "sbg:modifiedBy": "duplexa",
    "inputs": [
        {
            "sbg:y": 409.88194274902344,
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "id": "#input_file",
            "sbg:x": 104,
            "label": "input_file"
        }
    ],
    "label": "md5-validate",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1484924251,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1484924434,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1
        }
    ],
    "sbg:revision": 1,
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "hints": [],
    "sbg:canvas_x": 0,
    "sbg:validationErrors": [],
    "sbg:modifiedOn": 1484924434,
    "sbg:canvas_y": 0,
    "requirements": [],
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "sbg:projectName": "Dev"
}