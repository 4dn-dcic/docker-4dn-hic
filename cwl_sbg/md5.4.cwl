{
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "id": "#input_file"
        }
    ],
    "sbg:validationErrors": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1480978938,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1480978992,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1494438192,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1494438281,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1494536730,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedBy": "duplexa",
    "sbg:modifiedOn": 1494536730,
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
    "sbg:projectName": "Dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/",
    "sbg:contributors": [
        "duplexa"
    ],
    "stdin": "",
    "temporaryFailCodes": [],
    "sbg:image_url": null,
    "stdout": "",
    "sbg:job": {
        "inputs": {
            "input_file": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_file.ext",
                "class": "File"
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        }
    },
    "description": "",
    "sbg:latestRevision": 4,
    "sbg:sbgMaintained": false,
    "successCodes": [],
    "label": "md5",
    "sbg:createdBy": "duplexa",
    "sbg:revision": 4,
    "sbg:id": "4dn-dcic/dev/md5/4",
    "sbg:project": "4dn-dcic/dev",
    "arguments": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "\"report\""
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#report"
        }
    ],
    "baseCommand": [
        "run.sh"
    ],
    "sbg:cmdPreview": "run.sh",
    "requirements": [],
    "sbg:createdOn": 1480978938,
    "class": "CommandLineTool"
}