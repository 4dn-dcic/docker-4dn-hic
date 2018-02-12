{
    "sbg:project": "4dn-dcic/dev",
    "label": "extract-mcool-normvector-for-juicebox",
    "sbg:validationErrors": [],
    "description": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6/raw/",
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "MCOOL",
            "id": "#input_mcool"
        },
        {
            "sbg:toolDefaultValue": ".",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "id": "#outdir"
        },
        {
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "id": "#output_prefix"
        },
        {
            "sbg:toolDefaultValue": "13",
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 4
            },
            "id": "#nres"
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:latestRevision": 6,
    "sbg:revision": 6,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "arguments": [],
    "successCodes": [],
    "sbg:sbgMaintained": false,
    "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/6",
    "temporaryFailCodes": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "GZ",
            "outputBinding": {
                "glob": "'*.juicerformat.gz'"
            },
            "id": "#output_normvector"
        }
    ],
    "stdin": "",
    "sbg:revisionNotes": "removed valuefrom from output_prefix",
    "sbg:image_url": null,
    "class": "CommandLineTool",
    "baseCommand": [
        "run-mcool2hic.sh"
    ],
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
            "dockerPull": "duplexa/4dn-hic:v33",
            "class": "DockerRequirement"
        }
    ],
    "sbg:createdBy": "4dn-dcic",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:cmdPreview": "run-mcool2hic.sh",
    "stdout": "",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499701567,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499701784,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499703640,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499704766,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499705191,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4
        },
        {
            "sbg:revisionNotes": "docker v33 and removed valuefrom for outdir (default is enough)",
            "sbg:modifiedOn": 1502899948,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5
        },
        {
            "sbg:revisionNotes": "removed valuefrom from output_prefix",
            "sbg:modifiedOn": 1502900127,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6
        }
    ],
    "sbg:modifiedOn": 1502900127,
    "cwlVersion": "sbg:draft-2",
    "sbg:createdOn": 1499701567,
    "sbg:job": {
        "inputs": {
            "output_prefix": "output_prefix-string-value",
            "input_mcool": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_mcool.ext",
                "class": "File"
            },
            "outdir": "outdir-string-value",
            "nres": 7
        },
        "allocatedResources": {
            "cpu": 8,
            "mem": 8000
        }
    }
}