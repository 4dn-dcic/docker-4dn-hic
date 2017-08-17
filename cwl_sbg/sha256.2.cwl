{
    "description": "",
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
    "stdout": "",
    "sbg:cmdPreview": "run.sh",
    "sbg:image_url": null,
    "baseCommand": [
        "run.sh"
    ],
    "successCodes": [],
    "class": "CommandLineTool",
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "duplexa",
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "sbg:contributors": [
        "duplexa"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "stdin": "",
    "label": "sha256",
    "sbg:createdBy": "duplexa",
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
    "sbg:latestRevision": 2,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "input_file": {
                "class": "File",
                "path": "/path/to/input.ext",
                "secondaryFiles": [],
                "size": 0
            }
        }
    },
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1486182682,
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1486182872,
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1486183166,
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "requirements": [],
    "sbg:revision": 2,
    "sbg:projectName": "Dev",
    "arguments": [],
    "cwlVersion": "sbg:draft-2",
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
    "sbg:sbgMaintained": false,
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedOn": 1486183166,
    "temporaryFailCodes": [],
    "sbg:createdOn": 1486182682
}