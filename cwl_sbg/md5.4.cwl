{
    "sbg:sbgMaintained": false,
    "inputs": [
        {
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            }
        }
    ],
    "sbg:modifiedOn": 1494536730,
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "sbg:projectName": "Dev",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480978938,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480978992,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1494438192,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1494438281,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1494536730,
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "successCodes": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:image_url": null,
    "sbg:validationErrors": [],
    "sbg:id": "4dn-dcic/dev/md5/4",
    "class": "CommandLineTool",
    "requirements": [],
    "arguments": [],
    "stdout": "",
    "sbg:revision": 4,
    "sbg:createdOn": 1480978938,
    "sbg:createdBy": "duplexa",
    "sbg:job": {
        "inputs": {
            "input_file": {
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_file.ext",
                "size": 0
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        }
    },
    "sbg:cmdPreview": "run.sh",
    "temporaryFailCodes": [],
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
    "sbg:modifiedBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "label": "md5",
    "stdin": "",
    "baseCommand": [
        "run.sh"
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
    "sbg:latestRevision": 4,
    "sbg:project": "4dn-dcic/dev"
}