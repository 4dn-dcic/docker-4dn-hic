{
    "sbg:validationErrors": [],
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
    "sbg:cmdPreview": "run.sh",
    "sbg:latestRevision": 12,
    "sbg:project": "4dn-dcic/dev",
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
            "mem": 500,
            "cpu": 1
        }
    },
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
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
            "sbg:toolDefaultValue": "fastq",
            "id": "#type",
            "inputBinding": {
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true
            }
        }
    ],
    "sbg:createdOn": 1476287593,
    "class": "CommandLineTool",
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
        },
        {
            "sbg:revision": 12,
            "sbg:modifiedOn": 1503414051,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed 'value' from input 'type'"
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:revisionNotes": "removed 'value' from input 'type'",
    "sbg:createdBy": "duplexa",
    "temporaryFailCodes": [],
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
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#report",
            "outputBinding": {
                "glob": "report_validatefiles"
            }
        }
    ],
    "sbg:image_url": null,
    "stdout": "",
    "cwlVersion": "sbg:draft-2",
    "arguments": [],
    "successCodes": [],
    "description": "",
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1503414051,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/12/raw/",
    "label": "validatefiles",
    "baseCommand": [
        "run.sh",
        ""
    ],
    "sbg:revision": 12,
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "stdin": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:sbgMaintained": false,
    "sbg:id": "4dn-dcic/dev/validate/12"
}