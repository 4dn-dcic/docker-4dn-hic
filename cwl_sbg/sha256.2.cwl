{
    "sbg:image_url": null,
    "requirements": [],
    "successCodes": [],
    "sbg:cmdPreview": "run.sh",
    "description": "",
    "sbg:revision": 2,
    "stdin": "",
    "label": "sha256",
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
            "dockerImageId": "",
            "dockerPull": "duplexa/sha256:v1"
        }
    ],
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
    "sbg:modifiedBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "input_file": {
                "class": "File",
                "path": "/path/to/input.ext",
                "size": 0,
                "secondaryFiles": []
            }
        }
    },
    "sbg:validationErrors": [],
    "sbg:modifiedOn": 1486183166,
    "cwlVersion": "sbg:draft-2",
    "sbg:id": "4dn-dcic/dev/sha256/2",
    "sbg:sbgMaintained": false,
    "arguments": [],
    "sbg:latestRevision": 2,
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
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
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
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:project": "4dn-dcic/dev",
    "class": "CommandLineTool",
    "sbg:createdBy": "duplexa",
    "stdout": "",
    "temporaryFailCodes": []
}