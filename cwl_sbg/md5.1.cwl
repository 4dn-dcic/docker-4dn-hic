{
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
    "successCodes": [],
    "sbg:image_url": null,
    "class": "CommandLineTool",
    "stdout": "",
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1480978992,
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "hints": [
        {
            "class": "sbg:CPURequirement",
            "value": 1
        },
        {
            "class": "sbg:MemRequirement",
            "value": 1000
        },
        {
            "dockerPull": "duplexa/md5:v1",
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "requirements": [],
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
    "sbg:createdBy": "duplexa",
    "sbg:id": "4dn-dcic/dev/md5/1",
    "sbg:contributors": [
        "duplexa"
    ],
    "temporaryFailCodes": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revision": 1,
    "sbg:validationErrors": [],
    "sbg:cmdPreview": "run.sh",
    "sbg:job": {
        "inputs": {
            "input_file": {
                "class": "File",
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_file.ext"
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        }
    },
    "stdin": "",
    "baseCommand": [
        "run.sh"
    ],
    "arguments": [],
    "sbg:project": "4dn-dcic/dev",
    "outputs": [
        {
            "id": "#report",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "\"report\""
            }
        }
    ],
    "label": "md5",
    "sbg:sbgMaintained": false,
    "sbg:latestRevision": 4
}