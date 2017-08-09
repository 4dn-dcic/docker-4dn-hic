{
    "temporaryFailCodes": [],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:job": {
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        },
        "inputs": {
            "input_file": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input.ext",
                "class": "File"
            }
        }
    },
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "sbg:modifiedBy": "duplexa",
    "sbg:sbgMaintained": false,
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
    "cwlVersion": "sbg:draft-2",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdout": "",
    "sbg:createdBy": "duplexa",
    "label": "sha256",
    "stdin": "",
    "sbg:revision": 2,
    "sbg:createdOn": 1486182682,
    "sbg:contributors": [
        "duplexa"
    ],
    "outputs": [
        {
            "id": "#report",
            "outputBinding": {
                "loadContents": true,
                "glob": "\"report\""
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
            "dockerImageId": "",
            "dockerPull": "duplexa/sha256:v1",
            "class": "DockerRequirement"
        }
    ],
    "arguments": [],
    "inputs": [
        {
            "id": "#input_file",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "requirements": [],
    "sbg:modifiedOn": 1486183166,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "sbg:validationErrors": [],
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "description": "",
    "sbg:image_url": null,
    "sbg:latestRevision": 2,
    "successCodes": [],
    "sbg:cmdPreview": "run.sh",
    "class": "CommandLineTool"
}