{
    "sbg:createdBy": "duplexa",
    "baseCommand": [
        "run.sh",
        ""
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "successCodes": [],
    "sbg:modifiedBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            }
        },
        {
            "id": "#type",
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
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "\"fastq\""
                }
            }
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:job": {
        "inputs": {
            "input_file": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/input_file.ext"
            },
            "type": "fastq"
        },
        "allocatedResources": {
            "mem": 500,
            "cpu": 1
        }
    },
    "sbg:id": "4dn-dcic/dev/validate/10",
    "temporaryFailCodes": [],
    "sbg:createdOn": 1476287593,
    "stdout": "",
    "sbg:projectName": "Dev",
    "sbg:revision": 10,
    "sbg:modifiedOn": 1480981592,
    "sbg:validationErrors": [],
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
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
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
    "class": "CommandLineTool",
    "label": "validatefiles",
    "description": "",
    "sbg:image_url": null,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
    "stdin": "",
    "arguments": [],
    "sbg:cmdPreview": "run.sh",
    "outputs": [
        {
            "id": "#report",
            "outputBinding": {
                "glob": "\"report_validatefiles\""
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:latestRevision": 10,
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
    "sbg:project": "4dn-dcic/dev"
}