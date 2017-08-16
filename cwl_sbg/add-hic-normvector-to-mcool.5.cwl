{
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499653917,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499654479,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499659501,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499701134,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1502652131,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4
        },
        {
            "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
            "sbg:modifiedOn": 1502899564,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5
        }
    ],
    "sbg:createdBy": "4dn-dcic",
    "stdin": "",
    "sbg:image_url": null,
    "sbg:sbgMaintained": false,
    "sbg:projectName": "Dev",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_mcool",
            "outputBinding": {
                "glob": "$job.inputs.outdir + '*.mcool'"
            }
        }
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_hic",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": ".HIC"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_mcool",
            "inputBinding": {
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": ".MCOOL"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#outdir",
            "sbg:toolDefaultValue": ".",
            "inputBinding": {
                "separate": true,
                "position": 3,
                "sbg:cmdInclude": true
            }
        }
    ],
    "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
    "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
    "sbg:validationErrors": [],
    "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "hints": [
        {
            "class": "sbg:MemRequirement",
            "value": 8000
        },
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v33",
            "dockerImageId": ""
        },
        {
            "class": "sbg:CPURequirement",
            "value": 4
        }
    ],
    "temporaryFailCodes": [],
    "arguments": [],
    "stdout": "",
    "sbg:createdOn": 1499653917,
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
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revision": 5,
    "sbg:modifiedBy": "4dn-dcic",
    "successCodes": [],
    "sbg:project": "4dn-dcic/dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/add-hic-normvector-to-mcool/5/raw/",
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedOn": 1502899564,
    "sbg:latestRevision": 5,
    "baseCommand": [
        "run-add-hicnormvector-to-mcool.sh"
    ],
    "label": "add_hic_normvector_to_mcool",
    "class": "CommandLineTool",
    "sbg:job": {
        "allocatedResources": {
            "mem": 8000,
            "cpu": 4
        },
        "inputs": {
            "outdir": "outdir-string-value",
            "input_mcool": {
                "class": "File",
                "path": "/path/to/input_mcool.ext",
                "size": 0,
                "secondaryFiles": []
            },
            "input_hic": {
                "class": "File",
                "path": "/path/to/input_hic.ext",
                "size": 0,
                "secondaryFiles": []
            }
        }
    },
    "description": ""
}