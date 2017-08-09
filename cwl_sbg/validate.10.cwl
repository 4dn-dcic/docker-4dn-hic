{
    "sbg:modifiedBy": "duplexa",
    "stdout": "",
    "sbg:createdOn": 1476287593,
    "temporaryFailCodes": [],
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
    "sbg:validationErrors": [],
    "sbg:projectName": "Dev",
    "sbg:revision": 10,
    "description": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
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
    "sbg:modifiedOn": 1480981592,
    "inputs": [
        {
            "id": "#input_file",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
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
            "inputBinding": {
                "separate": true,
                "valueFrom": {
                    "class": "Expression",
                    "engine": "#cwl-js-engine",
                    "script": "\"fastq\""
                },
                "sbg:cmdInclude": true,
                "position": 2
            },
            "sbg:toolDefaultValue": "fastq",
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
            ]
        }
    ],
    "sbg:job": {
        "inputs": {
            "input_file": {
                "class": "File",
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_file.ext"
            },
            "type": "fastq"
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        }
    },
    "sbg:createdBy": "duplexa",
    "class": "CommandLineTool",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
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
    "cwlVersion": "sbg:draft-2",
    "sbg:image_url": null,
    "stdin": "",
    "label": "validatefiles",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:latestRevision": 10,
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
    "sbg:sbgMaintained": false,
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
    "sbg:project": "4dn-dcic/dev",
    "sbg:id": "4dn-dcic/dev/validate/10",
    "arguments": [],
    "sbg:cmdPreview": "run.sh",
    "baseCommand": [
        "run.sh",
        ""
    ]
}