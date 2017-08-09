{
    "sbg:validationErrors": [],
    "sbg:canvas_y": 0,
    "sbg:modifiedOn": 1484924434,
    "sbg:canvas_zoom": 1,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "cwlVersion": "sbg:draft-2",
    "sbg:sbgMaintained": false,
    "inputs": [
        {
            "sbg:y": 409.88194274902344,
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 104,
            "label": "input_file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
        }
    ],
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "label": "md5-validate",
    "sbg:createdOn": 1484924251,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "requirements": [],
    "outputs": [
        {
            "sbg:y": 355.8819580078125,
            "source": [
                "#validatefiles.report"
            ],
            "sbg:includeInPorts": true,
            "id": "#validatefiles_report",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 1018,
            "label": "validate_report"
        },
        {
            "sbg:y": 107.88194274902344,
            "source": [
                "#md5.report"
            ],
            "sbg:includeInPorts": true,
            "id": "#md5_report",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 1014,
            "label": "md5_report"
        }
    ],
    "steps": [
        {
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
            "id": "#md5",
            "run": {
                "sbg:validationErrors": [],
                "sbg:modifiedOn": 1480978992,
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:image_url": null,
                "cwlVersion": "sbg:draft-2",
                "sbg:sbgMaintained": false,
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
                ],
                "sbg:id": "4dn-dcic/dev/md5/1",
                "stdout": "",
                "label": "md5",
                "sbg:createdOn": 1480978938,
                "requirements": [],
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
                "arguments": [],
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_file.ext",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "sbg:modifiedBy": "duplexa",
                "successCodes": [],
                "sbg:project": "4dn-dcic/dev",
                "sbg:contributors": [
                    "duplexa"
                ],
                "class": "CommandLineTool",
                "sbg:latestRevision": 1,
                "description": "",
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
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480978938,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480978992,
                        "sbg:revision": 1
                    }
                ],
                "temporaryFailCodes": [],
                "sbg:cmdPreview": "run.sh",
                "sbg:revision": 1,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "sbg:createdBy": "duplexa",
                "stdin": ""
            },
            "sbg:x": 617
        },
        {
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
            "id": "#validatefiles",
            "run": {
                "sbg:validationErrors": [],
                "sbg:modifiedOn": 1480981592,
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "sbg:image_url": null,
                "cwlVersion": "sbg:draft-2",
                "sbg:sbgMaintained": false,
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
                        ],
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
                    },
                    {
                        "sbg:toolDefaultValue": "fastq",
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
                        "id": "#type",
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
                        ]
                    }
                ],
                "sbg:id": "4dn-dcic/dev/validate/10",
                "stdout": "",
                "label": "validatefiles",
                "sbg:createdOn": 1476287593,
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
                "arguments": [],
                "sbg:job": {
                    "inputs": {
                        "type": "fastq",
                        "input_file": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_file.ext",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 500
                    }
                },
                "sbg:modifiedBy": "duplexa",
                "successCodes": [],
                "sbg:project": "4dn-dcic/dev",
                "sbg:contributors": [
                    "duplexa"
                ],
                "class": "CommandLineTool",
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "description": "",
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
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1476287593,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "first revision",
                        "sbg:modifiedOn": 1476287940,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479853127,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479853200,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479853246,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "added validate_on switch.",
                        "sbg:modifiedOn": 1480958676,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480958776,
                        "sbg:revision": 6
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480958819,
                        "sbg:revision": 7
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480958939,
                        "sbg:revision": 8
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1480981348,
                        "sbg:revision": 9
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                        "sbg:modifiedOn": 1480981592,
                        "sbg:revision": 10
                    }
                ],
                "temporaryFailCodes": [],
                "sbg:cmdPreview": "run.sh",
                "sbg:revision": 10,
                "sbg:latestRevision": 10,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
                "sbg:createdBy": "duplexa",
                "stdin": ""
            },
            "sbg:x": 647
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:canvas_x": 0,
    "sbg:createdBy": "duplexa",
    "sbg:project": "4dn-dcic/dev",
    "sbg:contributors": [
        "duplexa"
    ],
    "class": "Workflow",
    "sbg:latestRevision": 1,
    "hints": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1484924251,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1484924434,
            "sbg:revision": 1
        }
    ],
    "sbg:revision": 1,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "sbg:projectName": "Dev",
    "description": ""
}