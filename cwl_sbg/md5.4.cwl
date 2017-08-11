{
    "sbg:latestRevision": 4,
    "temporaryFailCodes": [],
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
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480978938,
            "sbg:revision": 0,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480978992,
            "sbg:revision": 1,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494438192,
            "sbg:revision": 2,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494438281,
            "sbg:revision": 3,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494536730,
            "sbg:revision": 4,
            "sbg:revisionNotes": null
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            }
        }
    ],
    "sbg:cmdPreview": "run.sh",
    "sbg:id": "4dn-dcic/dev/md5/4",
    "sbg:createdOn": 1480978938,
    "class": "CommandLineTool",
    "sbg:revision": 4,
    "baseCommand": [
        "run.sh"
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
            "dockerImageId": "",
            "dockerPull": "duplexa/md5:v1",
            "class": "DockerRequirement"
        }
    ],
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
    "label": "md5",
    "sbg:createdBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "sbg:sbgMaintained": false,
    "description": "",
    "successCodes": [],
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1494536730,
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedBy": "duplexa",
    "arguments": [],
    "requirements": [],
    "sbg:validationErrors": [],
    "stdin": "",
    "sbg:image_url": null,
    "stdout": ""
}