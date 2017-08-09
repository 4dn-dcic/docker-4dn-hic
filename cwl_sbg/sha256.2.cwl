{
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "duplexa"
    ],
    "arguments": [],
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "cwlVersion": "sbg:draft-2",
    "label": "sha256",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "stdin": "",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1486182682,
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1486182872,
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1486183166,
            "sbg:revision": 2
        }
    ],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "input_file": {
                "path": "/path/to/input.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            }
        }
    },
    "sbg:cmdPreview": "run.sh",
    "class": "CommandLineTool",
    "sbg:createdOn": 1486182682,
    "temporaryFailCodes": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdout": "",
    "successCodes": [],
    "sbg:latestRevision": 2,
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1486183166,
    "sbg:project": "4dn-dcic/dev",
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
    "sbg:revision": 2,
    "description": "",
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
    "baseCommand": [
        "run.sh"
    ],
    "sbg:image_url": null,
    "sbg:validationErrors": [],
    "requirements": [],
    "sbg:createdBy": "duplexa",
    "sbg:modifiedBy": "duplexa"
}