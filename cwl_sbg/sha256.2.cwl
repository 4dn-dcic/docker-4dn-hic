{
    "baseCommand": [
        "run.sh"
    ],
    "inputs": [
        {
            "id": "#input_file",
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:cmdPreview": "run.sh",
    "sbg:project": "4dn-dcic/dev",
    "temporaryFailCodes": [],
    "successCodes": [],
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
    "cwlVersion": "sbg:draft-2",
    "arguments": [],
    "sbg:modifiedBy": "duplexa",
    "sbg:image_url": null,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1486183166,
    "stdout": "",
    "description": "",
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "label": "sha256",
    "sbg:latestRevision": 2,
    "outputs": [
        {
            "outputBinding": {
                "loadContents": true,
                "glob": "\"report\""
            },
            "id": "#report",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:createdBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "class": "CommandLineTool",
    "requirements": [],
    "sbg:createdOn": 1486182682,
    "sbg:validationErrors": [],
    "sbg:revision": 2,
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1486182682,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1486182872,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1486183166,
            "sbg:revisionNotes": null
        }
    ],
    "sbg:job": {
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        },
        "inputs": {
            "input_file": {
                "size": 0,
                "path": "/path/to/input.ext",
                "secondaryFiles": [],
                "class": "File"
            }
        }
    },
    "stdin": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:sbgMaintained": false
}