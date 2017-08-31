{
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "successCodes": [],
    "stdout": "",
    "cwlVersion": "sbg:draft-2",
    "requirements": [],
    "sbg:projectName": "Dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "id": "#input_file"
        }
    ],
    "arguments": [],
    "class": "CommandLineTool",
    "stdin": "",
    "description": "",
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
            "dockerPull": "duplexa/md5:v1",
            "dockerImageId": ""
        }
    ],
    "sbg:revisionNotes": "removed quotes in output glob",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1480978938
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1480978992
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1494438192
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1494438281
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1494536730
        },
        {
            "sbg:revisionNotes": "removed quotes in output glob",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1503348580
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:revision": 5,
    "sbg:validationErrors": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": "report"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#report"
        }
    ],
    "sbg:modifiedOn": 1503348580,
    "sbg:latestRevision": 5,
    "sbg:cmdPreview": "run.sh",
    "sbg:createdBy": "duplexa",
    "baseCommand": [
        "run.sh"
    ],
    "label": "md5",
    "sbg:sbgMaintained": false,
    "sbg:id": "4dn-dcic/dev/md5/5",
    "sbg:image_url": null,
    "sbg:createdOn": 1480978938,
    "temporaryFailCodes": [],
    "sbg:job": {
        "allocatedResources": {
            "mem": 500,
            "cpu": 1
        },
        "inputs": {
            "input_file": {
                "secondaryFiles": [],
                "class": "File",
                "size": 0,
                "path": "/path/to/input_file.ext"
            }
        }
    },
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/5/raw/"
}