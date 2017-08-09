{
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
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/validatefiles:v1"
        }
    ],
    "sbg:createdOn": 1476287593,
    "cwlVersion": "sbg:draft-2",
    "label": "validatefiles",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:createdBy": "duplexa",
    "temporaryFailCodes": [],
    "sbg:latestRevision": 10,
    "sbg:modifiedBy": "duplexa",
    "stdin": "",
    "stdout": "",
    "sbg:job": {
        "allocatedResources": {
            "mem": 500,
            "cpu": 1
        },
        "inputs": {
            "type": "fastq",
            "input_file": {
                "class": "File",
                "path": "/path/to/input_file.ext",
                "secondaryFiles": [],
                "size": 0
            }
        }
    },
    "sbg:cmdPreview": "run.sh",
    "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
    "sbg:sbgMaintained": false,
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
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/10/raw/",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "id": "#input_file",
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
                "valueFrom": {
                    "engine": "#cwl-js-engine",
                    "script": "\"fastq\"",
                    "class": "Expression"
                },
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            }
        }
    ],
    "sbg:image_url": null,
    "sbg:modifiedOn": 1480981592,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:projectName": "Dev",
    "sbg:id": "4dn-dcic/dev/validate/10",
    "baseCommand": [
        "run.sh",
        ""
    ],
    "description": "",
    "sbg:revision": 10,
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
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1476287593
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:revisionNotes": "first revision",
            "sbg:modifiedOn": 1476287940
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479853127
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479853200
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479853246
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5,
            "sbg:revisionNotes": "added validate_on switch.",
            "sbg:modifiedOn": 1480958676
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 6,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480958776
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 7,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480958819
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 8,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480958939
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 9,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480981348
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 10,
            "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
            "sbg:modifiedOn": 1480981592
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "sbg:validationErrors": [],
    "successCodes": []
}