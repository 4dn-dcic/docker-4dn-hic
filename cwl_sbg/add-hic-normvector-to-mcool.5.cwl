{
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:job": {
        "allocatedResources": {
            "mem": 8000,
            "cpu": 4
        },
        "inputs": {
            "input_mcool": {
                "class": "File",
                "path": "/path/to/input_mcool.ext",
                "secondaryFiles": [],
                "size": 0
            },
            "input_hic": {
                "class": "File",
                "path": "/path/to/input_hic.ext",
                "secondaryFiles": [],
                "size": 0
            },
            "outdir": "outdir-string-value"
        }
    },
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
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/add-hic-normvector-to-mcool/5/raw/",
    "sbg:createdBy": "4dn-dcic",
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
    "baseCommand": [
        "run-add-hicnormvector-to-mcool.sh"
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
    "sbg:sbgMaintained": false,
    "temporaryFailCodes": [],
    "stdout": "",
    "sbg:latestRevision": 5,
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "id": "#input_hic",
            "sbg:fileTypes": ".HIC"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            },
            "id": "#input_mcool",
            "sbg:fileTypes": ".MCOOL"
        },
        {
            "sbg:toolDefaultValue": ".",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": true
            },
            "id": "#outdir"
        }
    ],
    "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/5",
    "stdin": "",
    "sbg:modifiedOn": 1502899564,
    "sbg:image_url": null,
    "sbg:modifiedBy": "4dn-dcic",
    "label": "add_hic_normvector_to_mcool",
    "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:validationErrors": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:revision": 5,
    "sbg:revisionNotes": "removed valuefrom for outdir. default is enoguh.",
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
    "successCodes": [],
    "sbg:projectName": "Dev",
    "class": "CommandLineTool",
    "arguments": [],
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "sbg:createdOn": 1499653917
}