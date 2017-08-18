{
    "sbg:revision": 1,
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_zoom": 1,
    "sbg:latestRevision": 1,
    "sbg:id": "4dn-dcic/dev/md5-validate/1",
    "steps": [
        {
            "id": "#md5",
            "run": {
                "sbg:revision": 1,
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
                "sbg:latestRevision": 1,
                "sbg:id": "4dn-dcic/dev/md5/1",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "input_file": {
                            "path": "/path/to/input_file.ext",
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": []
                        }
                    }
                },
                "stdout": "",
                "requirements": [],
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
                "cwlVersion": "sbg:draft-2",
                "label": "md5",
                "sbg:sbgMaintained": false,
                "sbg:modifiedBy": "duplexa",
                "sbg:modifiedOn": 1480978992,
                "stdin": "",
                "sbg:createdOn": 1480978938,
                "temporaryFailCodes": [],
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
                        "dockerPull": "duplexa/md5:v1",
                        "dockerImageId": ""
                    }
                ],
                "sbg:contributors": [
                    "duplexa"
                ],
                "description": "",
                "sbg:createdBy": "duplexa",
                "baseCommand": [
                    "run.sh"
                ],
                "arguments": [],
                "successCodes": [],
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
                "sbg:cmdPreview": "run.sh",
                "sbg:validationErrors": [],
                "class": "CommandLineTool",
                "sbg:image_url": null,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
                "sbg:project": "4dn-dcic/dev"
            },
            "sbg:y": 117.48957824707031,
            "inputs": [
                {
                    "id": "#md5.input_file",
                    "source": [
                        "#input_file"
                    ]
                }
            ],
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "sbg:x": 617
        },
        {
            "id": "#validatefiles",
            "run": {
                "sbg:revision": 10,
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
                        },
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            },
                            "position": 2
                        },
                        "id": "#type"
                    }
                ],
                "sbg:latestRevision": 10,
                "sbg:id": "4dn-dcic/dev/validate/10",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 500
                    },
                    "inputs": {
                        "type": "fastq",
                        "input_file": {
                            "path": "/path/to/input_file.ext",
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": []
                        }
                    }
                },
                "stdout": "",
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
                "cwlVersion": "sbg:draft-2",
                "label": "validatefiles",
                "sbg:sbgMaintained": false,
                "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                "sbg:modifiedOn": 1480981592,
                "stdin": "",
                "sbg:createdOn": 1476287593,
                "temporaryFailCodes": [],
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
                        "dockerPull": "duplexa/validatefiles:v1",
                        "dockerImageId": ""
                    }
                ],
                "sbg:contributors": [
                    "duplexa"
                ],
                "description": "",
                "sbg:createdBy": "duplexa",
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "arguments": [],
                "successCodes": [],
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
                "sbg:cmdPreview": "run.sh",
                "sbg:validationErrors": [],
                "class": "CommandLineTool",
                "sbg:image_url": null,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
                "sbg:project": "4dn-dcic/dev"
            },
            "sbg:y": 394.3784484863281,
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
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "sbg:x": 647
        }
    ],
    "requirements": [],
    "label": "md5-validate",
    "description": "",
    "sbg:sbgMaintained": false,
    "sbg:modifiedBy": "duplexa",
    "sbg:modifiedOn": 1484924434,
    "sbg:canvas_y": 0,
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1484924251,
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1484924434,
            "sbg:revision": 1
        }
    ],
    "sbg:createdOn": 1484924251,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "hints": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:createdBy": "duplexa",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
            "label": "input_file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "sbg:y": 409.88194274902344,
            "sbg:x": 104
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#validatefiles_report",
            "source": [
                "#validatefiles.report"
            ],
            "label": "validate_report",
            "sbg:y": 355.8819580078125,
            "sbg:includeInPorts": true,
            "sbg:x": 1018
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#md5_report",
            "source": [
                "#md5.report"
            ],
            "label": "md5_report",
            "sbg:y": 107.88194274902344,
            "sbg:includeInPorts": true,
            "sbg:x": 1014
        }
    ],
    "sbg:validationErrors": [],
    "class": "Workflow",
    "sbg:projectName": "Dev",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/1.png",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/1/raw/",
    "sbg:canvas_x": 0,
    "sbg:project": "4dn-dcic/dev"
}