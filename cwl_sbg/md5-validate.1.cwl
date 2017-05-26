{
    "outputs": [
        {
            "sbg:y": 355.8819580078125,
            "label": "validate_report",
            "sbg:includeInPorts": true,
            "source": [
                "#validatefiles.report"
            ],
            "sbg:x": 1018,
            "id": "#validatefiles_report",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 107.88194274902344,
            "label": "md5_report",
            "sbg:includeInPorts": true,
            "source": [
                "#md5.report"
            ],
            "sbg:x": 1014,
            "id": "#md5_report",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:latestRevision": 1,
    "sbg:createdOn": 1484924251,
    "sbg:revision": 1,
    "sbg:canvas_x": 0,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1484924434,
    "sbg:sbgMaintained": false,
    "sbg:project": "4dn-dcic/dev",
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "duplexa",
    "class": "Workflow",
    "cwlVersion": "sbg:draft-2",
    "requirements": [],
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
    "label": "md5-validate",
    "sbg:contributors": [
        "duplexa"
    ],
    "hints": [],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "sbg:canvas_zoom": 1,
    "steps": [
        {
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "sbg:y": 117.48957824707031,
            "run": {
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
                "sbg:latestRevision": 1,
                "sbg:createdOn": 1480978938,
                "stdout": "",
                "sbg:revision": 1,
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
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/md5:v1"
                    }
                ],
                "successCodes": [],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "label": "md5",
                "sbg:modifiedOn": 1480978992,
                "sbg:sbgMaintained": false,
                "sbg:cmdPreview": "run.sh",
                "sbg:project": "4dn-dcic/dev",
                "sbg:validationErrors": [],
                "sbg:id": "4dn-dcic/dev/md5/1",
                "class": "CommandLineTool",
                "cwlVersion": "sbg:draft-2",
                "requirements": [],
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
                "stdin": "",
                "sbg:contributors": [
                    "duplexa"
                ],
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:image_url": null,
                "description": "",
                "sbg:createdBy": "duplexa",
                "arguments": [],
                "sbg:modifiedBy": "duplexa",
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
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "inputs": [
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true
                        },
                        "id": "#input_file",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "temporaryFailCodes": []
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
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "sbg:y": 394.3784484863281,
            "run": {
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
                "sbg:latestRevision": 10,
                "sbg:createdOn": 1476287593,
                "stdout": "",
                "sbg:revision": 10,
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
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/validatefiles:v1"
                    }
                ],
                "successCodes": [],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
                "label": "validatefiles",
                "sbg:modifiedOn": 1480981592,
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "sbg:sbgMaintained": false,
                "sbg:cmdPreview": "run.sh",
                "sbg:project": "4dn-dcic/dev",
                "sbg:validationErrors": [],
                "sbg:id": "4dn-dcic/dev/validate/10",
                "class": "CommandLineTool",
                "cwlVersion": "sbg:draft-2",
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
                ],
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
                "stdin": "",
                "sbg:contributors": [
                    "duplexa"
                ],
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "sbg:image_url": null,
                "description": "",
                "sbg:createdBy": "duplexa",
                "arguments": [],
                "sbg:modifiedBy": "duplexa",
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
                        "cpu": 1,
                        "mem": 500
                    }
                },
                "inputs": [
                    {
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true
                        },
                        "id": "#input_file",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "\"fastq\""
                            },
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": true
                        },
                        "id": "#type",
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
                        ]
                    }
                ],
                "temporaryFailCodes": []
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
    ],
    "sbg:createdBy": "duplexa",
    "description": "",
    "inputs": [
        {
            "sbg:y": 409.88194274902344,
            "label": "input_file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "sbg:x": 104,
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:canvas_y": 0
}