{
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
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "cwlVersion": "sbg:draft-2",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "hints": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:createdBy": "duplexa",
    "class": "Workflow",
    "requirements": [],
    "steps": [
        {
            "sbg:y": 117.48957824707031,
            "id": "#md5",
            "sbg:x": 617,
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "inputs": [
                {
                    "source": [
                        "#input_file"
                    ],
                    "id": "#md5.input_file"
                }
            ],
            "run": {
                "temporaryFailCodes": [],
                "baseCommand": [
                    "run.sh"
                ],
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
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "cwlVersion": "sbg:draft-2",
                "sbg:image_url": null,
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
                "sbg:cmdPreview": "run.sh",
                "stdin": "",
                "sbg:modifiedBy": "duplexa",
                "successCodes": [],
                "sbg:createdBy": "duplexa",
                "class": "CommandLineTool",
                "requirements": [],
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:project": "4dn-dcic/dev",
                "label": "md5",
                "sbg:sbgMaintained": false,
                "sbg:modifiedOn": 1480978992,
                "description": "",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "input_file": {
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_file.ext",
                            "size": 0
                        }
                    }
                },
                "sbg:createdOn": 1480978938,
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#input_file"
                    }
                ],
                "arguments": [],
                "sbg:revision": 1,
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
                "sbg:validationErrors": [],
                "sbg:latestRevision": 1,
                "sbg:id": "4dn-dcic/dev/md5/1",
                "stdout": ""
            }
        },
        {
            "sbg:y": 394.3784484863281,
            "id": "#validatefiles",
            "sbg:x": 647,
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
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
            "run": {
                "temporaryFailCodes": [],
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
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
                "cwlVersion": "sbg:draft-2",
                "sbg:image_url": null,
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "sbg:cmdPreview": "run.sh",
                "stdin": "",
                "sbg:modifiedBy": "duplexa",
                "successCodes": [],
                "sbg:createdBy": "duplexa",
                "class": "CommandLineTool",
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "id": "#cwl-js-engine"
                    }
                ],
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "sbg:project": "4dn-dcic/dev",
                "label": "validatefiles",
                "sbg:sbgMaintained": false,
                "sbg:modifiedOn": 1480981592,
                "description": "",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 500
                    },
                    "inputs": {
                        "type": "fastq",
                        "input_file": {
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_file.ext",
                            "size": 0
                        }
                    }
                },
                "sbg:createdOn": 1476287593,
                "inputs": [
                    {
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#input_file"
                    },
                    {
                        "id": "#type",
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
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "\"fastq\""
                            }
                        },
                        "sbg:toolDefaultValue": "fastq"
                    }
                ],
                "arguments": [],
                "sbg:revision": 10,
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
                "sbg:validationErrors": [],
                "sbg:latestRevision": 10,
                "sbg:id": "4dn-dcic/dev/validate/10",
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
                "stdout": ""
            }
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "label": "md5-validate",
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1484924434,
    "description": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "outputs": [
        {
            "label": "validate_report",
            "sbg:y": 355.8819580078125,
            "sbg:x": 1018,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#validatefiles.report"
            ],
            "id": "#validatefiles_report",
            "sbg:includeInPorts": true
        },
        {
            "label": "md5_report",
            "sbg:y": 107.88194274902344,
            "sbg:x": 1014,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#md5.report"
            ],
            "id": "#md5_report",
            "sbg:includeInPorts": true
        }
    ],
    "sbg:createdOn": 1484924251,
    "sbg:canvas_y": 0,
    "inputs": [
        {
            "label": "input_file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
            "sbg:x": 104,
            "sbg:y": 409.88194274902344
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:projectName": "Dev",
    "sbg:canvas_zoom": 1,
    "sbg:validationErrors": [],
    "sbg:canvas_x": 0,
    "sbg:latestRevision": 1,
    "sbg:revision": 1
}