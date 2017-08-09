{
    "requirements": [],
    "sbg:createdOn": 1484924251,
    "sbg:validationErrors": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "label": "md5-validate",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "label": "input_file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "id": "#input_file",
            "sbg:x": 104,
            "sbg:y": 409.88194274902344
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1484924251,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1484924434,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_x": 0,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:canvas_y": 0,
    "sbg:latestRevision": 1,
    "sbg:projectName": "Dev",
    "description": "",
    "sbg:createdBy": "duplexa",
    "sbg:canvas_zoom": 1,
    "sbg:modifiedOn": 1484924434,
    "sbg:modifiedBy": "duplexa",
    "steps": [
        {
            "run": {
                "requirements": [],
                "sbg:createdOn": 1480978938,
                "sbg:validationErrors": [],
                "sbg:id": "4dn-dcic/dev/md5/1",
                "label": "md5",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "sbg:cmdPreview": "run.sh",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1480978938,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1480978992,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "sbg:image_url": null,
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "duplexa"
                ],
                "inputs": [
                    {
                        "id": "#input_file",
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "stdout": "",
                "stdin": "",
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "path": "/path/to/input_file.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "description": "",
                "sbg:latestRevision": 1,
                "sbg:modifiedOn": 1480978992,
                "sbg:revision": 1,
                "sbg:modifiedBy": "duplexa",
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
                "successCodes": [],
                "arguments": [],
                "temporaryFailCodes": [],
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
                "sbg:project": "4dn-dcic/dev",
                "sbg:sbgMaintained": false,
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:createdBy": "duplexa",
                "class": "CommandLineTool"
            },
            "inputs": [
                {
                    "source": [
                        "#input_file"
                    ],
                    "id": "#md5.input_file"
                }
            ],
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "id": "#md5",
            "sbg:x": 617,
            "sbg:y": 117.48957824707031
        },
        {
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
                "sbg:createdOn": 1476287593,
                "sbg:validationErrors": [],
                "sbg:id": "4dn-dcic/dev/validate/10",
                "sbg:latestRevision": 10,
                "label": "validatefiles",
                "sbg:sbgMaintained": false,
                "sbg:cmdPreview": "run.sh",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1476287593,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "first revision",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1476287940,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1479853127,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1479853200,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1479853246,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "added validate_on switch.",
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1480958676,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1480958776,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1480958819,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1480958939,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1480981348,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1480981592,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "sbg:image_url": null,
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "duplexa"
                ],
                "inputs": [
                    {
                        "id": "#input_file",
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#type",
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "\"fastq\"",
                                "class": "Expression"
                            }
                        },
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
                        "sbg:toolDefaultValue": "fastq"
                    }
                ],
                "stdout": "",
                "stdin": "",
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "path": "/path/to/input_file.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "type": "fastq"
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 500
                    }
                },
                "description": "",
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "sbg:modifiedOn": 1480981592,
                "sbg:revision": 10,
                "sbg:modifiedBy": "duplexa",
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
                "successCodes": [],
                "arguments": [],
                "temporaryFailCodes": [],
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
                "sbg:project": "4dn-dcic/dev",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "sbg:createdBy": "duplexa",
                "class": "CommandLineTool"
            },
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
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "id": "#validatefiles",
            "sbg:x": 647,
            "sbg:y": 394.3784484863281
        }
    ],
    "outputs": [
        {
            "source": [
                "#validatefiles.report"
            ],
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "label": "validate_report",
            "id": "#validatefiles_report",
            "sbg:x": 1018,
            "sbg:y": 355.8819580078125
        },
        {
            "source": [
                "#md5.report"
            ],
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "label": "md5_report",
            "id": "#md5_report",
            "sbg:x": 1014,
            "sbg:y": 107.88194274902344
        }
    ],
    "hints": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:sbgMaintained": false,
    "sbg:revision": 1,
    "class": "Workflow"
}