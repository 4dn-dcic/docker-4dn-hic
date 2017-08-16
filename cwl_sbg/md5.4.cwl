{
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
    "sbg:createdOn": 1480978938,
    "outputs": [
        {
            "id": "#report",
            "outputBinding": {
                "glob": "\"report\""
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:validationErrors": [],
    "label": "md5",
    "sbg:job": {
        "inputs": {
            "input_file": {
                "path": "/path/to/input_file.ext",
                "class": "File",
                "secondaryFiles": [],
                "size": 0
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        }
    },
    "hints": [
        {
            "value": 1,
            "class": "sbg:CPURequirement"
        },
        {
            "value": 500,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerPull": "duplexa/md5:v1",
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "sbg:modifiedOn": 1494536730,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:latestRevision": 4,
    "stdin": "",
    "sbg:project": "4dn-dcic/dev",
    "stdout": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/",
    "description": "",
    "arguments": [],
    "temporaryFailCodes": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480978938,
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480978992,
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494438192,
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494438281,
            "sbg:revisionNotes": null,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494536730,
            "sbg:revisionNotes": null,
            "sbg:revision": 4
        }
    ],
    "sbg:cmdPreview": "run.sh",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:image_url": null,
    "successCodes": [],
    "sbg:modifiedBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "sbg:id": "4dn-dcic/dev/md5/4",
    "sbg:contributors": [
        "duplexa"
    ],
    "class": "CommandLineTool",
    "sbg:createdBy": "duplexa",
    "requirements": [],
    "sbg:revision": 4,
    "sbg:sbgMaintained": false,
    "sbg:projectName": "Dev"
}