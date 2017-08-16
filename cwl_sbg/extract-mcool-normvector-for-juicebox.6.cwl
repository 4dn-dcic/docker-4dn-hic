{
    "sbg:image_url": null,
    "arguments": [],
    "sbg:sbgMaintained": false,
    "sbg:project": "4dn-dcic/dev",
    "sbg:job": {
        "inputs": {
            "outdir": "outdir-string-value",
            "nres": 7,
            "output_prefix": "output_prefix-string-value",
            "input_mcool": {
                "path": "/path/to/input_mcool.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            }
        },
        "allocatedResources": {
            "mem": 8000,
            "cpu": 8
        }
    },
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "stdout": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "baseCommand": [
        "run-mcool2hic.sh"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6/raw/",
    "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
    "sbg:modifiedOn": 1502900127,
    "sbg:revision": 6,
    "sbg:revisionNotes": "removed valuefrom from output_prefix",
    "outputs": [
        {
            "id": "#output_normvector",
            "outputBinding": {
                "glob": "'*.juicerformat.gz'"
            },
            "sbg:fileTypes": "GZ",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "CommandLineTool",
    "inputs": [
        {
            "id": "#input_mcool",
            "sbg:fileTypes": "MCOOL",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#outdir",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            },
            "sbg:toolDefaultValue": ".",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#output_prefix",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": true
            },
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#nres",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 4,
                "separate": true
            },
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "13",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "label": "extract-mcool-normvector-for-juicebox",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:createdBy": "4dn-dcic",
    "sbg:latestRevision": 6,
    "sbg:projectName": "Dev",
    "successCodes": [],
    "description": "",
    "sbg:validationErrors": [],
    "stdin": "",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1499701567,
            "sbg:revision": 0,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1499701784,
            "sbg:revision": 1,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1499703640,
            "sbg:revision": 2,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1499704766,
            "sbg:revision": 3,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1499705191,
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1502899948,
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "docker v33 and removed valuefrom for outdir (default is enough)"
        },
        {
            "sbg:modifiedOn": 1502900127,
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed valuefrom from output_prefix"
        }
    ],
    "temporaryFailCodes": [],
    "sbg:createdOn": 1499701567,
    "hints": [
        {
            "value": 8,
            "class": "sbg:CPURequirement"
        },
        {
            "value": 8000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerPull": "duplexa/4dn-hic:v33",
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:cmdPreview": "run-mcool2hic.sh"
}