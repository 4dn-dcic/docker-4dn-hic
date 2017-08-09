{
    "stdout": "",
    "sbg:modifiedBy": "duplexa",
    "label": "validatefiles",
    "arguments": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "temporaryFailCodes": [],
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
    "sbg:image_url": null,
    "sbg:validationErrors": [],
    "stdin": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "sbg:sbgMaintained": false,
    "sbg:createdOn": 1476287593,
    "sbg:cmdPreview": "run.sh",
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
    "sbg:projectName": "Dev",
    "baseCommand": [
        "run.sh",
        ""
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:project": "4dn-dcic/dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "description": "",
    "successCodes": [],
    "sbg:id": "4dn-dcic/dev/validate/10",
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
    "sbg:modifiedOn": 1480981592,
    "sbg:job": {
        "allocatedResources": {
            "mem": 500,
            "cpu": 1
        },
        "inputs": {
            "input_file": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_file.ext",
                "size": 0
            },
            "type": "fastq"
        }
    },
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "id": "#input_file",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
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
                "position": 2,
                "separate": true,
                "valueFrom": {
                    "class": "Expression",
                    "script": "\"fastq\"",
                    "engine": "#cwl-js-engine"
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
    "class": "CommandLineTool",
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
    "sbg:revision": 10,
    "sbg:createdBy": "duplexa"
}