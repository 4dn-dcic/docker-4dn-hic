{
    "sbg:modifiedBy": "4dn-dcic",
    "stdin": "",
    "stdout": "",
    "sbg:projectName": "Dev",
    "cwlVersion": "sbg:draft-2",
    "sbg:revision": 3,
    "successCodes": [],
    "description": "",
    "sbg:image_url": null,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/3/raw/",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "class": "CommandLineTool",
    "sbg:modifiedOn": 1502996615,
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
            "dockerPull": "duplexa/4dn-hic:v17",
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "inputs": [
        {
            "id": "#input_cool",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "sbg:fileTypes": ".COOL"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "sbg:toolDefaultValue": "4",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            },
            "sbg:stageInput": null
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix",
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 3
            }
        }
    ],
    "sbg:cmdPreview": "run-cool2multirescool.sh",
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
    "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
    "sbg:createdOn": 1496166920,
    "label": "cool2mcool",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:latestRevision": 4,
    "baseCommand": [
        "run-cool2multirescool.sh"
    ],
    "sbg:id": "4dn-dcic/dev/cool2mcool/3",
    "sbg:project": "4dn-dcic/dev",
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
        },
        {
            "sbg:modifiedOn": 1502996615,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1503004463,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "output glob back to *.multires.cool",
            "sbg:revision": 4
        }
    ],
    "sbg:job": {
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        },
        "inputs": {
            "ncores": 9,
            "input_cool": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_cool.ext",
                "class": "File"
            },
            "outprefix": "outprefix-string-value"
        }
    },
    "requirements": [],
    "arguments": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.multires.cool *.mcool"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#output_mcool",
            "sbg:fileTypes": ".COOL"
        }
    ],
    "temporaryFailCodes": [],
    "sbg:createdBy": "4dn-dcic"
}