{
    "sbg:latestRevision": 12,
    "sbg:projectName": "Dev",
    "stdin": "",
    "stdout": "",
    "sbg:revisionNotes": "removed 'value' from input 'type'",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "cwlVersion": "sbg:draft-2",
    "temporaryFailCodes": [],
    "sbg:validationErrors": [],
    "sbg:modifiedOn": 1503414051,
    "sbg:id": "4dn-dcic/dev/validate/12",
    "sbg:modifiedBy": "4dn-dcic",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/12/raw/",
    "sbg:createdOn": 1476287593,
    "sbg:createdBy": "duplexa",
    "sbg:project": "4dn-dcic/dev",
    "sbg:revision": 12,
    "class": "CommandLineTool",
    "sbg:cmdPreview": "run.sh",
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
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
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
    "baseCommand": [
        "run.sh",
        ""
    ],
    "arguments": [],
    "label": "validatefiles",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:image_url": null,
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "id": "#input_file",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            }
        },
        {
            "id": "#type",
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
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            }
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1476287593,
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1476287940,
            "sbg:revisionNotes": "first revision",
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479853127,
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479853200,
            "sbg:revisionNotes": null,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479853246,
            "sbg:revisionNotes": null,
            "sbg:revision": 4
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480958676,
            "sbg:revisionNotes": "added validate_on switch.",
            "sbg:revision": 5
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480958776,
            "sbg:revisionNotes": null,
            "sbg:revision": 6
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480958819,
            "sbg:revisionNotes": null,
            "sbg:revision": 7
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480958939,
            "sbg:revisionNotes": null,
            "sbg:revision": 8
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480981348,
            "sbg:revisionNotes": null,
            "sbg:revision": 9
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480981592,
            "sbg:revisionNotes": "changed report name to 'report_validatefiles'",
            "sbg:revision": 10
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1503348708,
            "sbg:revisionNotes": "removed quote from output glob",
            "sbg:revision": 11
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1503414051,
            "sbg:revisionNotes": "removed 'value' from input 'type'",
            "sbg:revision": 12
        }
    ],
    "sbg:job": {
        "inputs": {
            "type": "fastq",
            "input_file": {
                "path": "/path/to/input_file.ext",
                "size": 0,
                "secondaryFiles": [],
                "class": "File"
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        }
    },
    "sbg:sbgMaintained": false,
    "successCodes": [],
    "description": ""
}