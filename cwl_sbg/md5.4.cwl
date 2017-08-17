{
    "sbg:createdBy": "duplexa",
    "stdin": "",
    "baseCommand": [
        "run.sh"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480978938
        },
        {
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480978992
        },
        {
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494438192
        },
        {
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494438281
        },
        {
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494536730
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1494536730,
    "sbg:cmdPreview": "run.sh",
    "sbg:id": "4dn-dcic/dev/md5/4",
    "class": "CommandLineTool",
    "inputs": [
        {
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            }
        }
    ],
    "arguments": [],
    "successCodes": [],
    "sbg:revision": 4,
    "sbg:validationErrors": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "temporaryFailCodes": [],
    "sbg:createdOn": 1480978938,
    "sbg:latestRevision": 4,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:job": {
        "inputs": {
            "input_file": {
                "size": 0,
                "class": "File",
                "path": "/path/to/input_file.ext",
                "secondaryFiles": []
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        }
    },
    "stdout": "",
    "label": "md5",
    "sbg:projectName": "Dev",
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedBy": "duplexa",
    "sbg:image_url": null,
    "description": "",
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
    "sbg:project": "4dn-dcic/dev",
    "requirements": [],
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
    ]
}