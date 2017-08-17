{
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "stdout": "",
    "sbg:job": {
        "inputs": {
            "output_prefix": "output_prefix-string-value",
            "nres": 7,
            "outdir": "outdir-string-value",
            "input_mcool": {
                "class": "File",
                "size": 0,
                "path": "/path/to/input_mcool.ext",
                "secondaryFiles": []
            }
        },
        "allocatedResources": {
            "cpu": 8,
            "mem": 8000
        }
    },
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:sbgMaintained": false,
    "sbg:createdBy": "4dn-dcic",
    "sbg:modifiedOn": 1502900127,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:project": "4dn-dcic/dev",
    "stdin": "",
    "sbg:revision": 6,
    "baseCommand": [
        "run-mcool2hic.sh"
    ],
    "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
    "temporaryFailCodes": [],
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
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "'*.juicerformat.gz'"
            },
            "id": "#output_normvector",
            "sbg:fileTypes": "GZ"
        }
    ],
    "sbg:revisionNotes": "removed valuefrom from output_prefix",
    "cwlVersion": "sbg:draft-2",
    "sbg:projectName": "Dev",
    "sbg:createdOn": 1499701567,
    "label": "extract-mcool-normvector-for-juicebox",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6/raw/",
    "arguments": [],
    "sbg:image_url": null,
    "class": "CommandLineTool",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "MCOOL",
            "id": "#input_mcool",
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": ".",
            "id": "#outdir",
            "inputBinding": {
                "position": 2,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out",
            "id": "#output_prefix",
            "inputBinding": {
                "position": 3,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "13",
            "id": "#nres",
            "sbg:stageInput": null,
            "inputBinding": {
                "position": 4,
                "separate": true,
                "sbg:cmdInclude": true
            }
        }
    ],
    "sbg:validationErrors": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1499701567,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1499701784,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedOn": 1499703640,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedOn": 1499704766,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedOn": 1499705191,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "docker v33 and removed valuefrom for outdir (default is enough)",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1502899948,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "removed valuefrom from output_prefix",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1502900127,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "description": "",
    "sbg:cmdPreview": "run-mcool2hic.sh",
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
    "successCodes": [],
    "sbg:latestRevision": 6
}