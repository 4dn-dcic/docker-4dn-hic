{
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "id": "#input_file",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            }
        },
        {
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
            ],
            "id": "#type",
            "inputBinding": {
                "valueFrom": {
                    "script": "\"fastq\"",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "sbg:toolDefaultValue": "fastq"
        }
    ],
    "sbg:latestRevision": 11,
    "description": "",
    "successCodes": [],
    "sbg:revision": 11,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1476287593,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1476287940,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "first revision"
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1479853127,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1479853200,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1479853246,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1480958676,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "added validate_on switch."
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedOn": 1480958776,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedOn": 1480958819,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedOn": 1480958939,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedOn": 1480981348,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedOn": 1480981592,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "changed report name to 'report_validatefiles'"
        },
        {
            "sbg:revision": 11,
            "sbg:modifiedOn": 1503348708,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed quote from output glob"
        }
    ],
    "cwlVersion": "sbg:draft-2",
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
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:cmdPreview": "run.sh",
    "class": "CommandLineTool",
    "sbg:createdOn": 1476287593,
    "temporaryFailCodes": [],
    "sbg:id": "4dn-dcic/dev/validate/11",
    "sbg:validationErrors": [],
    "stdout": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/11/raw/",
    "sbg:createdBy": "duplexa",
    "label": "validatefiles",
    "sbg:sbgMaintained": false,
    "arguments": [],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        },
        "inputs": {
            "type": "fastq",
            "input_file": {
                "class": "File",
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_file.ext"
            }
        }
    },
    "stdin": "",
    "sbg:modifiedOn": 1503348708,
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
    "sbg:modifiedBy": "4dn-dcic",
    "outputs": [
        {
            "outputBinding": {
                "glob": "report_validatefiles"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#report"
        }
    ],
    "baseCommand": [
        "run.sh",
        ""
    ],
    "sbg:revisionNotes": "removed quote from output glob",
    "sbg:image_url": null,
    "sbg:projectName": "Dev"
}