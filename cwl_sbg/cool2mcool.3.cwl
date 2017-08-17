{
    "description": "",
    "sbg:revision": 3,
    "sbg:image_url": null,
    "arguments": [],
    "inputs": [
        {
            "id": "#input_cool",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": ".COOL",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            }
        },
        {
            "sbg:toolDefaultValue": "4",
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "inputBinding": {
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true
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
                "separate": true,
                "position": 3,
                "sbg:cmdInclude": true
            }
        }
    ],
    "sbg:job": {
        "inputs": {
            "ncores": 9,
            "input_cool": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_cool.ext"
            },
            "outprefix": "outprefix-string-value"
        },
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        }
    },
    "stdin": "",
    "outputs": [
        {
            "id": "#output_mcool",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": ".COOL",
            "outputBinding": {
                "glob": "*.multires.cool *.mcool"
            }
        }
    ],
    "baseCommand": [
        "run-cool2multirescool.sh"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "requirements": [],
    "successCodes": [],
    "label": "cool2mcool",
    "sbg:sbgMaintained": false,
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
    "sbg:revisionNotes": "output both *.multires.cool and *.mcool",
    "sbg:project": "4dn-dcic/dev",
    "class": "CommandLineTool",
    "sbg:id": "4dn-dcic/dev/cool2mcool/3",
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1502996615,
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:latestRevision": 3,
    "sbg:cmdPreview": "run-cool2multirescool.sh",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1496166920,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1496167248,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1496181675,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1502996615,
            "sbg:revisionNotes": "output both *.multires.cool and *.mcool"
        }
    ],
    "stdout": "",
    "temporaryFailCodes": [],
    "sbg:modifiedBy": "4dn-dcic",
    "cwlVersion": "sbg:draft-2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cool2mcool/3/raw/",
    "sbg:validationErrors": [],
    "sbg:createdOn": 1496166920,
    "sbg:createdBy": "4dn-dcic"
}