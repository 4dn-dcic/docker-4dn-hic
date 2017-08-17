{
    "sbg:sbgMaintained": false,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.multires.cool *.mcool"
            },
            "sbg:fileTypes": ".COOL",
            "id": "#output_mcool",
            "type": [
                "null",
                "File"
            ]
        }
    ],
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
    "sbg:project": "4dn-dcic/dev",
    "sbg:projectName": "Dev",
    "stdin": "",
    "cwlVersion": "sbg:draft-2",
    "baseCommand": [
        "run-cool2multirescool.sh"
    ],
    "requirements": [],
    "successCodes": [],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:cmdPreview": "run-cool2multirescool.sh",
    "sbg:job": {
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        },
        "inputs": {
            "input_cool": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_cool.ext",
                "size": 0
            },
            "ncores": 9,
            "outprefix": "outprefix-string-value"
        }
    },
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/3/raw/",
    "label": "cool2mcool",
    "description": "",
    "class": "CommandLineTool",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1496166920,
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1496167248,
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1496181675,
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1502996615,
            "sbg:revision": 3,
            "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": ".COOL",
            "id": "#input_cool",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#ncores",
            "sbg:toolDefaultValue": "4"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#outprefix",
            "sbg:toolDefaultValue": "out"
        }
    ],
    "temporaryFailCodes": [],
    "arguments": [],
    "sbg:id": "4dn-dcic/dev/cool2mcool/3",
    "sbg:latestRevision": 3,
    "sbg:createdOn": 1496166920,
    "stdout": "",
    "sbg:createdBy": "4dn-dcic",
    "sbg:validationErrors": [],
    "sbg:modifiedOn": 1502996615,
    "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
    "sbg:image_url": null,
    "sbg:revision": 3
}