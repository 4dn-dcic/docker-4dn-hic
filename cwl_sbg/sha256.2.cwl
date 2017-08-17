{
    "stdout": "",
    "sbg:projectName": "Dev",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:createdOn": 1486182682,
    "description": "",
    "sbg:sbgMaintained": false,
    "requirements": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1486182682,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1486182872,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1486183166,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:revisionNotes": null
        }
    ],
    "sbg:image_url": null,
    "stdin": "",
    "sbg:latestRevision": 2,
    "sbg:createdBy": "duplexa",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "input_file": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input.ext",
                "size": 0
            }
        }
    },
    "temporaryFailCodes": [],
    "label": "sha256",
    "sbg:validationErrors": [],
    "successCodes": [],
    "sbg:modifiedOn": 1486183166,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "sbg:revision": 2,
    "class": "CommandLineTool",
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
    "baseCommand": [
        "run.sh"
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:project": "4dn-dcic/dev",
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#report",
            "outputBinding": {
                "glob": "\"report\"",
                "loadContents": true
            }
        }
    ],
    "arguments": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:cmdPreview": "run.sh",
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
            "id": "#input_file"
        }
    ]
}