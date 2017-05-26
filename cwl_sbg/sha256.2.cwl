{
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:sbgMaintained": false,
    "cwlVersion": "sbg:draft-2",
    "label": "sha256",
    "sbg:createdBy": "duplexa",
    "sbg:revision": 2,
    "arguments": [],
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "inputs": [
        {
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            }
        }
    ],
    "sbg:cmdPreview": "run.sh",
    "sbg:appVersion": [
        "sbg:draft-2"
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
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "sbg:latestRevision": 2,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1486182682,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1486182872,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1486183166,
            "sbg:revisionNotes": null
        }
    ],
    "temporaryFailCodes": [],
    "stdin": "",
    "stdout": "",
    "class": "CommandLineTool",
    "sbg:modifiedOn": 1486183166,
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "duplexa",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:createdOn": 1486182682,
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "input_file": {
                "path": "/path/to/input.ext",
                "secondaryFiles": [],
                "class": "File",
                "size": 0
            }
        }
    },
    "description": "",
    "requirements": [],
    "sbg:image_url": null,
    "outputs": [
        {
            "id": "#report",
            "outputBinding": {
                "glob": "\"report\"",
                "loadContents": true
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "successCodes": []
}