{
    "sbg:image_url": null,
    "cwlVersion": "sbg:draft-2",
    "sbg:revision": 3,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/3/raw/",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdBy": "4dn-dcic",
    "temporaryFailCodes": [],
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
    "sbg:latestRevision": 4,
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
    "description": "",
    "sbg:cmdPreview": "run-cool2multirescool.sh",
    "class": "CommandLineTool",
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedOn": 1502996615,
    "outputs": [
        {
            "sbg:fileTypes": ".COOL",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.multires.cool *.mcool"
            },
            "id": "#output_mcool"
        }
    ],
    "sbg:job": {
        "inputs": {
            "input_cool": {
                "secondaryFiles": [],
                "size": 0,
                "class": "File",
                "path": "/path/to/input_cool.ext"
            },
            "ncores": 9,
            "outprefix": "outprefix-string-value"
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        }
    },
    "stdin": "",
    "stdout": "",
    "arguments": [],
    "inputs": [
        {
            "sbg:fileTypes": ".COOL",
            "type": [
                "null",
                "File"
            ],
            "id": "#input_cool",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            }
        },
        {
            "sbg:toolDefaultValue": "4",
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "sbg:stageInput": null,
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            }
        },
        {
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix",
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            }
        }
    ],
    "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
    "successCodes": [],
    "label": "cool2mcool",
    "sbg:projectName": "Dev",
    "requirements": [],
    "baseCommand": [
        "run-cool2multirescool.sh"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1496166920,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1496167248,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedOn": 1496181675,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1502996615,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "output glob back to *.multires.cool",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1503004463,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:id": "4dn-dcic/dev/cool2mcool/3",
    "sbg:createdOn": 1496166920,
    "sbg:contributors": [
        "4dn-dcic"
    ]
}