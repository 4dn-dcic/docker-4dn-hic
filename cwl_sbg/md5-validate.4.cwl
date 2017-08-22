{
    "hints": [],
    "sbg:modifiedOn": 1503414093,
    "sbg:canvas_y": 0,
    "sbg:createdBy": "duplexa",
    "requirements": [],
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:validationErrors": [],
    "sbg:id": "4dn-dcic/dev/md5-validate/4",
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_x": 0,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5-validate/4/raw/",
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
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1503348669,
            "sbg:revision": 2
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1503348727,
            "sbg:revision": 3
        },
        {
            "sbg:revisionNotes": "validatefiles with 'valuefrom' removed from inputbinding for input 'type'.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1503414093,
            "sbg:revision": 4
        }
    ],
    "sbg:revisionNotes": "validatefiles with 'valuefrom' removed from inputbinding for input 'type'.",
    "sbg:latestRevision": 4,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "steps": [
        {
            "inputs": [
                {
                    "source": [
                        "#input_file"
                    ],
                    "id": "#md5.input_file"
                }
            ],
            "id": "#md5",
            "run": {
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
                        "dockerPull": "duplexa/md5:v1",
                        "class": "DockerRequirement",
                        "dockerImageId": ""
                    }
                ],
                "sbg:modifiedOn": 1503348580,
                "requirements": [],
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "stdout": "",
                "sbg:validationErrors": [],
                "sbg:id": "4dn-dcic/dev/md5/5",
                "cwlVersion": "sbg:draft-2",
                "sbg:createdBy": "duplexa",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1480978938,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1480978992,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1494438192,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1494438281,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1494536730,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:revisionNotes": "removed quotes in output glob",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1503348580,
                        "sbg:revision": 5
                    }
                ],
                "sbg:image_url": null,
                "sbg:revisionNotes": "removed quotes in output glob",
                "sbg:sbgMaintained": false,
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "temporaryFailCodes": [],
                "description": "",
                "baseCommand": [
                    "run.sh"
                ],
                "stdin": "",
                "id": "4dn-dcic/dev/md5/5",
                "sbg:latestRevision": 5,
                "sbg:revision": 5,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "report"
                        },
                        "id": "#report",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "y": 117.48957824707031,
                "sbg:project": "4dn-dcic/dev",
                "arguments": [],
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "required": false,
                        "id": "#input_file",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:projectName": "Dev",
                "class": "CommandLineTool",
                "successCodes": [],
                "label": "md5",
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "path": "/path/to/input_file.ext",
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 500
                    }
                },
                "sbg:cmdPreview": "run.sh",
                "x": 617,
                "sbg:createdOn": 1480978938
            },
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "sbg:x": 617,
            "sbg:y": 117.48957824707031
        },
        {
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
            "id": "#validatefiles",
            "run": {
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
                "sbg:modifiedOn": 1503414051,
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
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "stdout": "",
                "sbg:validationErrors": [],
                "sbg:id": "4dn-dcic/dev/validate/12",
                "cwlVersion": "sbg:draft-2",
                "sbg:createdBy": "duplexa",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1476287593,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": "first revision",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1476287940,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479853127,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479853200,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479853246,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:revisionNotes": "added validate_on switch.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1480958676,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1480958776,
                        "sbg:revision": 6
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1480958819,
                        "sbg:revision": 7
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1480958939,
                        "sbg:revision": 8
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1480981348,
                        "sbg:revision": 9
                    },
                    {
                        "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1480981592,
                        "sbg:revision": 10
                    },
                    {
                        "sbg:revisionNotes": "removed quote from output glob",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1503348708,
                        "sbg:revision": 11
                    },
                    {
                        "sbg:revisionNotes": "removed 'value' from input 'type'",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1503414051,
                        "sbg:revision": 12
                    }
                ],
                "sbg:revisionNotes": "removed 'value' from input 'type'",
                "stdin": "",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "temporaryFailCodes": [],
                "sbg:cmdPreview": "run.sh",
                "baseCommand": [
                    "run.sh",
                    ""
                ],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/12/raw/",
                "sbg:latestRevision": 12,
                "sbg:revision": 12,
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "id": "#input_file",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "fastq",
                                    "fasta",
                                    "bam"
                                ],
                                "type": "enum",
                                "name": "type"
                            }
                        ],
                        "id": "#type",
                        "sbg:toolDefaultValue": "fastq"
                    }
                ],
                "description": "",
                "sbg:project": "4dn-dcic/dev",
                "arguments": [],
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "report_validatefiles"
                        },
                        "id": "#report",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:projectName": "Dev",
                "class": "CommandLineTool",
                "successCodes": [],
                "label": "validatefiles",
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "path": "/path/to/input_file.ext",
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0
                        },
                        "type": "fastq"
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 500
                    }
                },
                "sbg:image_url": null,
                "sbg:sbgMaintained": false,
                "sbg:createdOn": 1476287593
            },
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "sbg:x": 647,
            "sbg:y": 394.3784484863281
        }
    ],
    "sbg:revision": 4,
    "inputs": [
        {
            "id": "#input_file",
            "sbg:x": 104,
            "type": [
                "null",
                "File"
            ],
            "label": "input_file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "sbg:y": 409.88194274902344
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:project": "4dn-dcic/dev",
    "outputs": [
        {
            "required": false,
            "sbg:includeInPorts": true,
            "id": "#validatefiles_report",
            "sbg:x": 1018,
            "type": [
                "null",
                "File"
            ],
            "label": "validate_report",
            "source": [
                "#validatefiles.report"
            ],
            "sbg:y": 355.8819580078125
        },
        {
            "required": false,
            "sbg:includeInPorts": true,
            "id": "#md5_report",
            "sbg:x": 1014,
            "type": [
                "null",
                "File"
            ],
            "label": "md5_report",
            "source": [
                "#md5.report"
            ],
            "sbg:y": 107.88194274902344
        }
    ],
    "sbg:canvas_zoom": 1,
    "sbg:projectName": "Dev",
    "class": "Workflow",
    "label": "md5-validate",
    "sbg:createdOn": 1484924251,
    "description": "",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/md5-validate/4.png"
}