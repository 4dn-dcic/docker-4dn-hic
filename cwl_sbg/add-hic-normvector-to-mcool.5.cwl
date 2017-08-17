{
    "sbg:projectName": "Dev",
    "sbg:sbgMaintained": false,
    "sbg:image_url": null,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:createdOn": 1499653917,
    "description": "",
    "arguments": [],
    "stdout": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdBy": "4dn-dcic",
    "sbg:modifiedOn": 1502899564,
    "label": "add_hic_normvector_to_mcool",
    "baseCommand": [
        "run-add-hicnormvector-to-mcool.sh"
    ],
    "sbg:job": {
        "inputs": {
            "input_hic": {
                "size": 0,
                "path": "/path/to/input_hic.ext",
                "class": "File",
                "secondaryFiles": []
            },
            "outdir": "outdir-string-value",
            "input_mcool": {
                "size": 0,
                "path": "/path/to/input_mcool.ext",
                "class": "File",
                "secondaryFiles": []
            }
        },
        "allocatedResources": {
            "mem": 8000,
            "cpu": 4
        }
    },
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/add-hic-normvector-to-mcool/5/raw/",
    "hints": [
        {
            "value": 8000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerImageId": "",
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33"
        },
        {
            "value": 4,
            "class": "sbg:CPURequirement"
        }
    ],
    "sbg:validationErrors": [],
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
    "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
    "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
    "class": "CommandLineTool",
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
    "cwlVersion": "sbg:draft-2",
    "sbg:revision": 5,
    "temporaryFailCodes": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1499653917,
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1499654479,
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1499659501,
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1499701134,
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1502652131,
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1502899564,
            "sbg:revision": 5,
            "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "stdin": "",
    "successCodes": [],
    "inputs": [
        {
            "id": "#input_hic",
            "sbg:fileTypes": ".HIC",
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#input_mcool",
            "sbg:fileTypes": ".MCOOL",
            "inputBinding": {
                "position": 2,
                "separate": true,
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
                "position": 3,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "sbg:latestRevision": 5,
    "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
    "sbg:appVersion": [
        "sbg:draft-2"
    ]
}