{
    "sbg:id": "4dn-dcic/dev/validate/10",
    "cwlVersion": "sbg:draft-2",
    "successCodes": [],
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            }
        },
        {
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
            "id": "#type",
            "sbg:toolDefaultValue": "fastq",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "\"fastq\"",
                    "class": "Expression"
                },
                "separate": true
            }
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1476287593,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1476287940,
            "sbg:revisionNotes": "first revision"
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1479853127,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1479853200,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1479853246,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1480958676,
            "sbg:revisionNotes": "added validate_on switch."
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1480958776,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1480958819,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1480958939,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 9,
            "sbg:modifiedOn": 1480981348,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 10,
            "sbg:modifiedOn": 1480981592,
            "sbg:revisionNotes": "changed report name to 'report_validatefiles'"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "sbg:validationErrors": [],
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
    ],
    "sbg:project": "4dn-dcic/dev",
    "baseCommand": [
        "run.sh",
        ""
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:latestRevision": 10,
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        },
        "inputs": {
            "type": "fastq",
            "input_file": {
                "path": "/path/to/input_file.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            }
        }
    },
    "class": "CommandLineTool",
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
            "dockerPull": "duplexa/validatefiles:v1",
            "class": "DockerRequirement"
        }
    ],
    "stdout": "",
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
    "sbg:createdOn": 1476287593,
    "temporaryFailCodes": [],
    "sbg:projectName": "Dev",
    "sbg:revision": 10,
    "sbg:cmdPreview": "run.sh",
    "stdin": "",
    "sbg:createdBy": "duplexa",
    "sbg:image_url": null,
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
    "arguments": [],
    "description": "",
    "sbg:sbgMaintained": false,
    "sbg:modifiedBy": "duplexa",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:modifiedOn": 1480981592,
    "label": "validatefiles"
}