{
    "sbg:modifiedBy": "duplexa",
    "sbg:job": {
        "inputs": {
            "input_file": {
                "class": "File",
                "size": 0,
                "path": "/path/to/input_file.ext",
                "secondaryFiles": []
            }
        },
        "allocatedResources": {
            "mem": 500,
            "cpu": 1
        }
    },
    "description": "",
    "sbg:id": "4dn-dcic/dev/md5/4",
    "stdin": "",
    "sbg:revision": 4,
    "sbg:latestRevision": 4,
    "sbg:validationErrors": [],
    "sbg:image_url": null,
    "sbg:createdBy": "duplexa",
    "class": "CommandLineTool",
    "hints": [
        {
            "class": "sbg:CPURequirement",
            "value": 1
        },
        {
            "class": "sbg:MemRequirement",
            "value": 500
        },
        {
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/md5:v1"
        }
    ],
    "requirements": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/",
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
    "sbg:projectName": "Dev",
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
    "arguments": [],
    "sbg:modifiedOn": 1494536730,
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
    "cwlVersion": "sbg:draft-2",
    "sbg:cmdPreview": "run.sh",
    "sbg:project": "4dn-dcic/dev",
    "label": "md5",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "temporaryFailCodes": [],
    "stdout": "",
    "sbg:sbgMaintained": false,
    "sbg:createdOn": 1480978938,
    "successCodes": [],
    "baseCommand": [
        "run.sh"
    ]
}