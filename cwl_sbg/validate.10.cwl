{
    "stdin": "",
    "sbg:project": "4dn-dcic/dev",
    "baseCommand": [
        "run.sh",
        ""
    ],
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "duplexa"
    ],
    "arguments": [],
    "sbg:revision": 10,
    "successCodes": [],
    "class": "CommandLineTool",
    "sbg:modifiedOn": 1480981592,
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
    "sbg:createdOn": 1476287593,
    "sbg:validationErrors": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "sbg:projectName": "Dev",
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
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
    "temporaryFailCodes": [],
    "sbg:modifiedBy": "duplexa",
    "stdout": "",
    "sbg:cmdPreview": "run.sh",
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
        },
        {
            "sbg:toolDefaultValue": "fastq",
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
            "type": [
                "null",
                {
                    "name": "type",
                    "type": "enum",
                    "symbols": [
                        "fastq",
                        "fasta",
                        "bam"
                    ]
                }
            ],
            "id": "#type"
        }
    ],
    "sbg:id": "4dn-dcic/dev/validate/10",
    "label": "validatefiles",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        },
        "inputs": {
            "type": "fastq",
            "input_file": {
                "class": "File",
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_file.ext"
            }
        }
    },
    "description": "",
    "sbg:latestRevision": 10,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:image_url": null,
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1476287593
        },
        {
            "sbg:revisionNotes": "first revision",
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1476287940
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479853127
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479853200
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479853246
        },
        {
            "sbg:revisionNotes": "added validate_on switch.",
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480958676
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 6,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480958776
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 7,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480958819
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 8,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480958939
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 9,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480981348
        },
        {
            "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
            "sbg:revision": 10,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480981592
        }
    ],
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "id": "#cwl-js-engine"
        }
    ],
    "sbg:createdBy": "duplexa"
}