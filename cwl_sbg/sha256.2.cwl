{
    "sbg:job": {
        "inputs": {
            "input_file": {
                "path": "/path/to/input.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        }
    },
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "sbg:project": "4dn-dcic/dev",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:latestRevision": 2,
    "class": "CommandLineTool",
    "label": "sha256",
    "sbg:validationErrors": [],
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "requirements": [],
    "sbg:createdOn": 1486182682,
    "sbg:cmdPreview": "run.sh",
    "stdout": "",
    "sbg:createdBy": "duplexa",
    "sbg:sbgMaintained": false,
    "sbg:projectName": "Dev",
    "sbg:revision": 2,
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "successCodes": [],
    "sbg:image_url": null,
    "stdin": "",
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "arguments": [],
    "outputs": [
        {
            "id": "#report",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "loadContents": true,
                "glob": "\"report\""
            }
        }
    ],
    "temporaryFailCodes": [],
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
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1486182682,
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1486182872,
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1486183166,
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:modifiedOn": 1486183166,
    "sbg:modifiedBy": "duplexa"
}