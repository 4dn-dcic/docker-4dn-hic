{
    "class": "CommandLineTool",
    "requirements": [
        {
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "successCodes": [],
    "stdin": "",
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:revision": 12,
    "sbg:cmdPreview": "run.sh",
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
    "sbg:projectName": "Dev",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/validate/12/raw/",
    "sbg:latestRevision": 12,
    "sbg:createdBy": "duplexa",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "report_validatefiles"
            },
            "id": "#report"
        }
    ],
    "sbg:id": "4dn-dcic/dev/validate/12",
    "arguments": [],
    "temporaryFailCodes": [],
    "baseCommand": [
        "run.sh",
        ""
    ],
    "sbg:modifiedOn": 1503414051,
    "label": "validatefiles",
    "sbg:sbgMaintained": false,
    "sbg:createdOn": 1476287593,
    "sbg:image_url": null,
    "sbg:validationErrors": [],
    "stdout": "",
    "sbg:revisionNotes": "removed 'value' from input 'type'",
    "sbg:job": {
        "inputs": {
            "type": "fastq",
            "input_file": {
                "class": "File",
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_file.ext"
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        }
    },
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "id": "#input_file"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 2,
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
                    "type": "enum",
                    "name": "type"
                }
            ],
            "sbg:toolDefaultValue": "fastq",
            "id": "#type"
        }
    ],
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
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed quote from output glob",
            "sbg:revision": 11,
            "sbg:modifiedOn": 1503348708
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed 'value' from input 'type'",
            "sbg:revision": 12,
            "sbg:modifiedOn": 1503414051
        }
    ],
    "sbg:project": "4dn-dcic/dev"
}