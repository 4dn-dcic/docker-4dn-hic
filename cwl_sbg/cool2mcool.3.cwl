{
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
            "sbg:fileTypes": ".COOL",
            "id": "#input_cool"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "id": "#ncores",
            "sbg:toolDefaultValue": "4"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 3,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#outprefix",
            "sbg:toolDefaultValue": "out"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "baseCommand": [
        "run-cool2multirescool.sh"
    ],
    "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
    "sbg:job": {
        "inputs": {
            "ncores": 9,
            "input_cool": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_cool.ext",
                "class": "File"
            },
            "outprefix": "outprefix-string-value"
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        }
    },
    "sbg:project": "4dn-dcic/dev",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "label": "cool2mcool",
    "stdin": "",
    "sbg:image_url": null,
    "temporaryFailCodes": [],
    "sbg:projectName": "Dev",
    "sbg:createdOn": 1496166920,
    "arguments": [],
    "sbg:cmdPreview": "run-cool2multirescool.sh",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:latestRevision": 4,
    "sbg:id": "4dn-dcic/dev/cool2mcool/3",
    "successCodes": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "requirements": [],
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.multires.cool *.mcool"
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": ".COOL",
            "id": "#output_mcool"
        }
    ],
    "sbg:createdBy": "4dn-dcic",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/3/raw/",
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
            "dockerPull": "duplexa/4dn-hic:v17",
            "class": "DockerRequirement"
        }
    ],
    "sbg:modifiedOn": 1502996615,
    "sbg:revision": 3,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496166920
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496167248
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496181675
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
            "sbg:modifiedOn": 1502996615
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4,
            "sbg:revisionNotes": "output glob back to *.multires.cool",
            "sbg:modifiedOn": 1503004463
        }
    ],
    "stdout": "",
    "class": "CommandLineTool"
}