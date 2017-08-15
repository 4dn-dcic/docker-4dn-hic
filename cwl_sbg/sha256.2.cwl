{
    "successCodes": [],
    "sbg:modifiedBy": "duplexa",
    "baseCommand": [
        "run.sh"
    ],
    "temporaryFailCodes": [],
    "cwlVersion": "sbg:draft-2",
    "description": "",
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
    "sbg:project": "4dn-dcic/dev",
    "requirements": [],
    "sbg:revision": 2,
    "sbg:contributors": [
        "duplexa"
    ],
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sha256:v1"
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
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#input_file"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "label": "sha256",
    "sbg:sbgMaintained": false,
    "sbg:createdOn": 1486182682,
    "sbg:image_url": null,
    "sbg:projectName": "Dev",
    "sbg:latestRevision": 2,
    "sbg:modifiedOn": 1486183166,
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1486182682,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1486182872,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1486183166,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "stdin": "",
    "class": "CommandLineTool",
    "stdout": "",
    "arguments": [],
    "sbg:cmdPreview": "run.sh",
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "sbg:createdBy": "duplexa",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:validationErrors": [],
    "sbg:job": {
        "inputs": {
            "input_file": {
                "path": "/path/to/input.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            }
        },
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        }
    }
}