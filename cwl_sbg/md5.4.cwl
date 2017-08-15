{
    "sbg:id": "4dn-dcic/dev/md5/4",
    "sbg:sbgMaintained": false,
    "sbg:createdOn": 1480978938,
    "sbg:createdBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/",
    "stdin": "",
    "sbg:revision": 4,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1494536730,
    "sbg:latestRevision": 4,
    "sbg:project": "4dn-dcic/dev",
    "stdout": "",
    "requirements": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#report",
            "outputBinding": {
                "glob": "\"report\""
            }
        }
    ],
    "sbg:cmdPreview": "run.sh",
    "label": "md5",
    "baseCommand": [
        "run.sh"
    ],
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
            "dockerPull": "duplexa/md5:v1",
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "successCodes": [],
    "temporaryFailCodes": [],
    "sbg:validationErrors": [],
    "sbg:job": {
        "allocatedResources": {
            "mem": 500,
            "cpu": 1
        },
        "inputs": {
            "input_file": {
                "path": "/path/to/input_file.ext",
                "secondaryFiles": [],
                "class": "File",
                "size": 0
            }
        }
    },
    "sbg:projectName": "Dev",
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1480978938,
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1480978992,
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1494438192,
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1494438281,
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1494536730,
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            }
        }
    ],
    "class": "CommandLineTool",
    "sbg:contributors": [
        "duplexa"
    ],
    "arguments": [],
    "sbg:modifiedBy": "duplexa",
    "sbg:image_url": null,
    "description": ""
}