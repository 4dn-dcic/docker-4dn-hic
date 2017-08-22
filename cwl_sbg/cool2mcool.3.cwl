{
    "sbg:modifiedOn": 1502996615,
    "requirements": [],
    "sbg:sbgMaintained": false,
    "sbg:projectName": "Dev",
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
        },
        {
            "sbg:modifiedOn": 1503004463,
            "sbg:revision": 4,
            "sbg:revisionNotes": "output glob back to *.multires.cool",
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "outputs": [
        {
            "sbg:fileTypes": ".COOL",
            "id": "#output_mcool",
            "outputBinding": {
                "glob": "*.multires.cool *.mcool"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:createdOn": 1496166920,
    "sbg:project": "4dn-dcic/dev",
    "inputs": [
        {
            "sbg:fileTypes": ".COOL",
            "id": "#input_cool",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "4",
            "id": "#ncores",
            "inputBinding": {
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "int"
            ]
        },
        {
            "sbg:toolDefaultValue": "out",
            "id": "#outprefix",
            "inputBinding": {
                "separate": true,
                "position": 3,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "temporaryFailCodes": [],
    "sbg:cmdPreview": "run-cool2multirescool.sh",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:id": "4dn-dcic/dev/cool2mcool/3",
    "sbg:createdBy": "4dn-dcic",
    "label": "cool2mcool",
    "sbg:revision": 3,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/3/raw/",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
    "sbg:latestRevision": 4,
    "arguments": [],
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
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v17"
        }
    ],
    "baseCommand": [
        "run-cool2multirescool.sh"
    ],
    "stdin": "",
    "class": "CommandLineTool",
    "stdout": "",
    "sbg:validationErrors": [],
    "sbg:image_url": null,
    "successCodes": [],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "ncores": 9,
            "outprefix": "outprefix-string-value",
            "input_cool": {
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_cool.ext",
                "size": 0
            }
        }
    },
    "description": ""
}