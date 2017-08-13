{
    "sbg:modifiedOn": 1480981592,
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        },
        "inputs": {
            "input_file": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_file.ext"
            },
            "type": "fastq"
        }
    },
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ]
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
    "successCodes": [],
    "class": "CommandLineTool",
    "sbg:modifiedBy": "duplexa",
    "sbg:latestRevision": 10,
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
    "sbg:createdBy": "duplexa",
    "sbg:projectName": "Dev",
    "sbg:revision": 10,
    "sbg:id": "4dn-dcic/dev/validate/10",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1476287593,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1476287940,
            "sbg:revisionNotes": "first revision"
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479853127,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479853200,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479853246,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480958676,
            "sbg:revisionNotes": "added validate_on switch."
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480958776,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480958819,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480958939,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480981348,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480981592,
            "sbg:revisionNotes": "changed report name to 'report_validatefiles'"
        }
    ],
    "arguments": [],
    "temporaryFailCodes": [],
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
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:toolDefaultValue": "fastq",
            "id": "#type",
            "inputBinding": {
                "separate": true,
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "\"fastq\""
                },
                "position": 2,
                "sbg:cmdInclude": true
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
            ]
        }
    ],
    "sbg:createdOn": 1476287593,
    "stdout": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "baseCommand": [
        "run.sh",
        ""
    ],
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
    "label": "validatefiles",
    "stdin": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "description": "",
    "sbg:cmdPreview": "run.sh",
    "sbg:image_url": null
}