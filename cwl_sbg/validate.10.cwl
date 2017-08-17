{
    "sbg:revision": 10,
    "sbg:cmdPreview": "run.sh",
    "sbg:sbgMaintained": false,
    "stdout": "",
    "description": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:job": {
        "allocatedResources": {
            "mem": 500,
            "cpu": 1
        },
        "inputs": {
            "input_file": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_file.ext",
                "class": "File"
            },
            "type": "fastq"
        }
    },
    "sbg:createdOn": 1476287593,
    "arguments": [],
    "sbg:latestRevision": 10,
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
            "sbg:toolDefaultValue": "fastq",
            "inputBinding": {
                "separate": true,
                "position": 2,
                "valueFrom": {
                    "script": "\"fastq\"",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
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
            ],
            "id": "#type"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedBy": "duplexa",
    "successCodes": [],
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "id": "#cwl-js-engine"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "sbg:image_url": null,
    "baseCommand": [
        "run.sh",
        ""
    ],
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
    "sbg:projectName": "Dev",
    "sbg:validationErrors": [],
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
    "outputs": [
        {
            "outputBinding": {
                "glob": "\"report_validatefiles\""
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#report"
        }
    ],
    "temporaryFailCodes": [],
    "sbg:createdBy": "duplexa",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:modifiedOn": 1480981592,
    "label": "validatefiles",
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
    "sbg:id": "4dn-dcic/dev/validate/10",
    "stdin": "",
    "class": "CommandLineTool"
}