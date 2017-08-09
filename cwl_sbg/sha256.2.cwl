{
    "sbg:contributors": [
        "duplexa"
    ],
    "outputs": [
        {
            "outputBinding": {
                "loadContents": true,
                "glob": "\"report\""
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#report"
        }
    ],
    "description": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:validationErrors": [],
    "cwlVersion": "sbg:draft-2",
    "stdout": "",
    "sbg:image_url": null,
    "requirements": [],
    "successCodes": [],
    "sbg:revision": 2,
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
    "arguments": [],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1486182682
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1486182872
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedOn": 1486183166
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "sbg:cmdPreview": "run.sh",
    "sbg:sbgMaintained": false,
    "sbg:projectName": "Dev",
    "sbg:job": {
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
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
    "class": "CommandLineTool",
    "label": "sha256",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            }
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:modifiedBy": "duplexa",
    "sbg:latestRevision": 2,
    "stdin": "",
    "sbg:createdOn": 1486182682,
    "temporaryFailCodes": [],
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "sbg:project": "4dn-dcic/dev"
}