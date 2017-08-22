{
    "sbg:sbgMaintained": false,
    "arguments": [],
    "label": "extract-mcool-normvector-for-juicebox",
    "sbg:job": {
        "allocatedResources": {
            "mem": 8000,
            "cpu": 8
        },
        "inputs": {
            "nres": 7,
            "output_prefix": "output_prefix-string-value",
            "input_mcool": {
                "class": "File",
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_mcool.ext"
            },
            "outdir": "outdir-string-value"
        }
    },
    "stdout": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6/raw/",
    "sbg:image_url": null,
    "baseCommand": [
        "run-mcool2hic.sh"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "description": "",
    "sbg:createdBy": "4dn-dcic",
    "class": "CommandLineTool",
    "sbg:modifiedOn": 1502900127,
    "sbg:projectName": "Dev",
    "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
    "outputs": [
        {
            "id": "#output_normvector",
            "sbg:fileTypes": "GZ",
            "outputBinding": {
                "glob": "'*.juicerformat.gz'"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:createdOn": 1499701567,
    "sbg:revisionNotes": "removed valuefrom from output_prefix",
    "cwlVersion": "sbg:draft-2",
    "stdin": "",
    "inputs": [
        {
            "id": "#input_mcool",
            "sbg:fileTypes": "MCOOL",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#outdir",
            "sbg:toolDefaultValue": ".",
            "inputBinding": {
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#output_prefix",
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "separate": true,
                "position": 3,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#nres",
            "sbg:toolDefaultValue": "13",
            "sbg:stageInput": null,
            "inputBinding": {
                "separate": true,
                "position": 4,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "int"
            ]
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
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/4dn-hic:v33"
        }
    ],
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "rabix/js-engine"
                }
            ]
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499701567
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499701784
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499703640
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499704766
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499705191
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "docker v33 and removed valuefrom for outdir (default is enough)",
            "sbg:modifiedOn": 1502899948
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed valuefrom from output_prefix",
            "sbg:modifiedOn": 1502900127
        }
    ],
    "successCodes": [],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:cmdPreview": "run-mcool2hic.sh",
    "sbg:project": "4dn-dcic/dev",
    "sbg:latestRevision": 6,
    "sbg:validationErrors": [],
    "sbg:revision": 6,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "temporaryFailCodes": []
}