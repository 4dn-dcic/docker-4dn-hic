{
    "requirements": [],
    "stdin": "",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
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
    "sbg:cmdPreview": "run.sh",
    "label": "sha256",
    "description": "",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:revision": 2,
    "arguments": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "successCodes": [],
    "sbg:createdOn": 1486182682,
    "sbg:modifiedBy": "duplexa",
    "class": "CommandLineTool",
    "sbg:validationErrors": [],
    "sbg:project": "4dn-dcic/dev",
    "temporaryFailCodes": [],
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "stdout": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "outputs": [
        {
            "id": "#report",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "\"report\"",
                "loadContents": true
            }
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:latestRevision": 2,
    "sbg:projectName": "Dev",
    "cwlVersion": "sbg:draft-2",
    "sbg:image_url": null,
    "sbg:modifiedOn": 1486183166,
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1486182682,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1486182872,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedOn": 1486183166,
            "sbg:modifiedBy": "duplexa"
        }
    ]
}