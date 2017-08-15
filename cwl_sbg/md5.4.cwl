{
    "sbg:job": {
        "inputs": {
            "input_file": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_file.ext"
            }
        },
        "allocatedResources": {
            "mem": 500,
            "cpu": 1
        }
    },
    "sbg:createdBy": "duplexa",
    "class": "CommandLineTool",
    "description": "",
    "sbg:cmdPreview": "run.sh",
    "stdout": "",
    "cwlVersion": "sbg:draft-2",
    "temporaryFailCodes": [],
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "sbg:revision": 4,
    "sbg:modifiedOn": 1494536730,
    "sbg:modifiedBy": "duplexa",
    "stdin": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/4/raw/",
    "sbg:contributors": [
        "duplexa"
    ],
    "successCodes": [],
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
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
    "sbg:image_url": null,
    "sbg:latestRevision": 4,
    "label": "md5",
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
    "sbg:id": "4dn-dcic/dev/md5/4",
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
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480978938
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1480978992
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1494438192
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1494438281
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1494536730
        }
    ],
    "requirements": [],
    "sbg:createdOn": 1480978938,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "arguments": []
}