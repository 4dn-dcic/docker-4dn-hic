{
    "label": "validatefiles",
    "requirements": [
        {
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:job": {
        "inputs": {
            "input_file": {
                "secondaryFiles": [],
                "path": "/path/to/input_file.ext",
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
    "sbg:id": "4dn-dcic/dev/validate/10",
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
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/validatefiles:v1"
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:modifiedBy": "duplexa",
    "sbg:image_url": null,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1480981592,
    "sbg:validationErrors": [],
    "class": "CommandLineTool",
    "description": "",
    "stdout": "",
    "arguments": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "sbg:sbgMaintained": false,
    "sbg:latestRevision": 10,
    "cwlVersion": "sbg:draft-2",
    "sbg:revision": 10,
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
    "stdin": "",
    "baseCommand": [
        "run.sh",
        ""
    ],
    "sbg:createdBy": "duplexa",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1476287593,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": "first revision",
            "sbg:modifiedOn": 1476287940,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479853127,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479853200,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479853246,
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": "added validate_on switch.",
            "sbg:modifiedOn": 1480958676,
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480958776,
            "sbg:revision": 6,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480958819,
            "sbg:revision": 7,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480958939,
            "sbg:revision": 8,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480981348,
            "sbg:revision": 9,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
            "sbg:modifiedOn": 1480981592,
            "sbg:revision": 10,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "inputs": [
        {
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1,
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
                    "symbols": [
                        "fastq",
                        "fasta",
                        "bam"
                    ],
                    "type": "enum"
                }
            ],
            "inputBinding": {
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "class": "Expression",
                    "script": "\"fastq\""
                },
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true
            },
            "sbg:toolDefaultValue": "fastq"
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:createdOn": 1476287593,
    "successCodes": [],
    "sbg:cmdPreview": "run.sh",
    "temporaryFailCodes": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#report",
            "outputBinding": {
                "glob": "\"report_validatefiles\""
            }
        }
    ]
}