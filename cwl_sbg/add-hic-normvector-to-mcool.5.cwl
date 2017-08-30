{
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
            "outputBinding": {
                "glob": "$job.inputs.outdir + '*.mcool'"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#output_mcool"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/add-hic-normvector-to-mcool/5/raw/",
    "sbg:validationErrors": [],
    "sbg:revision": 5,
    "sbg:sbgMaintained": false,
    "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
    "successCodes": [],
    "label": "add_hic_normvector_to_mcool",
    "stdin": "",
    "sbg:modifiedOn": 1502899564,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "sbg:fileTypes": ".HIC",
            "type": [
                "null",
                "File"
            ],
            "id": "#input_hic"
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            },
            "sbg:fileTypes": ".MCOOL",
            "type": [
                "null",
                "File"
            ],
            "id": "#input_mcool"
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 3
            },
            "sbg:toolDefaultValue": ".",
            "type": [
                "null",
                "string"
            ],
            "id": "#outdir"
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "stdout": "",
    "sbg:createdBy": "4dn-dcic",
    "description": "",
    "hints": [
        {
            "value": 8000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerPull": "duplexa/4dn-hic:v33",
            "class": "DockerRequirement",
            "dockerImageId": ""
        },
        {
            "value": 4,
            "class": "sbg:CPURequirement"
        }
    ],
    "sbg:image_url": null,
    "baseCommand": [
        "run-add-hicnormvector-to-mcool.sh"
    ],
    "temporaryFailCodes": [],
    "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
    "sbg:job": {
        "inputs": {
            "input_hic": {
                "secondaryFiles": [],
                "size": 0,
                "class": "File",
                "path": "/path/to/input_hic.ext"
            },
            "input_mcool": {
                "secondaryFiles": [],
                "size": 0,
                "class": "File",
                "path": "/path/to/input_mcool.ext"
            },
            "outdir": "outdir-string-value"
        },
        "allocatedResources": {
            "cpu": 4,
            "mem": 8000
        }
    },
    "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
    "sbg:createdOn": 1499653917,
    "sbg:projectName": "Dev",
    "arguments": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1499653917,
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1499654479,
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1499659501,
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1499701134,
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1502652131,
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1502899564,
            "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "class": "CommandLineTool",
    "sbg:latestRevision": 5,
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "id": "#cwl-js-engine"
        }
    ]
}