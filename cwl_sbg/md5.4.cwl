{
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/md5:v1",
            "dockerImageId": ""
        }
    ],
    "label": "md5",
    "sbg:modifiedBy": "duplexa",
    "inputs": [
        {
            "id": "#input_file",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:modifiedOn": 1494536730,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "temporaryFailCodes": [],
    "sbg:image_url": null,
    "sbg:validationErrors": [],
    "stdin": "",
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
            "outputBinding": {
                "glob": "\"report\""
            },
            "id": "#report",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:sbgMaintained": false,
    "successCodes": [],
    "sbg:revision": 4,
    "sbg:job": {
        "inputs": {
            "input_file": {
                "class": "File",
                "path": "/path/to/input_file.ext",
                "size": 0,
                "secondaryFiles": []
            }
        },
        "allocatedResources": {
            "mem": 500,
            "cpu": 1
        }
    },
    "class": "CommandLineTool",
    "stdout": "",
    "sbg:createdBy": "duplexa",
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
    "sbg:id": "4dn-dcic/dev/md5/4",
    "sbg:cmdPreview": "run.sh",
    "sbg:project": "4dn-dcic/dev",
    "sbg:projectName": "Dev",
    "requirements": [],
    "sbg:createdOn": 1480978938,
    "sbg:latestRevision": 4,
    "arguments": [],
    "description": "",
    "sbg:contributors": [
        "duplexa"
    ]
}