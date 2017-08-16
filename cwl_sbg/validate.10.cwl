{
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "sbg:modifiedBy": "duplexa",
    "stdin": "",
    "sbg:image_url": null,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:id": "4dn-dcic/dev/validate/10",
    "sbg:revision": 10,
    "stdout": "",
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
        }
    ],
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
    "sbg:createdOn": 1476287593,
    "inputs": [
        {
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
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
            "sbg:toolDefaultValue": "fastq",
            "inputBinding": {
                "valueFrom": {
                    "script": "\"fastq\"",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                },
                "position": 2,
                "separate": true,
                "sbg:cmdInclude": true
            }
        }
    ],
    "successCodes": [],
    "sbg:projectName": "Dev",
    "description": "",
    "sbg:validationErrors": [],
    "sbg:latestRevision": 10,
    "label": "validatefiles",
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
    "sbg:sbgMaintained": false,
    "sbg:project": "4dn-dcic/dev",
    "class": "CommandLineTool",
    "sbg:createdBy": "duplexa",
    "sbg:modifiedOn": 1480981592,
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
            "cpu": 1,
            "mem": 500
        }
    },
    "baseCommand": [
        "run.sh",
        ""
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:cmdPreview": "run.sh",
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
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "arguments": [],
    "temporaryFailCodes": []
}