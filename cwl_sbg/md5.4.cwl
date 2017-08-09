{
    "temporaryFailCodes": [],
    "label": "md5",
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480978938,
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480978992,
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494438192,
            "sbg:revision": 2
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494438281,
            "sbg:revision": 3
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494536730,
            "sbg:revision": 4
        }
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
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/md5:v1"
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:latestRevision": 4,
    "successCodes": [],
    "stdout": "",
    "arguments": [],
    "sbg:revision": 4,
    "sbg:id": "4dn-dcic/dev/md5/4",
    "sbg:modifiedOn": 1494536730,
    "sbg:project": "4dn-dcic/dev",
    "requirements": [],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        },
        "inputs": {
            "input_file": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_file.ext"
            }
        }
    },
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/",
    "baseCommand": [
        "run.sh"
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
    "sbg:projectName": "Dev",
    "stdin": "",
    "sbg:createdOn": 1480978938,
    "class": "CommandLineTool",
    "sbg:image_url": null,
    "sbg:createdBy": "duplexa",
    "description": "",
    "sbg:sbgMaintained": false,
    "sbg:cmdPreview": "run.sh",
    "sbg:modifiedBy": "duplexa",
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
    "sbg:validationErrors": []
}