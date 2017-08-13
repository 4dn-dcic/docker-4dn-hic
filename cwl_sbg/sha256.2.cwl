{
    "label": "sha256",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1486182682,
    "sbg:modifiedOn": 1486183166,
    "sbg:projectName": "Dev",
    "stdout": "",
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
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "temporaryFailCodes": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "sbg:sbgMaintained": false,
    "successCodes": [],
    "description": "",
    "cwlVersion": "sbg:draft-2",
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
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1486182682,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1486182872,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1486183166,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        }
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "id": "#input_file"
        }
    ],
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
    "sbg:image_url": null,
    "sbg:validationErrors": [],
    "requirements": [],
    "sbg:modifiedBy": "duplexa",
    "class": "CommandLineTool",
    "sbg:createdBy": "duplexa",
    "stdin": "",
    "arguments": [],
    "sbg:cmdPreview": "run.sh",
    "sbg:latestRevision": 2,
    "baseCommand": [
        "run.sh"
    ],
    "sbg:revision": 2
}