{
    "cwlVersion": "sbg:draft-2",
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
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/1/raw/",
    "requirements": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:latestRevision": 1,
    "arguments": [],
    "sbg:image_url": null,
    "hints": [
        {
            "value": 1,
            "class": "sbg:CPURequirement"
        },
        {
            "value": 1000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerImageId": "",
            "dockerPull": "duplexa/md5:v1",
            "class": "DockerRequirement"
        }
    ],
    "sbg:job": {
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        },
        "inputs": {
            "input_file": {
                "secondaryFiles": [],
                "path": "/path/to/input_file.ext",
                "class": "File",
                "size": 0
            }
        }
    },
    "baseCommand": [
        "run.sh"
    ],
    "sbg:createdOn": 1480978938,
    "sbg:modifiedOn": 1480978992,
    "sbg:modifiedBy": "duplexa",
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
                "sbg:cmdInclude": true,
                "position": 1
            }
        }
    ],
    "successCodes": [],
    "stdin": "",
    "sbg:validationErrors": [],
    "sbg:id": "4dn-dcic/dev/md5/1",
    "sbg:project": "4dn-dcic/dev",
    "temporaryFailCodes": [],
    "sbg:cmdPreview": "run.sh",
    "sbg:createdBy": "duplexa",
    "class": "CommandLineTool",
    "label": "md5",
    "description": "",
    "stdout": "",
    "sbg:revision": 1,
    "sbg:sbgMaintained": false
}