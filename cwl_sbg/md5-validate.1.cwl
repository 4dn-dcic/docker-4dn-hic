{
    "outputs": [
        {
            "sbg:x": 1018,
            "type": [
                "null",
                "File"
            ],
            "id": "#validatefiles_report",
            "label": "validate_report",
            "sbg:includeInPorts": true,
            "source": [
                "#validatefiles.report"
            ],
            "sbg:y": 355.8819580078125
        },
        {
            "sbg:x": 1014,
            "type": [
                "null",
                "File"
            ],
            "id": "#md5_report",
            "label": "md5_report",
            "sbg:includeInPorts": true,
            "source": [
                "#md5.report"
            ],
            "sbg:y": 107.88194274902344
        }
    ],
    "steps": [
        {
            "sbg:x": 617,
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "run": {
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
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "size": 0,
                            "path": "/path/to/input_file.ext",
                            "class": "File",
                            "secondaryFiles": []
                        }
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
                "stdout": "",
                "sbg:createdOn": 1480978938,
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:cmdPreview": "run.sh",
                "description": "",
                "baseCommand": [
                    "run.sh"
                ],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "sbg:id": "4dn-dcic/dev/md5/1",
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
                "sbg:project": "4dn-dcic/dev",
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
                "sbg:modifiedBy": "duplexa",
                "sbg:createdBy": "duplexa",
                "sbg:modifiedOn": 1480978992,
                "temporaryFailCodes": [],
                "label": "md5",
                "sbg:revision": 1,
                "requirements": [],
                "successCodes": [],
                "arguments": [],
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:sbgMaintained": false,
                "sbg:latestRevision": 1,
                "sbg:validationErrors": []
            },
            "id": "#md5",
            "inputs": [
                {
                    "id": "#md5.input_file",
                    "source": [
                        "#input_file"
                    ]
                }
            ],
            "sbg:y": 117.48957824707031
        },
        {
            "sbg:x": 647,
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "run": {
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
                ],
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "size": 0,
                            "path": "/path/to/input_file.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "type": "fastq"
                    },
                    "allocatedResources": {
                        "mem": 500,
                        "cpu": 1
                    }
                },
                "stdout": "",
                "sbg:createdOn": 1476287593,
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:cmdPreview": "run.sh",
                "inputs": [
                    {
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
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
                    },
                    {
                        "sbg:toolDefaultValue": "fastq",
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
                        "id": "#type",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "\"fastq\"",
                                "engine": "#cwl-js-engine"
                            },
                            "position": 2
                        }
                    }
                ],
                "description": "",
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
                "sbg:id": "4dn-dcic/dev/validate/10",
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "sbg:project": "4dn-dcic/dev",
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
                "sbg:modifiedBy": "duplexa",
                "sbg:createdBy": "duplexa",
                "sbg:modifiedOn": 1480981592,
                "temporaryFailCodes": [],
                "label": "validatefiles",
                "sbg:revision": 10,
                "requirements": [
                    {
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "successCodes": [],
                "arguments": [],
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:sbgMaintained": false,
                "sbg:latestRevision": 10,
                "sbg:validationErrors": []
            },
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
            "sbg:y": 394.3784484863281
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:createdOn": 1484924251,
    "class": "Workflow",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:latestRevision": 1,
    "description": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "inputs": [
        {
            "sbg:x": 104,
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
            "label": "input_file",
            "sbg:y": 409.88194274902344,
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "hints": [],
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
    "sbg:canvas_zoom": 1,
    "sbg:createdBy": "duplexa",
    "sbg:canvas_x": 0,
    "sbg:modifiedOn": 1484924434,
    "sbg:project": "4dn-dcic/dev",
    "label": "md5-validate",
    "sbg:revision": 1,
    "requirements": [],
    "sbg:modifiedBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "sbg:sbgMaintained": false,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "sbg:validationErrors": [],
    "sbg:canvas_y": 0
}