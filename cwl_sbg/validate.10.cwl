{
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
    "sbg:image_url": null,
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
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
            "sbg:toolDefaultValue": "fastq",
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
    "sbg:revision": 10,
    "sbg:createdBy": "duplexa",
    "sbg:createdOn": 1476287593,
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
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1476287593,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "first revision",
            "sbg:modifiedOn": 1476287940,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479853127,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479853200,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479853246,
            "sbg:revision": 4
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "added validate_on switch.",
            "sbg:modifiedOn": 1480958676,
            "sbg:revision": 5
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480958776,
            "sbg:revision": 6
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480958819,
            "sbg:revision": 7
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480958939,
            "sbg:revision": 8
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480981348,
            "sbg:revision": 9
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
            "sbg:modifiedOn": 1480981592,
            "sbg:revision": 10
        }
    ],
    "sbg:modifiedOn": 1480981592,
    "cwlVersion": "sbg:draft-2",
    "sbg:cmdPreview": "run.sh",
    "class": "CommandLineTool",
    "sbg:latestRevision": 10,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "successCodes": [],
    "sbg:projectName": "Dev",
    "sbg:sbgMaintained": false,
    "stdout": "",
    "temporaryFailCodes": [],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        },
        "inputs": {
            "type": "fastq",
            "input_file": {
                "path": "/path/to/input_file.ext",
                "secondaryFiles": [],
                "class": "File",
                "size": 0
            }
        }
    },
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:id": "4dn-dcic/dev/validate/10",
    "sbg:project": "4dn-dcic/dev",
    "arguments": [],
    "sbg:modifiedBy": "duplexa",
    "description": "",
    "label": "validatefiles",
    "sbg:validationErrors": [],
    "baseCommand": [
        "run.sh",
        ""
    ],
    "stdin": ""
}