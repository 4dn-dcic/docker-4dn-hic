{
    "requirements": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "label": "md5",
    "stdout": "",
    "sbg:cmdPreview": "run.sh",
    "baseCommand": [
        "run.sh"
    ],
    "stdin": "",
    "sbg:id": "4dn-dcic/dev/md5/4",
    "sbg:latestRevision": 4,
    "sbg:createdBy": "duplexa",
    "sbg:job": {
        "inputs": {
            "input_file": {
                "path": "/path/to/input_file.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        }
    },
    "arguments": [],
    "successCodes": [],
    "description": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/",
    "sbg:validationErrors": [],
    "sbg:createdOn": 1480978938,
    "sbg:revision": 4,
    "sbg:contributors": [
        "duplexa"
    ],
    "temporaryFailCodes": [],
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
    "class": "CommandLineTool",
    "sbg:image_url": null,
    "sbg:modifiedOn": 1494536730,
    "sbg:projectName": "Dev",
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        }
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
    "cwlVersion": "sbg:draft-2",
    "sbg:sbgMaintained": false,
    "sbg:modifiedBy": "duplexa"
}