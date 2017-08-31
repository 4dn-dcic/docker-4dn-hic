{
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:validationErrors": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1486182682,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1486182872,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1486183166,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2
        }
    ],
    "label": "sha256",
    "sbg:project": "4dn-dcic/dev",
    "temporaryFailCodes": [],
    "sbg:revision": 2,
    "sbg:job": {
        "inputs": {
            "input_file": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input.ext"
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        }
    },
    "successCodes": [],
    "stdin": "",
    "cwlVersion": "sbg:draft-2",
    "class": "CommandLineTool",
    "sbg:createdOn": 1486182682,
    "sbg:modifiedBy": "duplexa",
    "sbg:image_url": null,
    "arguments": [],
    "sbg:createdBy": "duplexa",
    "description": "",
    "sbg:modifiedOn": 1486183166,
    "sbg:latestRevision": 2,
    "baseCommand": [
        "run.sh"
    ],
    "requirements": [],
    "sbg:sbgMaintained": false,
    "stdout": "",
    "sbg:cmdPreview": "run.sh",
    "outputs": [
        {
            "outputBinding": {
                "loadContents": true,
                "glob": "\"report\""
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#report"
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "inputs": [
        {
            "id": "#input_file",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "hints": [
        {
            "value": 1,
            "class": "sbg:CPURequirement"
        },
        {
            "value": 1000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerPull": "duplexa/sha256:v1",
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/"
}