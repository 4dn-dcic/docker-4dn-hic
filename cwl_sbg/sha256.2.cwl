{
    "baseCommand": [
        "run.sh"
    ],
    "sbg:sbgMaintained": false,
    "sbg:projectName": "Dev",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
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
    "sbg:image_url": null,
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "arguments": [],
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
    "sbg:job": {
        "inputs": {
            "input_file": {
                "path": "/path/to/input.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            }
        },
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        }
    },
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedOn": 1486183166,
    "label": "sha256",
    "temporaryFailCodes": [],
    "sbg:revision": 2,
    "sbg:latestRevision": 2,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "successCodes": [],
    "sbg:createdOn": 1486182682,
    "sbg:modifiedBy": "duplexa",
    "requirements": [],
    "sbg:validationErrors": [],
    "sbg:cmdPreview": "run.sh",
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
    "class": "CommandLineTool",
    "description": "",
    "sbg:project": "4dn-dcic/dev",
    "stdout": "",
    "sbg:createdBy": "duplexa",
    "stdin": ""
}