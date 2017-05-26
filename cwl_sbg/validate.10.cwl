{
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
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            }
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
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "\"fastq\""
                },
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#type",
            "sbg:toolDefaultValue": "fastq"
        }
    ],
    "sbg:cmdPreview": "run.sh",
    "stdout": "",
    "stdin": "",
    "label": "validatefiles",
    "sbg:sbgMaintained": false,
    "arguments": [],
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
    "sbg:project": "4dn-dcic/dev",
    "sbg:validationErrors": [],
    "sbg:modifiedOn": 1480981592,
    "sbg:latestRevision": 10,
    "sbg:createdOn": 1476287593,
    "sbg:id": "4dn-dcic/dev/validate/10",
    "description": "",
    "sbg:projectName": "Dev",
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
    "successCodes": [],
    "class": "CommandLineTool",
    "sbg:revision": 10,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
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
    "temporaryFailCodes": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1476287593
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "first revision",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1476287940
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedOn": 1479853127
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedOn": 1479853200
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedOn": 1479853246
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "added validate_on switch.",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1480958676
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 6,
            "sbg:modifiedOn": 1480958776
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 7,
            "sbg:modifiedOn": 1480958819
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 8,
            "sbg:modifiedOn": 1480958939
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 9,
            "sbg:modifiedOn": 1480981348
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
            "sbg:revision": 10,
            "sbg:modifiedOn": 1480981592
        }
    ],
    "sbg:createdBy": "duplexa",
    "baseCommand": [
        "run.sh",
        ""
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/"
}