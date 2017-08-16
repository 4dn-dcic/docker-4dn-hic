{
    "class": "CommandLineTool",
    "sbg:createdBy": "duplexa",
    "successCodes": [],
    "stdout": "",
    "label": "validatefiles",
    "sbg:validationErrors": [],
    "sbg:modifiedOn": 1480981592,
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ]
        }
    ],
    "sbg:revision": 10,
    "sbg:projectName": "Dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "sbg:latestRevision": 10,
    "sbg:createdOn": 1476287593,
    "arguments": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        },
        "inputs": {
            "input_file": {
                "class": "File",
                "path": "/path/to/input_file.ext",
                "size": 0,
                "secondaryFiles": []
            },
            "type": "fastq"
        }
    },
    "sbg:id": "4dn-dcic/dev/validate/10",
    "stdin": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "baseCommand": [
        "run.sh",
        ""
    ],
    "temporaryFailCodes": [],
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
            "dockerPull": "duplexa/validatefiles:v1",
            "dockerImageId": ""
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "description": "",
    "sbg:modifiedBy": "duplexa",
    "sbg:cmdPreview": "run.sh",
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
    "inputs": [
        {
            "id": "#input_file",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
        },
        {
            "id": "#type",
            "sbg:toolDefaultValue": "fastq",
            "type": [
                "null",
                {
                    "type": "enum",
                    "symbols": [
                        "fastq",
                        "fasta",
                        "bam"
                    ],
                    "name": "type"
                }
            ],
            "inputBinding": {
                "separate": true,
                "valueFrom": {
                    "class": "Expression",
                    "script": "\"fastq\"",
                    "engine": "#cwl-js-engine"
                },
                "position": 2,
                "sbg:cmdInclude": true
            }
        }
    ],
    "cwlVersion": "sbg:draft-2",
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
    "sbg:image_url": null,
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
    "sbg:sbgMaintained": false
}