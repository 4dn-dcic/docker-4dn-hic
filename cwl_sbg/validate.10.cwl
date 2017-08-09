{
    "sbg:createdOn": 1476287593,
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
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
    "stdin": "",
    "successCodes": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "sbg:sbgMaintained": false,
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
    "sbg:project": "4dn-dcic/dev",
    "cwlVersion": "sbg:draft-2",
    "sbg:image_url": null,
    "sbg:latestRevision": 10,
    "arguments": [],
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
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
    "class": "CommandLineTool",
    "sbg:projectName": "Dev",
    "sbg:validationErrors": [],
    "label": "validatefiles",
    "sbg:modifiedOn": 1480981592,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:revision": 10,
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        },
        {
            "sbg:toolDefaultValue": "fastq",
            "inputBinding": {
                "position": 2,
                "separate": true,
                "sbg:cmdInclude": true,
                "valueFrom": {
                    "script": "\"fastq\"",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
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
                    "type": "enum",
                    "name": "type"
                }
            ],
            "id": "#type"
        }
    ],
    "sbg:cmdPreview": "run.sh",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        },
        "inputs": {
            "input_file": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/input_file.ext"
            },
            "type": "fastq"
        }
    },
    "description": "",
    "temporaryFailCodes": [],
    "baseCommand": [
        "run.sh",
        ""
    ],
    "stdout": "",
    "sbg:id": "4dn-dcic/dev/validate/10",
    "sbg:createdBy": "duplexa"
}