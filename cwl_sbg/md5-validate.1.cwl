{
    "sbg:createdBy": "duplexa",
    "requirements": [],
    "sbg:projectName": "Dev",
    "sbg:canvas_y": 0,
    "outputs": [
        {
            "source": [
                "#validatefiles.report"
            ],
            "sbg:includeInPorts": true,
            "label": "validate_report",
            "id": "#validatefiles_report",
            "sbg:x": 1018,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 355.8819580078125
        },
        {
            "source": [
                "#md5.report"
            ],
            "sbg:includeInPorts": true,
            "label": "md5_report",
            "id": "#md5_report",
            "sbg:x": 1014,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 107.88194274902344
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "sbg:canvas_zoom": 1,
    "hints": [],
    "sbg:validationErrors": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:revision": 1,
    "sbg:sbgMaintained": false,
    "description": "",
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "sbg:canvas_x": 0,
    "sbg:createdOn": 1484924251,
    "steps": [
        {
            "sbg:x": 617,
            "id": "#md5",
            "run": {
                "sbg:createdBy": "duplexa",
                "baseCommand": [
                    "run.sh"
                ],
                "requirements": [],
                "sbg:modifiedOn": 1480978992,
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "input_file": {
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/input_file.ext",
                            "secondaryFiles": []
                        }
                    }
                },
                "outputs": [
                    {
                        "id": "#report",
                        "outputBinding": {
                            "glob": "\"report\""
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:image_url": null,
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
                "stdin": "",
                "sbg:validationErrors": [],
                "sbg:cmdPreview": "run.sh",
                "sbg:project": "4dn-dcic/dev",
                "stdout": "",
                "temporaryFailCodes": [],
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:revision": 1,
                "sbg:sbgMaintained": false,
                "arguments": [],
                "sbg:id": "4dn-dcic/dev/md5/1",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "sbg:createdOn": 1480978938,
                "successCodes": [],
                "class": "CommandLineTool",
                "sbg:modifiedBy": "duplexa",
                "label": "md5",
                "sbg:latestRevision": 1,
                "description": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1480978938,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1480978992,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "inputs": [
                    {
                        "id": "#input_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        }
                    }
                ]
            },
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "sbg:y": 117.48957824707031,
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
            "sbg:x": 647,
            "id": "#validatefiles",
            "run": {
                "sbg:createdBy": "duplexa",
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "sbg:modifiedOn": 1480981592,
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
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
                            "path": "/path/to/input_file.ext",
                            "secondaryFiles": []
                        }
                    }
                },
                "outputs": [
                    {
                        "id": "#report",
                        "outputBinding": {
                            "glob": "\"report_validatefiles\""
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:image_url": null,
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
                "stdin": "",
                "sbg:validationErrors": [],
                "sbg:cmdPreview": "run.sh",
                "sbg:project": "4dn-dcic/dev",
                "stdout": "",
                "temporaryFailCodes": [],
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:revision": 10,
                "sbg:sbgMaintained": false,
                "arguments": [],
                "sbg:id": "4dn-dcic/dev/validate/10",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
                "sbg:createdOn": 1476287593,
                "successCodes": [],
                "class": "CommandLineTool",
                "sbg:modifiedBy": "duplexa",
                "label": "validatefiles",
                "sbg:latestRevision": 10,
                "description": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1476287593,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1476287940,
                        "sbg:revisionNotes": "first revision",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedOn": 1479853127,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedOn": 1479853200,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedOn": 1479853246,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedOn": 1480958676,
                        "sbg:revisionNotes": "added validate_on switch.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedOn": 1480958776,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6
                    },
                    {
                        "sbg:modifiedOn": 1480958819,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7
                    },
                    {
                        "sbg:modifiedOn": 1480958939,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 8
                    },
                    {
                        "sbg:modifiedOn": 1480981348,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 9
                    },
                    {
                        "sbg:modifiedOn": 1480981592,
                        "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 10
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "inputs": [
                    {
                        "id": "#input_file",
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:toolDefaultValue": "fastq",
                        "id": "#type",
                        "type": [
                            "null",
                            {
                                "name": "type",
                                "symbols": [
                                    "fastq",
                                    "fasta",
                                    "bam"
                                ],
                                "type": "enum"
                            }
                        ],
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "\"fastq\"",
                                "engine": "#cwl-js-engine"
                            },
                            "sbg:cmdInclude": true
                        }
                    }
                ]
            },
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
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
            ]
        }
    ],
    "class": "Workflow",
    "sbg:modifiedBy": "duplexa",
    "label": "md5-validate",
    "sbg:latestRevision": 1,
    "sbg:modifiedOn": 1484924434,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1484924251,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1484924434,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "label": "input_file",
            "id": "#input_file",
            "sbg:x": 104,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 409.88194274902344
        }
    ]
}