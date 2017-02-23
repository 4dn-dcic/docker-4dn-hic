{
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
    ],
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
    "description": "",
    "sbg:modifiedOn": 1480981592,
    "label": "validatefiles",
    "sbg:modifiedBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "sbg:createdOn": 1476287593,
    "stdin": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "arguments": [],
    "sbg:revision": 10,
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1476287593
        },
        {
            "sbg:revision": 1,
            "sbg:revisionNotes": "first revision",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1476287940
        },
        {
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479853127
        },
        {
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479853200
        },
        {
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479853246
        },
        {
            "sbg:revision": 5,
            "sbg:revisionNotes": "added validate_on switch.",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480958676
        },
        {
            "sbg:revision": 6,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480958776
        },
        {
            "sbg:revision": 7,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480958819
        },
        {
            "sbg:revision": 8,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480958939
        },
        {
            "sbg:revision": 9,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480981348
        },
        {
            "sbg:revision": 10,
            "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480981592
        }
    ],
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
    "sbg:createdBy": "duplexa",
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        },
        {
            "inputBinding": {
                "valueFrom": {
                    "class": "Expression",
                    "script": "\"fastq\"",
                    "engine": "#cwl-js-engine"
                },
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true
            },
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
            "sbg:toolDefaultValue": "fastq",
            "id": "#type"
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:cmdPreview": "run.sh",
    "class": "CommandLineTool",
    "sbg:id": "4dn-dcic/dev/validate/10",
    "cwlVersion": "sbg:draft-2",
    "successCodes": [],
    "stdout": "",
    "sbg:job": {
        "inputs": {
            "type": "fastq",
            "input_file": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_file.ext",
                "size": 0
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        }
    },
    "sbg:latestRevision": 10,
    "sbg:validationErrors": [],
    "sbg:image_url": null,
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
    "baseCommand": [
        "run.sh",
        ""
    ],
    "sbg:project": "4dn-dcic/dev"
}