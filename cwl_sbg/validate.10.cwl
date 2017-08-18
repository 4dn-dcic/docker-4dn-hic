{
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1476287593,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1476287940,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "first revision"
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1479853127,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1479853200,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1479853246,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1480958676,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "added validate_on switch."
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedOn": 1480958776,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedOn": 1480958819,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedOn": 1480958939,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedOn": 1480981348,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedOn": 1480981592,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "changed report name to 'report_validatefiles'"
        }
    ],
    "sbg:revision": 10,
    "sbg:cmdPreview": "run.sh",
    "sbg:image_url": null,
    "sbg:latestRevision": 10,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "arguments": [],
    "sbg:createdOn": 1476287593,
    "label": "validatefiles",
    "temporaryFailCodes": [],
    "successCodes": [],
    "sbg:modifiedBy": "duplexa",
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
    "sbg:validationErrors": [],
    "sbg:job": {
        "allocatedResources": {
            "mem": 500,
            "cpu": 1
        },
        "inputs": {
            "input_file": {
                "path": "/path/to/input_file.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            },
            "type": "fastq"
        }
    },
    "sbg:createdBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedOn": 1480981592,
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
    "baseCommand": [
        "run.sh",
        ""
    ],
    "class": "CommandLineTool",
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "\"fastq\"",
                    "class": "Expression"
                },
                "position": 2,
                "separate": true
            },
            "id": "#type",
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
    "sbg:project": "4dn-dcic/dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:id": "4dn-dcic/dev/validate/10",
    "sbg:projectName": "Dev",
    "stdin": "",
    "description": "",
    "sbg:sbgMaintained": false,
    "stdout": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'"
}