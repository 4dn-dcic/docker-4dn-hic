{
    "sbg:latestRevision": 5,
    "sbg:revisionNotes": "removed quotes in output glob",
    "description": "",
    "sbg:sbgMaintained": false,
    "baseCommand": [
        "run.sh"
    ],
    "sbg:revision": 5,
    "stdout": "",
    "sbg:cmdPreview": "run.sh",
    "outputs": [
        {
            "id": "#report",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "report"
            }
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/5/raw/",
    "cwlVersion": "sbg:draft-2",
    "successCodes": [],
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
            "mem": 500,
            "cpu": 1
        }
    },
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "stdin": "",
    "sbg:image_url": null,
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
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "arguments": [],
    "temporaryFailCodes": [],
    "sbg:id": "4dn-dcic/dev/md5/5",
    "sbg:projectName": "Dev",
    "requirements": [],
    "sbg:validationErrors": [],
    "inputs": [
        {
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            }
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "class": "CommandLineTool",
    "label": "md5",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:createdOn": 1480978938,
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480978938
        },
        {
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1480978992
        },
        {
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494438192
        },
        {
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494438281
        },
        {
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494536730
        },
        {
            "sbg:revision": 5,
            "sbg:revisionNotes": "removed quotes in output glob",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1503348580
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:modifiedOn": 1503348580,
    "sbg:appVersion": [
        "sbg:draft-2"
    ]
}