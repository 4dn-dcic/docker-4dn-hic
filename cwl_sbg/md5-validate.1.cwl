{
    "sbg:canvas_zoom": 1,
    "sbg:modifiedBy": "duplexa",
    "sbg:latestRevision": 1,
    "label": "md5-validate",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "class": "Workflow",
    "sbg:canvas_y": 0,
    "outputs": [
        {
            "source": [
                "#validatefiles.report"
            ],
            "sbg:y": 355.8819580078125,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "validate_report",
            "id": "#validatefiles_report",
            "sbg:x": 1018
        },
        {
            "source": [
                "#md5.report"
            ],
            "sbg:y": 107.88194274902344,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "md5_report",
            "id": "#md5_report",
            "sbg:x": 1014
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:projectName": "Dev",
    "sbg:canvas_x": 0,
    "description": "",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1484924251,
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1484924434,
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "steps": [
        {
            "sbg:y": 117.48957824707031,
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "run": {
                "successCodes": [],
                "sbg:cmdPreview": "run.sh",
                "sbg:modifiedBy": "duplexa",
                "sbg:latestRevision": 1,
                "label": "md5",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "class": "CommandLineTool",
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
                "stdout": "",
                "stdin": "",
                "description": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1480978938,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480978992,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:image_url": null,
                "sbg:id": "4dn-dcic/dev/md5/1",
                "sbg:createdBy": "duplexa",
                "cwlVersion": "sbg:draft-2",
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
                "sbg:sbgMaintained": false,
                "sbg:revision": 1,
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:modifiedOn": 1480978992,
                "sbg:validationErrors": [],
                "sbg:project": "4dn-dcic/dev",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
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
                "temporaryFailCodes": [],
                "arguments": [],
                "sbg:createdOn": 1480978938,
                "requirements": [],
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
                ]
            },
            "id": "#md5",
            "inputs": [
                {
                    "source": [
                        "#input_file"
                    ],
                    "id": "#md5.input_file"
                }
            ],
            "sbg:x": 617
        },
        {
            "sbg:y": 394.3784484863281,
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "run": {
                "successCodes": [],
                "sbg:cmdPreview": "run.sh",
                "sbg:modifiedBy": "duplexa",
                "sbg:latestRevision": 10,
                "label": "validatefiles",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
                "class": "CommandLineTool",
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
                "stdout": "",
                "stdin": "",
                "description": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1476287593,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1476287940,
                        "sbg:revisionNotes": "first revision",
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1479853127,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1479853200,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1479853246,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480958676,
                        "sbg:revisionNotes": "added validate_on switch.",
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480958776,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480958819,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480958939,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480981348,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1480981592,
                        "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "sbg:image_url": null,
                "sbg:id": "4dn-dcic/dev/validate/10",
                "sbg:createdBy": "duplexa",
                "cwlVersion": "sbg:draft-2",
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_file",
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
                    },
                    {
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
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "valueFrom": {
                                "script": "\"fastq\"",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#type",
                        "sbg:toolDefaultValue": "fastq"
                    }
                ],
                "sbg:sbgMaintained": false,
                "sbg:revision": 10,
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:modifiedOn": 1480981592,
                "sbg:validationErrors": [],
                "sbg:project": "4dn-dcic/dev",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 500,
                        "cpu": 1
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
                "temporaryFailCodes": [],
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "arguments": [],
                "sbg:createdOn": 1476287593,
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ]
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
                        "dockerImageId": "",
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/validatefiles:v1"
                    }
                ]
            },
            "id": "#validatefiles",
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
            "sbg:x": 647
        }
    ],
    "sbg:createdBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 409.88194274902344,
            "sbg:x": 104,
            "label": "input_file",
            "id": "#input_file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:revision": 1,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:modifiedOn": 1484924434,
    "sbg:validationErrors": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1484924251,
    "requirements": [],
    "hints": []
}