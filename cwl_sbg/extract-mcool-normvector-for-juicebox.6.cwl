{
    "temporaryFailCodes": [],
    "sbg:createdBy": "4dn-dcic",
    "stdout": "",
    "sbg:revisionNotes": "removed valuefrom from output_prefix",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6/raw/",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:modifiedOn": 1502900127,
    "sbg:job": {
        "inputs": {
            "outdir": "outdir-string-value",
            "output_prefix": "output_prefix-string-value",
            "input_mcool": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_mcool.ext",
                "class": "File"
            },
            "nres": 7
        },
        "allocatedResources": {
            "cpu": 8,
            "mem": 8000
        }
    },
    "outputs": [
        {
            "id": "#output_normvector",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "GZ",
            "outputBinding": {
                "glob": "'*.juicerformat.gz'"
            }
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499701567,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499701784,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499703640,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499704766,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499705191,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502899948,
            "sbg:revisionNotes": "docker v33 and removed valuefrom for outdir (default is enough)"
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502900127,
            "sbg:revisionNotes": "removed valuefrom from output_prefix"
        }
    ],
    "label": "extract-mcool-normvector-for-juicebox",
    "class": "CommandLineTool",
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ]
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdin": "",
    "description": "",
    "sbg:contributors": [
        "4dn-dcic"
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
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:revision": 6,
    "inputs": [
        {
            "id": "#input_mcool",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": "MCOOL"
        },
        {
            "id": "#outdir",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 2,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:toolDefaultValue": "."
        },
        {
            "id": "#output_prefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 3,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:toolDefaultValue": "out"
        },
        {
            "id": "#nres",
            "sbg:stageInput": null,
            "inputBinding": {
                "position": 4,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:toolDefaultValue": "13",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "arguments": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:validationErrors": [],
    "sbg:projectName": "Dev",
    "successCodes": [],
    "baseCommand": [
        "run-mcool2hic.sh"
    ],
    "sbg:image_url": null,
    "sbg:latestRevision": 6,
    "sbg:cmdPreview": "run-mcool2hic.sh",
    "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
    "sbg:createdOn": 1499701567
}