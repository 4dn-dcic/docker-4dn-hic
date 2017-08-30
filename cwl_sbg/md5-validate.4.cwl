{
    "requirements": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/4/raw/",
    "sbg:id": "4dn-dcic/dev/md5-validate/4",
    "outputs": [
        {
            "id": "#validatefiles_report",
            "sbg:x": 1018,
            "label": "validate_report",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#validatefiles.report"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 355.8819580078125,
            "required": false
        },
        {
            "id": "#md5_report",
            "sbg:x": 1014,
            "label": "md5_report",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#md5.report"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 107.88194274902344,
            "required": false
        }
    ],
    "class": "Workflow",
    "inputs": [
        {
            "id": "#input_file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "label": "input_file",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 104,
            "sbg:y": 409.88194274902344
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:revision": 4,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:revisionNotes": "validatefiles with 'valuefrom' removed from inputbinding for input 'type'.",
    "sbg:createdBy": "duplexa",
    "description": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1484924251,
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_y": 0,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/4.png",
    "sbg:validationErrors": [],
    "sbg:modifiedOn": 1503414093,
    "sbg:canvas_x": 0,
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:latestRevision": 4,
    "hints": [],
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
        },
        {
            "sbg:modifiedOn": 1503348669,
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1503348727,
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1503414093,
            "sbg:revision": 4,
            "sbg:revisionNotes": "validatefiles with 'valuefrom' removed from inputbinding for input 'type'.",
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "label": "md5-validate",
    "sbg:canvas_zoom": 1,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "steps": [
        {
            "run": {
                "requirements": [],
                "id": "4dn-dcic/dev/md5/5",
                "y": 117.48957824707031,
                "outputs": [
                    {
                        "id": "#report",
                        "outputBinding": {
                            "glob": "report"
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "stdout": "",
                "class": "CommandLineTool",
                "temporaryFailCodes": [],
                "successCodes": [],
                "x": 617,
                "sbg:projectName": "Dev",
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:revisionNotes": "removed quotes in output glob",
                "inputs": [
                    {
                        "id": "#input_file",
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:createdOn": 1480978938,
                "description": "",
                "stdin": "",
                "sbg:cmdPreview": "run.sh",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:project": "4dn-dcic/dev",
                "sbg:image_url": null,
                "sbg:validationErrors": [],
                "sbg:modifiedOn": 1503348580,
                "sbg:revision": 5,
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:latestRevision": 5,
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
                        "dockerPull": "duplexa/md5:v1",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:sbgMaintained": false,
                "label": "md5",
                "sbg:createdBy": "duplexa",
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
                    },
                    {
                        "sbg:modifiedOn": 1494438192,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1494438281,
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1494536730,
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1503348580,
                        "sbg:revision": 5,
                        "sbg:revisionNotes": "removed quotes in output glob",
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "arguments": [],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 500
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
                "sbg:id": "4dn-dcic/dev/md5/5"
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
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "sbg:x": 617,
            "sbg:y": 117.48957824707031
        },
        {
            "run": {
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
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/12/raw/",
                "sbg:id": "4dn-dcic/dev/validate/12",
                "outputs": [
                    {
                        "id": "#report",
                        "outputBinding": {
                            "glob": "report_validatefiles"
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "stdout": "",
                "class": "CommandLineTool",
                "temporaryFailCodes": [],
                "successCodes": [],
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
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "fastq",
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
                        ]
                    }
                ],
                "sbg:projectName": "Dev",
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:revisionNotes": "removed 'value' from input 'type'",
                "sbg:createdOn": 1476287593,
                "description": "",
                "stdin": "",
                "sbg:cmdPreview": "run.sh",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:project": "4dn-dcic/dev",
                "sbg:image_url": null,
                "sbg:validationErrors": [],
                "sbg:modifiedOn": 1503414051,
                "sbg:revision": 12,
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:latestRevision": 12,
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
                "sbg:sbgMaintained": false,
                "label": "validatefiles",
                "sbg:createdBy": "duplexa",
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
                    },
                    {
                        "sbg:modifiedOn": 1503348708,
                        "sbg:revision": 11,
                        "sbg:revisionNotes": "removed quote from output glob",
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:modifiedOn": 1503414051,
                        "sbg:revision": 12,
                        "sbg:revisionNotes": "removed 'value' from input 'type'",
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "arguments": [],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 500
                    },
                    "inputs": {
                        "input_file": {
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_file.ext",
                            "size": 0
                        },
                        "type": "fastq"
                    }
                }
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
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "sbg:x": 647,
            "sbg:y": 394.3784484863281
        }
    ],
    "sbg:sbgMaintained": false
}