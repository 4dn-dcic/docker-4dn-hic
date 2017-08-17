{
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1502899564,
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "$job.inputs.outdir + '*.mcool'"
            },
            "id": "#output_mcool"
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1499653917,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1499654479,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1499659501,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1499701134,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1502652131,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1502899564,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh."
        }
    ],
    "arguments": [],
    "sbg:validationErrors": [],
    "stdin": "",
    "sbg:job": {
        "allocatedResources": {
            "mem": 8000,
            "cpu": 4
        },
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
        }
    },
    "sbg:latestRevision": 5,
    "class": "CommandLineTool",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/add-hic-normvector-to-mcool/5/raw/",
    "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
    "sbg:sbgMaintained": false,
    "sbg:revision": 5,
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
            "id": "#outdir",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "."
        }
    ],
    "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
    "sbg:createdBy": "4dn-dcic",
    "sbg:project": "4dn-dcic/dev",
    "cwlVersion": "sbg:draft-2",
    "temporaryFailCodes": [],
    "hints": [
        {
            "class": "sbg:MemRequirement",
            "value": 8000
        },
        {
            "dockerPull": "duplexa/4dn-hic:v33",
            "class": "DockerRequirement",
            "dockerImageId": ""
        },
        {
            "class": "sbg:CPURequirement",
            "value": 4
        }
    ],
    "label": "add_hic_normvector_to_mcool",
    "requirements": [
        {
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine"
        }
    ],
    "stdout": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "description": "",
    "sbg:image_url": null,
    "successCodes": [],
    "baseCommand": [
        "run-add-hicnormvector-to-mcool.sh"
    ],
    "sbg:createdOn": 1499653917
}