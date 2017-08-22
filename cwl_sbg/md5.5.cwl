{
    "successCodes": [],
    "stdin": "",
    "sbg:createdBy": "duplexa",
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:cmdPreview": "run.sh",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:job": {
        "inputs": {
            "input_file": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_file.ext",
                "class": "File"
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 500
        }
    },
    "arguments": [],
    "baseCommand": [
        "run.sh"
    ],
    "requirements": [],
    "sbg:revisionNotes": "removed quotes in output glob",
    "stdout": "",
    "class": "CommandLineTool",
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
    "sbg:latestRevision": 5,
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1480978938
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1480978992
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedOn": 1494438192
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedOn": 1494438281
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedOn": 1494536730
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed quotes in output glob",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1503348580
        }
    ],
    "sbg:projectName": "Dev",
    "description": "",
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
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "sbg:modifiedOn": 1503348580,
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "report"
            },
            "id": "#report"
        }
    ],
    "sbg:image_url": null,
    "label": "md5",
    "sbg:id": "4dn-dcic/dev/md5/5",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/5/raw/",
    "sbg:createdOn": 1480978938,
    "sbg:validationErrors": [],
    "temporaryFailCodes": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:revision": 5
}