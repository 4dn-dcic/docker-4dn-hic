{
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "id": "#input_file"
        }
    ],
    "requirements": [],
    "successCodes": [],
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
    "sbg:projectName": "Dev",
    "label": "md5",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "arguments": [],
    "sbg:cmdPreview": "run.sh",
    "sbg:modifiedBy": "duplexa",
    "sbg:latestRevision": 4,
    "sbg:sbgMaintained": false,
    "sbg:image_url": null,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/",
    "sbg:revision": 4,
    "class": "CommandLineTool",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:createdBy": "duplexa",
    "stdin": "",
    "baseCommand": [
        "run.sh"
    ],
    "sbg:validationErrors": [],
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
    "stdout": "",
    "sbg:createdOn": 1480978938,
    "description": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1480978938,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1480978992,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1494438192,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2
        },
        {
            "sbg:modifiedOn": 1494438281,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1494536730,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4
        }
    ],
    "sbg:modifiedOn": 1494536730,
    "sbg:id": "4dn-dcic/dev/md5/4",
    "cwlVersion": "sbg:draft-2",
    "sbg:job": {
        "inputs": {
            "input_file": {
                "secondaryFiles": [],
                "size": 0,
                "class": "File",
                "path": "/path/to/input_file.ext"
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        }
    },
    "temporaryFailCodes": []
}