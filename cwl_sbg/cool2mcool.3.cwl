{
    "sbg:validationErrors": [],
    "temporaryFailCodes": [],
    "sbg:sbgMaintained": false,
    "arguments": [],
    "sbg:revision": 3,
    "sbg:createdOn": 1496166920,
    "sbg:id": "4dn-dcic/dev/cool2mcool/3",
    "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1496166920
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1496167248
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1496181675
        },
        {
            "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1502996615
        },
        {
            "sbg:revisionNotes": "output glob back to *.multires.cool",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1503004463
        }
    ],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        },
        "inputs": {
            "ncores": 9,
            "outprefix": "outprefix-string-value",
            "input_cool": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_cool.ext",
                "size": 0
            }
        }
    },
    "stdout": "",
    "description": "",
    "sbg:image_url": null,
    "sbg:latestRevision": 4,
    "sbg:projectName": "Dev",
    "sbg:createdBy": "4dn-dcic",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:cmdPreview": "run-cool2multirescool.sh",
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
    "cwlVersion": "sbg:draft-2",
    "stdin": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/3/raw/",
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
            "dockerPull": "duplexa/4dn-hic:v17",
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "baseCommand": [
        "run-cool2multirescool.sh"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "inputs": [
        {
            "sbg:fileTypes": ".COOL",
            "type": [
                "null",
                "File"
            ],
            "id": "#input_cool",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "4",
            "sbg:stageInput": null,
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            },
            "id": "#ncores"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": true
            },
            "id": "#outprefix"
        }
    ],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "requirements": [],
    "class": "CommandLineTool",
    "label": "cool2mcool",
    "sbg:modifiedOn": 1502996615,
    "successCodes": []
}