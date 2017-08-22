{
    "sbg:modifiedOn": 1486183166,
    "stdin": "",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1486182682,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1486182872,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1486183166,
            "sbg:revision": 2
        }
    ],
    "arguments": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "input_file": {
                "secondaryFiles": [],
                "size": 0,
                "class": "File",
                "path": "/path/to/input.ext"
            }
        }
    },
    "sbg:project": "4dn-dcic/dev",
    "sbg:cmdPreview": "run.sh",
    "label": "sha256",
    "class": "CommandLineTool",
    "sbg:projectName": "Dev",
    "sbg:sbgMaintained": false,
    "sbg:revision": 2,
    "sbg:image_url": null,
    "sbg:modifiedBy": "duplexa",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "description": "",
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
    "successCodes": [],
    "temporaryFailCodes": [],
    "sbg:createdBy": "duplexa",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "requirements": [],
    "sbg:validationErrors": [],
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sha256:v1"
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "stdout": "",
    "sbg:createdOn": 1486182682,
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:latestRevision": 2
}