{
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:cmdPreview": "run-mcool2hic.sh",
    "sbg:latestRevision": 6,
    "stdin": "",
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionNotes": "removed valuefrom from output_prefix",
    "class": "CommandLineTool",
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "hints": [
        {
            "class": "sbg:CPURequirement",
            "value": 8
        },
        {
            "class": "sbg:MemRequirement",
            "value": 8000
        },
        {
            "dockerPull": "duplexa/4dn-hic:v33",
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "description": "",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:createdOn": 1499701567,
    "successCodes": [],
    "arguments": [],
    "sbg:projectName": "Dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6/raw/",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 8,
            "mem": 8000
        },
        "inputs": {
            "input_mcool": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_mcool.ext",
                "size": 0
            },
            "output_prefix": "output_prefix-string-value",
            "outdir": "outdir-string-value",
            "nres": 7
        }
    },
    "sbg:sbgMaintained": false,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1499701567,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1499701784,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1499703640,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1499704766,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1499705191,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1502899948,
            "sbg:revisionNotes": "docker v33 and removed valuefrom for outdir (default is enough)"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1502900127,
            "sbg:revisionNotes": "removed valuefrom from output_prefix"
        }
    ],
    "sbg:image_url": null,
    "baseCommand": [
        "run-mcool2hic.sh"
    ],
    "temporaryFailCodes": [],
    "sbg:validationErrors": [],
    "sbg:modifiedOn": 1502900127,
    "label": "extract-mcool-normvector-for-juicebox",
    "sbg:project": "4dn-dcic/dev",
    "stdout": "",
    "sbg:revision": 6,
    "sbg:createdBy": "4dn-dcic",
    "inputs": [
        {
            "sbg:fileTypes": "MCOOL",
            "id": "#input_mcool",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:toolDefaultValue": ".",
            "id": "#outdir",
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:toolDefaultValue": "out",
            "id": "#output_prefix",
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:toolDefaultValue": "13",
            "id": "#nres",
            "sbg:stageInput": null,
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
    "outputs": [
        {
            "sbg:fileTypes": "GZ",
            "outputBinding": {
                "glob": "'*.juicerformat.gz'"
            },
            "id": "#output_normvector",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ]
}