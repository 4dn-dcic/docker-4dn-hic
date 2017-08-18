{
    "sbg:latestRevision": 2,
    "label": "sha256",
    "requirements": [],
    "temporaryFailCodes": [],
    "sbg:job": {
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
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
    "arguments": [],
    "sbg:revision": 2,
    "sbg:projectName": "Dev",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        }
    ],
    "sbg:image_url": null,
    "stdin": "",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:cmdPreview": "run.sh",
    "sbg:project": "4dn-dcic/dev",
    "sbg:sbgMaintained": false,
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "loadContents": true,
                "glob": "\"report\""
            },
            "id": "#report"
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "successCodes": [],
    "sbg:createdOn": 1486182682,
    "description": "",
    "stdout": "",
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "duplexa",
    "sbg:createdBy": "duplexa",
    "sbg:modifiedOn": 1486183166,
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
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
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
    "class": "CommandLineTool",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/"
}