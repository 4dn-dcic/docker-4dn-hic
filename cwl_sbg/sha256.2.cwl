{
    "sbg:createdOn": 1486182682,
    "sbg:latestRevision": 2,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:modifiedOn": 1486183166,
    "sbg:id": "4dn-dcic/dev/sha256/2",
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
    "stdout": "",
    "sbg:createdBy": "duplexa",
    "hints": [
        {
            "class": "sbg:CPURequirement",
            "value": 1
        },
        {
            "class": "sbg:MemRequirement",
            "value": 1000
        },
        {
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/sha256:v1"
        }
    ],
    "requirements": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "sbg:validationErrors": [],
    "arguments": [],
    "description": "",
    "temporaryFailCodes": [],
    "sbg:job": {
        "inputs": {
            "input_file": {
                "path": "/path/to/input.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            }
        },
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        }
    },
    "sbg:cmdPreview": "run.sh",
    "stdin": "",
    "cwlVersion": "sbg:draft-2",
    "sbg:revision": 2,
    "outputs": [
        {
            "outputBinding": {
                "glob": "\"report\"",
                "loadContents": true
            },
            "id": "#report",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1486182682,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1486182872,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1486183166,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "successCodes": [],
    "sbg:sbgMaintained": false,
    "baseCommand": [
        "run.sh"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "label": "sha256",
    "class": "CommandLineTool",
    "sbg:image_url": null,
    "sbg:modifiedBy": "duplexa",
    "sbg:projectName": "Dev"
}