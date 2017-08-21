{
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
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "stdin": "",
    "requirements": [
        {
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "class": "CommandLineTool",
    "arguments": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:revision": 6,
    "sbg:createdBy": "4dn-dcic",
    "sbg:image_url": null,
    "sbg:job": {
        "inputs": {
            "nres": 7,
            "input_mcool": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_mcool.ext"
            },
            "outdir": "outdir-string-value",
            "output_prefix": "output_prefix-string-value"
        },
        "allocatedResources": {
            "cpu": 8,
            "mem": 8000
        }
    },
    "sbg:latestRevision": 6,
    "label": "extract-mcool-normvector-for-juicebox",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:createdOn": 1499701567,
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "outputs": [
        {
            "sbg:fileTypes": "GZ",
            "outputBinding": {
                "glob": "'*.juicerformat.gz'"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#output_normvector"
        }
    ],
    "successCodes": [],
    "sbg:revisionNotes": "removed valuefrom from output_prefix",
    "sbg:projectName": "Dev",
    "stdout": "",
    "sbg:validationErrors": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1502900127,
    "baseCommand": [
        "run-mcool2hic.sh"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6/raw/",
    "inputs": [
        {
            "sbg:fileTypes": "MCOOL",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#input_mcool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:toolDefaultValue": ".",
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#outdir",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#output_prefix",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:toolDefaultValue": "13",
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#nres",
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null
        }
    ],
    "sbg:cmdPreview": "run-mcool2hic.sh",
    "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
    "temporaryFailCodes": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499701567,
            "sbg:revision": 0,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499701784,
            "sbg:revision": 1,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499703640,
            "sbg:revision": 2,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499704766,
            "sbg:revision": 3,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499705191,
            "sbg:revision": 4,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502899948,
            "sbg:revision": 5,
            "sbg:revisionNotes": "docker v33 and removed valuefrom for outdir (default is enough)"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502900127,
            "sbg:revision": 6,
            "sbg:revisionNotes": "removed valuefrom from output_prefix"
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "4dn-dcic"
    ]
}