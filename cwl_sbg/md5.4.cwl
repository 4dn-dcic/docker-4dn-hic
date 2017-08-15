{
    "description": "",
    "sbg:createdBy": "duplexa",
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
            "dockerImageId": "",
            "dockerPull": "duplexa/md5:v1"
        }
    ],
    "arguments": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480978938,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480978992,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1494438192,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1494438281,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1494536730,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/",
    "sbg:cmdPreview": "run.sh",
    "label": "md5",
    "temporaryFailCodes": [],
    "class": "CommandLineTool",
    "sbg:projectName": "Dev",
    "sbg:createdOn": 1480978938,
    "sbg:validationErrors": [],
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
    "sbg:image_url": null,
    "successCodes": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "stdout": "",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:latestRevision": 4,
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1494536730,
    "sbg:modifiedBy": "duplexa",
    "requirements": [],
    "sbg:id": "4dn-dcic/dev/md5/4",
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "id": "#input_file",
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "stdin": "",
    "sbg:revision": 4,
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
    "sbg:project": "4dn-dcic/dev"
}