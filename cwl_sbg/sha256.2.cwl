{
    "class": "CommandLineTool",
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
    "sbg:latestRevision": 2,
    "sbg:sbgMaintained": false,
    "label": "sha256",
    "stdin": "",
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "sbg:revision": 2,
    "sbg:modifiedBy": "duplexa",
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
            "dockerPull": "duplexa/sha256:v1",
            "dockerImageId": ""
        }
    ],
    "sbg:cmdPreview": "run.sh",
    "sbg:modifiedOn": 1486183166,
    "temporaryFailCodes": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1486182682,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1486182872,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1486183166,
            "sbg:revision": 2
        }
    ],
    "sbg:image_url": null,
    "sbg:createdBy": "duplexa",
    "sbg:projectName": "Dev",
    "arguments": [],
    "sbg:project": "4dn-dcic/dev",
    "stdout": "",
    "sbg:validationErrors": [],
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
    "successCodes": [],
    "baseCommand": [
        "run.sh"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "requirements": [],
    "description": "",
    "cwlVersion": "sbg:draft-2",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "input_file": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input.ext"
            }
        }
    },
    "sbg:createdOn": 1486182682
}