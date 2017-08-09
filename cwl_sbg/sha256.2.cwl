{
    "sbg:project": "4dn-dcic/dev",
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
    "sbg:cmdPreview": "run.sh",
    "label": "sha256",
    "requirements": [],
    "temporaryFailCodes": [],
    "sbg:createdOn": 1486182682,
    "baseCommand": [
        "run.sh"
    ],
    "stdout": "",
    "sbg:sbgMaintained": false,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "sbg:modifiedOn": 1486183166,
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "class": "CommandLineTool",
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
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/sha256:v1"
        }
    ],
    "sbg:revision": 2,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdBy": "duplexa",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "input_file": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input.ext"
            }
        }
    },
    "stdin": "",
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "sbg:image_url": null,
    "sbg:latestRevision": 2,
    "sbg:modifiedBy": "duplexa",
    "sbg:projectName": "Dev",
    "successCodes": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#report",
            "outputBinding": {
                "loadContents": true,
                "glob": "\"report\""
            }
        }
    ],
    "sbg:validationErrors": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1486182682,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1486182872,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1486183166,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        }
    ],
    "arguments": []
}