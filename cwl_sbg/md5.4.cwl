{
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "\"report\""
            },
            "id": "#report"
        }
    ],
    "requirements": [],
    "sbg:createdBy": "duplexa",
    "class": "CommandLineTool",
    "sbg:modifiedOn": 1494536730,
    "sbg:sbgMaintained": false,
    "sbg:cmdPreview": "run.sh",
    "sbg:modifiedBy": "duplexa",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        },
        "inputs": {
            "input_file": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_file.ext",
                "class": "File"
            }
        }
    },
    "sbg:latestRevision": 4,
    "stdout": "",
    "sbg:image_url": null,
    "baseCommand": [
        "run.sh"
    ],
    "stdin": "",
    "arguments": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:project": "4dn-dcic/dev",
    "successCodes": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1480978938,
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1480978992,
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1494438192,
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1494438281,
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1494536730,
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:id": "4dn-dcic/dev/md5/4",
    "cwlVersion": "sbg:draft-2",
    "sbg:revision": 4,
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
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/md5:v1"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/",
    "sbg:projectName": "Dev",
    "sbg:validationErrors": [],
    "sbg:createdOn": 1480978938,
    "temporaryFailCodes": [],
    "description": "",
    "label": "md5",
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
    ]
}