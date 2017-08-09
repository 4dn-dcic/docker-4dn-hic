{
    "sbg:createdOn": 1480978938,
    "stdin": "",
    "sbg:sbgMaintained": false,
    "requirements": [],
    "sbg:modifiedBy": "duplexa",
    "stdout": "",
    "sbg:image_url": null,
    "temporaryFailCodes": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/",
    "sbg:job": {
        "inputs": {
            "input_file": {
                "path": "/path/to/input_file.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            }
        },
        "allocatedResources": {
            "mem": 500,
            "cpu": 1
        }
    },
    "sbg:latestRevision": 4,
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1494536730,
    "sbg:createdBy": "duplexa",
    "successCodes": [],
    "baseCommand": [
        "run.sh"
    ],
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
    "sbg:validationErrors": [],
    "sbg:cmdPreview": "run.sh",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:revision": 4,
    "sbg:project": "4dn-dcic/dev",
    "arguments": [],
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "label": "md5",
    "class": "CommandLineTool",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
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
    "inputs": [
        {
            "id": "#input_file",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:id": "4dn-dcic/dev/md5/4"
}