{
    "sbg:id": "4dn-dcic/dev/validate/10",
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
    "sbg:image_url": null,
    "arguments": [],
    "stdin": "",
    "sbg:revision": 10,
    "sbg:modifiedBy": "duplexa",
    "sbg:job": {
        "inputs": {
            "input_file": {
                "path": "/path/to/input_file.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "type": "fastq"
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        }
    },
    "stdout": "",
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:modifiedOn": 1480981592,
    "baseCommand": [
        "run.sh",
        ""
    ],
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
    "temporaryFailCodes": [],
    "sbg:validationErrors": [],
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
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "inputs": [
        {
            "id": "#input_file",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
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
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "\"fastq\"",
                    "class": "Expression"
                }
            },
            "type": [
                "null",
                {
                    "symbols": [
                        "fastq",
                        "fasta",
                        "bam"
                    ],
                    "name": "type",
                    "type": "enum"
                }
            ],
            "sbg:toolDefaultValue": "fastq"
        }
    ],
    "class": "CommandLineTool",
    "sbg:createdBy": "duplexa",
    "sbg:sbgMaintained": false,
    "sbg:cmdPreview": "run.sh",
    "sbg:createdOn": 1476287593,
    "successCodes": [],
    "sbg:latestRevision": 10,
    "cwlVersion": "sbg:draft-2",
    "sbg:project": "4dn-dcic/dev",
    "label": "validatefiles",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "sbg:projectName": "Dev",
    "description": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ]
}