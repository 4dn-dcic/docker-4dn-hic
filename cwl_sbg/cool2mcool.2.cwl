{
    "sbg:modifiedBy": "4dn-dcic",
    "successCodes": [],
    "sbg:cmdPreview": "run-cool2multirescool.sh",
    "label": "cool2mcool",
    "sbg:modifiedOn": 1496181675,
    "stdout": "",
    "baseCommand": [
        "run-cool2multirescool.sh"
    ],
    "sbg:createdBy": "4dn-dcic",
    "sbg:validationErrors": [],
    "class": "CommandLineTool",
    "requirements": [],
    "outputs": [
        {
            "id": "#output_mcool",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": ".COOL",
            "outputBinding": {
                "glob": "*.multires.cool"
            }
        }
    ],
    "sbg:latestRevision": 2,
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#input_cool",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": ".COOL"
        },
        {
            "sbg:stageInput": null,
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "4"
        },
        {
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out"
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:job": {
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        },
        "inputs": {
            "ncores": 9,
            "outprefix": "outprefix-string-value",
            "input_cool": {
                "class": "File",
                "size": 0,
                "path": "/path/to/input_cool.ext",
                "secondaryFiles": []
            }
        }
    },
    "cwlVersion": "sbg:draft-2",
    "stdin": "",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1496166920,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1496167248,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1496181675,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        }
    ],
    "sbg:image_url": null,
    "sbg:revision": 2,
    "temporaryFailCodes": [],
    "sbg:sbgMaintained": false,
    "sbg:id": "4dn-dcic/dev/cool2mcool/2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/2/raw/",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:createdOn": 1496166920,
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
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/4dn-hic:v17"
        }
    ],
    "arguments": [],
    "sbg:project": "4dn-dcic/dev",
    "description": "",
    "sbg:projectName": "Dev"
}