{
    "stdin": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/",
    "sbg:revision": 4,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:image_url": null,
    "sbg:createdOn": 1480978938,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1480978938,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1480978992,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1494438192,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedOn": 1494438281,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1494536730,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 4
        }
    ],
    "label": "md5",
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
    "description": "",
    "sbg:validationErrors": [],
    "sbg:createdBy": "duplexa",
    "sbg:cmdPreview": "run.sh",
    "successCodes": [],
    "sbg:latestRevision": 4,
    "arguments": [],
    "sbg:job": {
        "inputs": {
            "input_file": {
                "path": "/path/to/input_file.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            }
        },
        "allocatedResources": {
            "mem": 500,
            "cpu": 1
        }
    },
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file",
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            }
        }
    ],
    "sbg:id": "4dn-dcic/dev/md5/4",
    "sbg:modifiedOn": 1494536730,
    "sbg:sbgMaintained": false,
    "requirements": [],
    "baseCommand": [
        "run.sh"
    ],
    "cwlVersion": "sbg:draft-2",
    "temporaryFailCodes": [],
    "stdout": "",
    "sbg:modifiedBy": "duplexa",
    "sbg:project": "4dn-dcic/dev",
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
    "sbg:contributors": [
        "duplexa"
    ],
    "class": "CommandLineTool"
}