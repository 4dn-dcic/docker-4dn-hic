{
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "temporaryFailCodes": [],
    "sbg:validationErrors": [],
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        }
    ],
    "successCodes": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/",
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
    "label": "md5",
    "sbg:image_url": null,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480978938,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480978992,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1494438192,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1494438281,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1494536730,
            "sbg:revision": 4
        }
    ],
    "sbg:latestRevision": 4,
    "sbg:project": "4dn-dcic/dev",
    "sbg:id": "4dn-dcic/dev/md5/4",
    "sbg:createdOn": 1480978938,
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        },
        "inputs": {
            "input_file": {
                "path": "/path/to/input_file.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            }
        }
    },
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
    "sbg:modifiedBy": "duplexa",
    "sbg:projectName": "Dev",
    "sbg:revision": 4,
    "stdin": "",
    "requirements": [],
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1494536730,
    "arguments": [],
    "class": "CommandLineTool",
    "sbg:cmdPreview": "run.sh",
    "sbg:createdBy": "duplexa",
    "stdout": "",
    "cwlVersion": "sbg:draft-2",
    "sbg:contributors": [
        "duplexa"
    ],
    "description": ""
}