{
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            }
        }
    ],
    "requirements": [],
    "successCodes": [],
    "sbg:revision": 2,
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
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "sbg:sbgMaintained": false,
    "baseCommand": [
        "run.sh"
    ],
    "class": "CommandLineTool",
    "sbg:cmdPreview": "run.sh",
    "arguments": [],
    "sbg:projectName": "Dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "description": "",
    "stdin": "",
    "sbg:modifiedBy": "duplexa",
    "label": "sha256",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "\"report\"",
                "loadContents": true
            },
            "id": "#report"
        }
    ],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "input_file": {
                "secondaryFiles": [],
                "path": "/path/to/input.ext",
                "size": 0,
                "class": "File"
            }
        }
    },
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:validationErrors": [],
    "sbg:createdOn": 1486182682,
    "stdout": "",
    "sbg:project": "4dn-dcic/dev",
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
    "sbg:modifiedOn": 1486183166,
    "temporaryFailCodes": [],
    "sbg:image_url": null,
    "sbg:latestRevision": 2,
    "sbg:createdBy": "duplexa"
}