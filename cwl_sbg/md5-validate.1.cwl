{
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:sbgMaintained": false,
    "sbg:canvas_zoom": 1,
    "description": "",
    "class": "Workflow",
    "sbg:validationErrors": [],
    "outputs": [
        {
            "source": [
                "#validatefiles.report"
            ],
            "sbg:includeInPorts": true,
            "sbg:x": 1018,
            "type": [
                "null",
                "File"
            ],
            "label": "validate_report",
            "id": "#validatefiles_report",
            "sbg:y": 355.8819580078125
        },
        {
            "source": [
                "#md5.report"
            ],
            "sbg:includeInPorts": true,
            "sbg:x": 1014,
            "type": [
                "null",
                "File"
            ],
            "label": "md5_report",
            "id": "#md5_report",
            "sbg:y": 107.88194274902344
        }
    ],
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "sbg:x": 104,
            "type": [
                "null",
                "File"
            ],
            "label": "input_file",
            "id": "#input_file",
            "sbg:y": 409.88194274902344
        }
    ],
    "hints": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:latestRevision": 1,
    "sbg:revision": 1,
    "sbg:canvas_x": 0,
    "sbg:createdBy": "duplexa",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "sbg:modifiedOn": 1484924434,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:canvas_y": 0,
    "steps": [
        {
            "run": {
                "sbg:modifiedBy": "duplexa",
                "sbg:sbgMaintained": false,
                "description": "",
                "class": "CommandLineTool",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    },
                    "inputs": {
                        "input_file": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_file.ext",
                            "size": 0
                        }
                    }
                },
                "stdin": "",
                "sbg:validationErrors": [],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#report",
                        "outputBinding": {
                            "glob": "\"report\""
                        }
                    }
                ],
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "id": "#input_file"
                    }
                ],
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
                "sbg:project": "4dn-dcic/dev",
                "sbg:latestRevision": 1,
                "cwlVersion": "sbg:draft-2",
                "arguments": [],
                "sbg:image_url": null,
                "sbg:modifiedOn": 1480978992,
                "sbg:contributors": [
                    "duplexa"
                ],
                "successCodes": [],
                "sbg:revision": 1,
                "label": "md5",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1480978938,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480978992,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "sbg:id": "4dn-dcic/dev/md5/1",
                "sbg:cmdPreview": "run.sh",
                "baseCommand": [
                    "run.sh"
                ],
                "temporaryFailCodes": [],
                "stdout": "",
                "requirements": [],
                "sbg:createdBy": "duplexa",
                "sbg:createdOn": 1480978938,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/"
            },
            "inputs": [
                {
                    "source": [
                        "#input_file"
                    ],
                    "id": "#md5.input_file"
                }
            ],
            "sbg:x": 617,
            "id": "#md5",
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "sbg:y": 117.48957824707031
        },
        {
            "run": {
                "sbg:modifiedBy": "duplexa",
                "sbg:sbgMaintained": false,
                "description": "",
                "class": "CommandLineTool",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 500,
                        "cpu": 1
                    },
                    "inputs": {
                        "type": "fastq",
                        "input_file": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_file.ext",
                            "size": 0
                        }
                    }
                },
                "stdin": "",
                "sbg:validationErrors": [],
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "id": "#input_file",
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
                        "id": "#type",
                        "sbg:toolDefaultValue": "fastq"
                    }
                ],
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
                "sbg:project": "4dn-dcic/dev",
                "sbg:latestRevision": 10,
                "cwlVersion": "sbg:draft-2",
                "stdout": "",
                "sbg:image_url": null,
                "sbg:modifiedOn": 1480981592,
                "sbg:contributors": [
                    "duplexa"
                ],
                "successCodes": [],
                "sbg:revision": 10,
                "label": "validatefiles",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1476287593,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1476287940,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": "first revision",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1479853127,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1479853200,
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1479853246,
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480958676,
                        "sbg:revision": 5,
                        "sbg:revisionNotes": "added validate_on switch.",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480958776,
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480958819,
                        "sbg:revision": 7,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480958939,
                        "sbg:revision": 8,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480981348,
                        "sbg:revision": 9,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480981592,
                        "sbg:revision": 10,
                        "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "sbg:id": "4dn-dcic/dev/validate/10",
                "temporaryFailCodes": [],
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "sbg:cmdPreview": "run.sh",
                "arguments": [],
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
                "sbg:createdBy": "duplexa",
                "sbg:createdOn": 1476287593,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#report",
                        "outputBinding": {
                            "glob": "\"report_validatefiles\""
                        }
                    }
                ]
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
            "sbg:x": 647,
            "id": "#validatefiles",
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "sbg:y": 394.3784484863281
        }
    ],
    "label": "md5-validate",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1484924251,
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1484924434,
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "requirements": [],
    "sbg:projectName": "Dev",
    "sbg:createdOn": 1484924251,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "cwlVersion": "sbg:draft-2"
}