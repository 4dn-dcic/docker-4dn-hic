{
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1486182682,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1486182872,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1486183166,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2
        }
    ],
    "successCodes": [],
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
    "sbg:createdOn": 1486182682,
    "cwlVersion": "sbg:draft-2",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "label": "sha256",
    "sbg:projectName": "Dev",
    "sbg:contributors": [
        "duplexa"
    ],
    "temporaryFailCodes": [],
    "sbg:image_url": null,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "class": "CommandLineTool",
    "stdin": "",
    "sbg:modifiedBy": "duplexa",
    "sbg:revision": 2,
    "sbg:project": "4dn-dcic/dev",
    "sbg:latestRevision": 2,
    "requirements": [],
    "inputs": [
        {
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            }
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdBy": "duplexa",
    "description": "",
    "arguments": [],
    "sbg:cmdPreview": "run.sh",
    "sbg:job": {
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        },
        "inputs": {
            "input_file": {
                "path": "/path/to/input.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            }
        }
    },
    "sbg:modifiedOn": 1486183166,
    "sbg:validationErrors": [],
    "outputs": [
        {
            "id": "#report",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "loadContents": true,
                "glob": "\"report\""
            }
        }
    ],
    "sbg:sbgMaintained": false,
    "stdout": ""
}