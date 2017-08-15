{
    "sbg:modifiedOn": 1486183166,
    "sbg:createdOn": 1486182682,
    "stdout": "",
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
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        }
    ],
    "description": "",
    "requirements": [],
    "stdin": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:sbgMaintained": false,
    "arguments": [],
    "label": "sha256",
    "cwlVersion": "sbg:draft-2",
    "sbg:latestRevision": 2,
    "sbg:cmdPreview": "run.sh",
    "sbg:createdBy": "duplexa",
    "successCodes": [],
    "sbg:id": "4dn-dcic/dev/sha256/2",
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
    "sbg:modifiedBy": "duplexa",
    "sbg:image_url": null,
    "sbg:contributors": [
        "duplexa"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/sha256/2/raw/",
    "temporaryFailCodes": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": "\"report\"",
                "loadContents": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#report"
        }
    ],
    "sbg:revision": 2,
    "sbg:project": "4dn-dcic/dev",
    "sbg:projectName": "Dev",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "input_file": {
                "class": "File",
                "size": 0,
                "path": "/path/to/input.ext",
                "secondaryFiles": []
            }
        }
    },
    "class": "CommandLineTool",
    "sbg:validationErrors": [],
    "baseCommand": [
        "run.sh"
    ]
}