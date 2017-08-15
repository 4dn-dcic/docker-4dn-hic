{
    "sbg:job": {
        "inputs": {
            "type": "fastq",
            "input_file": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_file.ext",
                "size": 0
            }
        },
        "allocatedResources": {
            "mem": 500,
            "cpu": 1
        }
    },
    "sbg:project": "4dn-dcic/dev",
    "sbg:projectName": "Dev",
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
    "successCodes": [],
    "class": "CommandLineTool",
    "sbg:image_url": null,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1476287593,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1476287940,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "first revision"
        },
        {
            "sbg:modifiedOn": 1479853127,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479853200,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1479853246,
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1480958676,
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "added validate_on switch."
        },
        {
            "sbg:modifiedOn": 1480958776,
            "sbg:revision": 6,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1480958819,
            "sbg:revision": 7,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1480958939,
            "sbg:revision": 8,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1480981348,
            "sbg:revision": 9,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1480981592,
            "sbg:revision": 10,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "changed report name to 'report_validatefiles'"
        }
    ],
    "arguments": [],
    "sbg:modifiedBy": "duplexa",
    "description": "",
    "outputs": [
        {
            "id": "#report",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "\"report_validatefiles\""
            }
        }
    ],
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
            "dockerPull": "duplexa/validatefiles:v1",
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revision": 10,
    "label": "validatefiles",
    "sbg:cmdPreview": "run.sh",
    "baseCommand": [
        "run.sh",
        ""
    ],
    "temporaryFailCodes": [],
    "sbg:modifiedOn": 1480981592,
    "sbg:validationErrors": [],
    "sbg:createdOn": 1476287593,
    "inputs": [
        {
            "id": "#input_file",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
        },
        {
            "id": "#type",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "valueFrom": {
                    "script": "\"fastq\"",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "position": 2
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
    "stdout": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:sbgMaintained": false,
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
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "sbg:latestRevision": 10,
    "sbg:id": "4dn-dcic/dev/validate/10",
    "cwlVersion": "sbg:draft-2",
    "sbg:createdBy": "duplexa",
    "stdin": ""
}