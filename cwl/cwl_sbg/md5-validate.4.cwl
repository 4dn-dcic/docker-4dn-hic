{
    "class": "Workflow",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/4/raw/",
    "label": "md5-validate",
    "sbg:id": "4dn-dcic/dev/md5-validate/4",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "steps": [
        {
            "sbg:x": 617,
            "id": "#md5",
            "inputs": [
                {
                    "id": "#md5.input_file",
                    "source": [
                        "#input_file"
                    ]
                }
            ],
            "run": {
                "class": "CommandLineTool",
                "id": "4dn-dcic/dev/md5/5",
                "successCodes": [],
                "label": "md5",
                "y": 117.48957824707031,
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:validationErrors": [],
                "description": "",
                "outputs": [
                    {
                        "id": "#report",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "report"
                        }
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:image_url": null,
                "sbg:projectName": "Dev",
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
                        "dockerPull": "duplexa/md5:v1",
                        "dockerImageId": ""
                    }
                ],
                "sbg:revisionNotes": "removed quotes in output glob",
                "requirements": [],
                "stdin": "",
                "cwlVersion": "sbg:draft-2",
                "sbg:revision": 5,
                "sbg:sbgMaintained": false,
                "sbg:createdOn": 1480978938,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1480978938,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480978992,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1494438192,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1494438281,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1494536730,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1503348580,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 5,
                        "sbg:revisionNotes": "removed quotes in output glob"
                    }
                ],
                "sbg:modifiedOn": 1503348580,
                "sbg:cmdPreview": "run.sh",
                "sbg:id": "4dn-dcic/dev/md5/5",
                "sbg:createdBy": "duplexa",
                "arguments": [],
                "x": 617,
                "temporaryFailCodes": [],
                "sbg:project": "4dn-dcic/dev",
                "baseCommand": [
                    "run.sh"
                ],
                "inputs": [
                    {
                        "required": false,
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_file"
                    }
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 500,
                        "cpu": 1
                    },
                    "inputs": {
                        "input_file": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/input_file.ext"
                        }
                    }
                },
                "stdout": "",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:latestRevision": 5
            },
            "sbg:y": 117.48957824707031,
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ]
        },
        {
            "sbg:x": 647,
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
            "run": {
                "class": "CommandLineTool",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/12/raw/",
                "successCodes": [],
                "label": "validatefiles",
                "sbg:id": "4dn-dcic/dev/validate/12",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:validationErrors": [],
                "description": "",
                "outputs": [
                    {
                        "id": "#report",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "report_validatefiles"
                        }
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:image_url": null,
                "sbg:projectName": "Dev",
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
                "sbg:revisionNotes": "removed 'value' from input 'type'",
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
                "stdin": "",
                "cwlVersion": "sbg:draft-2",
                "sbg:revision": 12,
                "sbg:sbgMaintained": false,
                "sbg:createdOn": 1476287593,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1476287593,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1476287940,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": "first revision"
                    },
                    {
                        "sbg:modifiedOn": 1479853127,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479853200,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1479853246,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480958676,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 5,
                        "sbg:revisionNotes": "added validate_on switch."
                    },
                    {
                        "sbg:modifiedOn": 1480958776,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480958819,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480958939,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 8,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480981348,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 9,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1480981592,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 10,
                        "sbg:revisionNotes": "changed report name to 'report_validatefiles'"
                    },
                    {
                        "sbg:modifiedOn": 1503348708,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 11,
                        "sbg:revisionNotes": "removed quote from output glob"
                    },
                    {
                        "sbg:modifiedOn": 1503414051,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 12,
                        "sbg:revisionNotes": "removed 'value' from input 'type'"
                    }
                ],
                "sbg:modifiedOn": 1503414051,
                "sbg:cmdPreview": "run.sh",
                "sbg:createdBy": "duplexa",
                "arguments": [],
                "temporaryFailCodes": [],
                "sbg:project": "4dn-dcic/dev",
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "inputs": [
                    {
                        "id": "#input_file",
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
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
                            "separate": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "type",
                                "symbols": [
                                    "fastq",
                                    "fasta",
                                    "bam"
                                ],
                                "type": "enum"
                            }
                        ],
                        "sbg:toolDefaultValue": "fastq"
                    }
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 500,
                        "cpu": 1
                    },
                    "inputs": {
                        "input_file": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/input_file.ext"
                        },
                        "type": "fastq"
                    }
                },
                "stdout": "",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:latestRevision": 12
            },
            "sbg:y": 394.3784484863281,
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ]
        }
    ],
    "description": "",
    "outputs": [
        {
            "sbg:x": 1018,
            "id": "#validatefiles_report",
            "label": "validate_report",
            "source": [
                "#validatefiles.report"
            ],
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:y": 355.8819580078125,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:x": 1014,
            "id": "#md5_report",
            "label": "md5_report",
            "source": [
                "#md5.report"
            ],
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:y": 107.88194274902344,
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:canvas_y": 0,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/4.png",
    "sbg:projectName": "Dev",
    "hints": [],
    "sbg:revisionNotes": "validatefiles with 'valuefrom' removed from inputbinding for input 'type'.",
    "requirements": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:revision": 4,
    "sbg:sbgMaintained": false,
    "sbg:createdOn": 1484924251,
    "sbg:latestRevision": 4,
    "sbg:modifiedOn": 1503414093,
    "sbg:canvas_x": 0,
    "sbg:createdBy": "duplexa",
    "sbg:validationErrors": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:project": "4dn-dcic/dev",
    "inputs": [
        {
            "sbg:x": 104,
            "id": "#input_file",
            "label": "input_file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "sbg:y": 409.88194274902344,
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1484924251,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1484924434,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1503348669,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1503348727,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1503414093,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4,
            "sbg:revisionNotes": "validatefiles with 'valuefrom' removed from inputbinding for input 'type'."
        }
    ],
    "sbg:canvas_zoom": 1
}