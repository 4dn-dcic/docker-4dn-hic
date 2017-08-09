{
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
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "temporaryFailCodes": [],
    "sbg:modifiedOn": 1494536730,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revision": 4,
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:id": "4dn-dcic/dev/md5/4",
    "label": "md5",
    "sbg:image_url": null,
    "requirements": [],
    "sbg:sbgMaintained": false,
    "sbg:job": {
        "allocatedResources": {
            "mem": 500,
            "cpu": 1
        },
        "inputs": {
            "input_file": {
                "size": 0,
                "path": "/path/to/input_file.ext",
                "class": "File",
                "secondaryFiles": []
            }
        }
    },
    "sbg:project": "4dn-dcic/dev",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:latestRevision": 4,
    "sbg:cmdPreview": "run.sh",
    "sbg:createdBy": "duplexa",
    "description": "",
    "sbg:validationErrors": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480978938
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480978992
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1494438192
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1494438281
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1494536730
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "successCodes": [],
    "sbg:projectName": "Dev",
    "arguments": [],
    "sbg:createdOn": 1480978938,
    "stdin": "",
    "class": "CommandLineTool",
    "sbg:contributors": [
        "duplexa"
    ],
    "outputs": [
        {
            "id": "#report",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "\"report\""
            }
        }
    ],
    "stdout": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/"
}