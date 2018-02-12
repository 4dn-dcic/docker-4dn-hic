{
    "sbg:modifiedOn": 1502899564,
    "label": "add_hic_normvector_to_mcool",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/add-hic-normvector-to-mcool/5/raw/",
    "temporaryFailCodes": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1499653917,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1499654479,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1499659501,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1499701134,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1502652131,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1502899564,
            "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
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
    "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
    "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
    "sbg:projectName": "Dev",
    "sbg:createdBy": "4dn-dcic",
    "description": "",
    "sbg:job": {
        "inputs": {
            "input_mcool": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_mcool.ext",
                "class": "File"
            },
            "outdir": "outdir-string-value",
            "input_hic": {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_hic.ext",
                "class": "File"
            }
        },
        "allocatedResources": {
            "cpu": 4,
            "mem": 8000
        }
    },
    "baseCommand": [
        "run-add-hicnormvector-to-mcool.sh"
    ],
    "hints": [
        {
            "value": 8000,
            "class": "sbg:MemRequirement"
        },
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33",
            "dockerImageId": ""
        },
        {
            "value": 4,
            "class": "sbg:CPURequirement"
        }
    ],
    "class": "CommandLineTool",
    "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
    "inputs": [
        {
            "sbg:fileTypes": ".HIC",
            "type": [
                "null",
                "File"
            ],
            "id": "#input_hic",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            }
        },
        {
            "sbg:fileTypes": ".MCOOL",
            "type": [
                "null",
                "File"
            ],
            "id": "#input_mcool",
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            }
        },
        {
            "sbg:toolDefaultValue": ".",
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#outdir",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "arguments": [],
    "sbg:latestRevision": 5,
    "sbg:createdOn": 1499653917,
    "sbg:project": "4dn-dcic/dev",
    "sbg:image_url": null,
    "sbg:validationErrors": [],
    "stdin": "",
    "stdout": "",
    "sbg:sbgMaintained": false,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "cwlVersion": "sbg:draft-2",
    "successCodes": [],
    "outputs": [
        {
            "outputBinding": {
                "glob": "$job.inputs.outdir + '*.mcool'"
            },
            "id": "#output_mcool",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:revision": 5,
    "sbg:modifiedBy": "4dn-dcic"
}