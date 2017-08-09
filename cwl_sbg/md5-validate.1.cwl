{
    "label": "md5-validate",
    "sbg:sbgMaintained": false,
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1484924251,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1484924434,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:validationErrors": [],
    "steps": [
        {
            "run": {
                "label": "md5",
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1480978938,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1480978992,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "stdout": "",
                "temporaryFailCodes": [],
                "sbg:modifiedBy": "duplexa",
                "sbg:validationErrors": [],
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
                "sbg:latestRevision": 1,
                "arguments": [],
                "successCodes": [],
                "sbg:id": "4dn-dcic/dev/md5/1",
                "sbg:cmdPreview": "run.sh",
                "sbg:createdOn": 1480978938,
                "sbg:modifiedOn": 1480978992,
                "baseCommand": [
                    "run.sh"
                ],
                "stdin": "",
                "sbg:image_url": null,
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_file.ext",
                            "class": "File",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
                "class": "CommandLineTool",
                "inputs": [
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        },
                        "id": "#input_file",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:createdBy": "duplexa",
                "sbg:revision": 1,
                "sbg:contributors": [
                    "duplexa"
                ],
                "cwlVersion": "sbg:draft-2",
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
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "requirements": []
            },
            "inputs": [
                {
                    "id": "#md5.input_file",
                    "source": [
                        "#input_file"
                    ]
                }
            ],
            "sbg:x": 617,
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "id": "#md5",
            "sbg:y": 117.48957824707031
        },
        {
            "run": {
                "label": "validatefiles",
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1476287593,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1476287940,
                        "sbg:revisionNotes": "first revision",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1479853127,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1479853200,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1479853246,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1480958676,
                        "sbg:revisionNotes": "added validate_on switch.",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1480958776,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1480958819,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1480958939,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1480981348,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1480981592,
                        "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "stdout": "",
                "sbg:modifiedBy": "duplexa",
                "sbg:validationErrors": [],
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
                "sbg:latestRevision": 10,
                "arguments": [],
                "successCodes": [],
                "sbg:id": "4dn-dcic/dev/validate/10",
                "sbg:cmdPreview": "run.sh",
                "sbg:createdOn": 1476287593,
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_file.ext",
                            "class": "File",
                            "size": 0
                        },
                        "type": "fastq"
                    },
                    "allocatedResources": {
                        "mem": 500,
                        "cpu": 1
                    }
                },
                "temporaryFailCodes": [],
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "stdin": "",
                "sbg:image_url": null,
                "sbg:modifiedOn": 1480981592,
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "class": "CommandLineTool",
                "inputs": [
                    {
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        },
                        "id": "#input_file",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "\"fastq\"",
                                "engine": "#cwl-js-engine"
                            }
                        },
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
                        ]
                    }
                ],
                "sbg:createdBy": "duplexa",
                "sbg:revision": 10,
                "sbg:contributors": [
                    "duplexa"
                ],
                "cwlVersion": "sbg:draft-2",
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
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
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
                ]
            },
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
            "sbg:x": 647,
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "id": "#validatefiles",
            "sbg:y": 394.3784484863281
        }
    ],
    "sbg:canvas_zoom": 1,
    "hints": [],
    "sbg:latestRevision": 1,
    "description": "",
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdOn": 1484924251,
    "sbg:projectName": "Dev",
    "sbg:canvas_y": 0,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "sbg:modifiedOn": 1484924434,
    "sbg:canvas_x": 0,
    "class": "Workflow",
    "inputs": [
        {
            "label": "input_file",
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "sbg:x": 104,
            "sbg:y": 409.88194274902344
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:revision": 1,
    "sbg:contributors": [
        "duplexa"
    ],
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
            "label": "validate_report",
            "sbg:includeInPorts": true,
            "source": [
                "#validatefiles.report"
            ],
            "sbg:x": 1018,
            "type": [
                "null",
                "File"
            ],
            "id": "#validatefiles_report",
            "sbg:y": 355.8819580078125
        },
        {
            "label": "md5_report",
            "sbg:includeInPorts": true,
            "source": [
                "#md5.report"
            ],
            "sbg:x": 1014,
            "type": [
                "null",
                "File"
            ],
            "id": "#md5_report",
            "sbg:y": 107.88194274902344
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "requirements": []
}