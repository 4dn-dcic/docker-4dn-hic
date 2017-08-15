{
    "arguments": [],
    "sbg:latestRevision": 2,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:cmdPreview": "run.sh",
    "requirements": [],
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1486183166,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "temporaryFailCodes": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": "\"report\"",
                "loadContents": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#report"
        }
    ],
    "label": "sha256",
    "successCodes": [],
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        }
    ],
    "stdin": "",
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
    "sbg:sbgMaintained": false,
    "class": "CommandLineTool",
    "sbg:createdBy": "duplexa",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:job": {
        "inputs": {
            "input_file": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input.ext",
                "class": "File"
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        }
    },
    "sbg:revision": 2,
    "sbg:image_url": null,
    "sbg:createdOn": 1486182682,
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
    "stdout": "",
    "cwlVersion": "sbg:draft-2",
    "sbg:project": "4dn-dcic/dev",
    "sbg:validationErrors": [],
    "description": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/"
}