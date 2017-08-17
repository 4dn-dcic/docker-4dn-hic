{
    "sbg:sbgMaintained": false,
    "label": "extract-mcool-normvector-for-juicebox",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499701567,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499701784,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499703640,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499704766,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499705191,
            "sbg:revision": 4
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "docker v33 and removed valuefrom for outdir (default is enough)",
            "sbg:modifiedOn": 1502899948,
            "sbg:revision": 5
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed valuefrom from output_prefix",
            "sbg:modifiedOn": 1502900127,
            "sbg:revision": 6
        }
    ],
    "sbg:modifiedOn": 1502900127,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6/raw/",
    "sbg:project": "4dn-dcic/dev",
    "sbg:revision": 6,
    "sbg:cmdPreview": "run-mcool2hic.sh",
    "stdout": "",
    "sbg:latestRevision": 6,
    "temporaryFailCodes": [],
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ],
            "id": "#cwl-js-engine"
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "class": "CommandLineTool",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "'*.juicerformat.gz'"
            },
            "sbg:fileTypes": "GZ",
            "id": "#output_normvector",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "description": "",
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
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:validationErrors": [],
    "sbg:job": {
        "allocatedResources": {
            "mem": 8000,
            "cpu": 8
        },
        "inputs": {
            "output_prefix": "output_prefix-string-value",
            "input_mcool": {
                "class": "File",
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_mcool.ext"
            },
            "outdir": "outdir-string-value",
            "nres": 7
        }
    },
    "stdin": "",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
    "sbg:createdBy": "4dn-dcic",
    "successCodes": [],
    "arguments": [],
    "baseCommand": [
        "run-mcool2hic.sh"
    ],
    "sbg:revisionNotes": "removed valuefrom from output_prefix",
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
    "sbg:createdOn": 1499701567,
    "sbg:image_url": null
}