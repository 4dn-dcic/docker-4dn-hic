{
    "baseCommand": [
        "run-add-hicnormvector-to-mcool.sh"
    ],
    "inputs": [
        {
            "id": "#input_hic",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "sbg:fileTypes": ".HIC",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#input_mcool",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            },
            "sbg:fileTypes": ".MCOOL",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#outdir",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 3
            },
            "sbg:toolDefaultValue": ".",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
    "sbg:sbgMaintained": false,
    "label": "add_hic_normvector_to_mcool",
    "sbg:latestRevision": 5,
    "sbg:project": "4dn-dcic/dev",
    "arguments": [],
    "stdout": "",
    "successCodes": [],
    "class": "CommandLineTool",
    "sbg:modifiedOn": 1502899564,
    "stdin": "",
    "sbg:createdOn": 1499653917,
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
    "description": "",
    "sbg:projectName": "Dev",
    "cwlVersion": "sbg:draft-2",
    "sbg:job": {
        "inputs": {
            "input_mcool": {
                "path": "/path/to/input_mcool.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
            },
            "outdir": "outdir-string-value",
            "input_hic": {
                "path": "/path/to/input_hic.ext",
                "class": "File",
                "size": 0,
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
            "class": "sbg:MemRequirement",
            "value": 8000
        },
        {
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/4dn-hic:v33"
        },
        {
            "class": "sbg:CPURequirement",
            "value": 4
        }
    ],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
    "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
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
    "temporaryFailCodes": [],
    "sbg:createdBy": "4dn-dcic",
    "sbg:image_url": null,
    "sbg:validationErrors": [],
    "sbg:revision": 5,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1499653917,
            "sbg:revision": 0,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1499654479,
            "sbg:revision": 1,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1499659501,
            "sbg:revision": 2,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1499701134,
            "sbg:revision": 3,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1502652131,
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1502899564,
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh."
        }
    ]
}