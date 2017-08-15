{
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1476287593,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1476287940,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "first revision",
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1479853127,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedOn": 1479853200,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1479853246,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 4
        },
        {
            "sbg:modifiedOn": 1480958676,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "added validate_on switch.",
            "sbg:revision": 5
        },
        {
            "sbg:modifiedOn": 1480958776,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 6
        },
        {
            "sbg:modifiedOn": 1480958819,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 7
        },
        {
            "sbg:modifiedOn": 1480958939,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 8
        },
        {
            "sbg:modifiedOn": 1480981348,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 9
        },
        {
            "sbg:modifiedOn": 1480981592,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
            "sbg:revision": 10
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "stdout": "",
    "sbg:validationErrors": [],
    "sbg:job": {
        "inputs": {
            "type": "fastq",
            "input_file": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_file.ext",
                "class": "File"
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        }
    },
    "sbg:projectName": "Dev",
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/validatefiles:v1",
            "dockerImageId": ""
        }
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "id": "#input_file",
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
            "inputBinding": {
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "\"fastq\"",
                    "class": "Expression"
                },
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            },
            "id": "#type",
            "sbg:toolDefaultValue": "fastq"
        }
    ],
    "sbg:modifiedOn": 1480981592,
    "sbg:createdOn": 1476287593,
    "sbg:project": "4dn-dcic/dev",
    "cwlVersion": "sbg:draft-2",
    "sbg:revision": 10,
    "sbg:id": "4dn-dcic/dev/validate/10",
    "sbg:latestRevision": 10,
    "sbg:createdBy": "duplexa",
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
    "outputs": [
        {
            "outputBinding": {
                "glob": "\"report_validatefiles\""
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#report"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "temporaryFailCodes": [],
    "label": "validatefiles",
    "sbg:cmdPreview": "run.sh",
    "sbg:image_url": null,
    "successCodes": [],
    "baseCommand": [
        "run.sh",
        ""
    ],
    "arguments": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdin": "",
    "sbg:sbgMaintained": false,
    "class": "CommandLineTool",
    "sbg:modifiedBy": "duplexa",
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
    "description": ""
}