{
    "sbg:cmdPreview": "run.sh",
    "cwlVersion": "sbg:draft-2",
    "stdout": "",
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "sbg:revision": 5,
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
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "baseCommand": [
        "run.sh"
    ],
    "arguments": [],
    "sbg:id": "4dn-dcic/dev/md5/5",
    "sbg:image_url": null,
    "sbg:revisionNotes": "removed quotes in output glob",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "temporaryFailCodes": [],
    "sbg:latestRevision": 5,
    "sbg:modifiedOn": 1503348580,
    "sbg:job": {
        "allocatedResources": {
            "mem": 500,
            "cpu": 1
        },
        "inputs": {
            "input_file": {
                "class": "File",
                "path": "/path/to/input_file.ext",
                "size": 0,
                "secondaryFiles": []
            }
        }
    },
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
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_file"
        }
    ],
    "sbg:validationErrors": [],
    "label": "md5",
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
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/md5/5/raw/",
    "successCodes": [],
    "description": "",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:createdBy": "duplexa",
    "class": "CommandLineTool",
    "requirements": [],
    "sbg:sbgMaintained": false,
    "stdin": "",
    "sbg:createdOn": 1480978938
}