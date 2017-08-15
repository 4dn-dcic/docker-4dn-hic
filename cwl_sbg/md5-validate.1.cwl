{
    "label": "md5-validate",
    "sbg:createdBy": "duplexa",
    "sbg:validationErrors": [],
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "sbg:project": "4dn-dcic/dev",
    "class": "Workflow",
    "sbg:createdOn": 1484924251,
    "sbg:projectName": "Dev",
    "sbg:modifiedBy": "duplexa",
    "sbg:canvas_y": 0,
    "sbg:contributors": [
        "duplexa"
    ],
    "outputs": [
        {
            "sbg:y": 355.8819580078125,
            "label": "validate_report",
            "sbg:includeInPorts": true,
            "sbg:x": 1018,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#validatefiles.report"
            ],
            "id": "#validatefiles_report"
        },
        {
            "sbg:y": 107.88194274902344,
            "label": "md5_report",
            "sbg:includeInPorts": true,
            "sbg:x": 1014,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#md5.report"
            ],
            "id": "#md5_report"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
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
    "sbg:modifiedOn": 1484924434,
    "hints": [],
    "sbg:sbgMaintained": false,
    "sbg:canvas_zoom": 1,
    "sbg:latestRevision": 1,
    "sbg:canvas_x": 0,
    "requirements": [],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "inputs": [
        {
            "sbg:y": 409.88194274902344,
            "label": "input_file",
            "sbg:x": 104,
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "id": "#input_file"
        }
    ],
    "sbg:revision": 1,
    "description": "",
    "steps": [
        {
            "sbg:y": 117.48957824707031,
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "run": {
                "label": "md5",
                "sbg:createdBy": "duplexa",
                "sbg:image_url": null,
                "stdin": "",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "id": "#input_file"
                    }
                ],
                "sbg:validationErrors": [],
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "path": "/path/to/input_file.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "stdout": "",
                "sbg:project": "4dn-dcic/dev",
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:modifiedBy": "duplexa",
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "duplexa"
                ],
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
                "cwlVersion": "sbg:draft-2",
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
                "sbg:modifiedOn": 1480978992,
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/md5:v1",
                        "class": "DockerRequirement"
                    }
                ],
                "arguments": [],
                "successCodes": [],
                "description": "",
                "sbg:latestRevision": 1,
                "sbg:cmdPreview": "run.sh",
                "requirements": [],
                "sbg:createdOn": 1480978938,
                "sbg:id": "4dn-dcic/dev/md5/1",
                "sbg:revision": 1,
                "temporaryFailCodes": [],
                "sbg:sbgMaintained": false
            },
            "sbg:x": 617,
            "inputs": [
                {
                    "source": [
                        "#input_file"
                    ],
                    "id": "#md5.input_file"
                }
            ],
            "id": "#md5"
        },
        {
            "sbg:y": 394.3784484863281,
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "run": {
                "label": "validatefiles",
                "sbg:createdBy": "duplexa",
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "sbg:image_url": null,
                "stdin": "",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "id": "#input_file"
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
                        "sbg:toolDefaultValue": "fastq",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "script": "\"fastq\"",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            },
                            "position": 2
                        },
                        "id": "#type"
                    }
                ],
                "sbg:validationErrors": [],
                "sbg:job": {
                    "inputs": {
                        "type": "fastq",
                        "input_file": {
                            "path": "/path/to/input_file.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 500
                    }
                },
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
                "stdout": "",
                "sbg:project": "4dn-dcic/dev",
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "sbg:modifiedBy": "duplexa",
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "duplexa"
                ],
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
                "cwlVersion": "sbg:draft-2",
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
                "sbg:modifiedOn": 1480981592,
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/validatefiles:v1",
                        "class": "DockerRequirement"
                    }
                ],
                "arguments": [],
                "successCodes": [],
                "description": "",
                "sbg:latestRevision": 10,
                "sbg:cmdPreview": "run.sh",
                "requirements": [
                    {
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine"
                    }
                ],
                "sbg:createdOn": 1476287593,
                "sbg:id": "4dn-dcic/dev/validate/10",
                "sbg:revision": 10,
                "temporaryFailCodes": [],
                "sbg:sbgMaintained": false
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
            ],
            "id": "#validatefiles"
        }
    ]
}