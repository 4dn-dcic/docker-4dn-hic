{
    "sbg:cmdPreview": "run.sh",
    "sbg:sbgMaintained": false,
    "stdout": "",
    "successCodes": [],
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
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/validatefiles:v1"
        }
    ],
    "sbg:revision": 10,
    "sbg:project": "4dn-dcic/dev",
    "description": "",
    "baseCommand": [
        "run.sh",
        ""
    ],
    "sbg:modifiedOn": 1480981592,
    "sbg:job": {
        "inputs": {
            "input_file": {
                "path": "/path/to/input_file.ext",
                "size": 0,
                "secondaryFiles": [],
                "class": "File"
            },
            "type": "fastq"
        },
        "allocatedResources": {
            "mem": 500,
            "cpu": 1
        }
    },
    "label": "validatefiles",
    "arguments": [],
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "class": "ExpressionEngineRequirement"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "sbg:contributors": [
        "duplexa"
    ],
    "temporaryFailCodes": [],
    "sbg:id": "4dn-dcic/dev/validate/10",
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
        }
    ],
    "sbg:image_url": null,
    "sbg:createdOn": 1476287593,
    "stdin": "",
    "sbg:latestRevision": 10,
    "class": "CommandLineTool",
    "sbg:modifiedBy": "duplexa",
    "sbg:createdBy": "duplexa",
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
    "inputs": [
        {
            "id": "#input_file",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
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
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "valueFrom": {
                    "script": "\"fastq\"",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "separate": true
            }
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'"
}