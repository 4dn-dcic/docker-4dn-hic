{
    "sbg:job": {
        "inputs": {
            "outdir": "outdir-string-value",
            "input_hic": {
                "path": "/path/to/input_hic.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            },
            "input_mcool": {
                "path": "/path/to/input_mcool.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            }
        },
        "allocatedResources": {
            "cpu": 4,
            "mem": 8000
        }
    },
    "sbg:createdOn": 1499653917,
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
    "sbg:validationErrors": [],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "stdout": "",
    "sbg:latestRevision": 5,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "temporaryFailCodes": [],
    "baseCommand": [
        "run-add-hicnormvector-to-mcool.sh"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:projectName": "Dev",
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1502899564,
    "label": "add_hic_normvector_to_mcool",
    "class": "CommandLineTool",
    "sbg:modifiedBy": "4dn-dcic",
    "description": "",
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
    "sbg:image_url": null,
    "sbg:revision": 5,
    "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
    "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
    "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
    "sbg:createdBy": "4dn-dcic",
    "arguments": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499653917
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499654479
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499659501
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499701134
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1502652131
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
            "sbg:modifiedOn": 1502899564
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/add-hic-normvector-to-mcool/5/raw/",
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "id": "#input_hic",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": ".HIC"
        },
        {
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "id": "#input_mcool",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": ".MCOOL"
        },
        {
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "sbg:toolDefaultValue": ".",
            "id": "#outdir",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "stdin": "",
    "hints": [
        {
            "value": 8000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerPull": "duplexa/4dn-hic:v33",
            "dockerImageId": "",
            "class": "DockerRequirement"
        },
        {
            "value": 4,
            "class": "sbg:CPURequirement"
        }
    ]
}