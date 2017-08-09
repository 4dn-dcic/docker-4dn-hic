{
    "requirements": [],
    "sbg:image_url": null,
    "sbg:modifiedBy": "duplexa",
    "stdin": "",
    "sbg:revision": 2,
    "arguments": [],
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "stdout": "",
    "sbg:createdBy": "duplexa",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:modifiedOn": 1486183166,
    "label": "sha256",
    "cwlVersion": "sbg:draft-2",
    "sbg:project": "4dn-dcic/dev",
    "sbg:sbgMaintained": false,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1486182682,
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1486182872,
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1486183166,
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        }
    ],
    "class": "CommandLineTool",
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
    "sbg:createdOn": 1486182682,
    "temporaryFailCodes": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:validationErrors": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:job": {
        "inputs": {
            "input_file": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input.ext",
                "class": "File"
            }
        },
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        }
    },
    "sbg:latestRevision": 2,
    "description": "",
    "sbg:cmdPreview": "run.sh",
    "inputs": [
        {
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            }
        }
    ],
    "sbg:projectName": "Dev",
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
    "successCodes": []
}