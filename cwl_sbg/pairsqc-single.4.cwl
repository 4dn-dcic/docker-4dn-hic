{
    "stdin": "",
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
    "sbg:project": "4dn-dcic/dev",
    "label": "pairsqc-single",
    "sbg:createdBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1490716383,
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1490716647,
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1490716726,
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1490717237,
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1490717717,
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:createdOn": 1490716383,
    "hints": [
        {
            "value": 1,
            "class": "sbg:CPURequirement"
        },
        {
            "value": 1000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerPull": "duplexa/4dn-hic:v6",
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "sbg:latestRevision": 4,
    "sbg:modifiedOn": 1490717717,
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": {
                    "script": "$job.inputs.output_dir + '/*report.zip'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#report"
        }
    ],
    "temporaryFailCodes": [],
    "sbg:cmdPreview": "run-pairsqc-single.sh",
    "stdout": "",
    "sbg:projectName": "Dev",
    "class": "CommandLineTool",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:image_url": null,
    "sbg:modifiedBy": "duplexa",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revision": 4,
    "description": "",
    "baseCommand": [
        "run-pairsqc-single.sh"
    ],
    "sbg:id": "4dn-dcic/dev/pairsqc-single/4",
    "sbg:validationErrors": [],
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
            "sbg:fileTypes": "PAIRS.GZ",
            "id": "#input_pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "PX2",
            "id": "#input_pairs_index"
        },
        {
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "CHROM.SIZES",
            "id": "#chromsizes"
        },
        {
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#sample_name"
        },
        {
            "sbg:stageInput": null,
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 4
            },
            "type": [
                "null",
                {
                    "type": "enum",
                    "symbols": [
                        "4",
                        "6"
                    ],
                    "name": "enzyme"
                }
            ],
            "id": "#enzyme"
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
                "position": 5,
                "valueFrom": {
                    "script": "'.'",
                    "engine": "#cwl-js-engine",
                    "class": "Expression"
                }
            },
            "id": "#output_dir"
        }
    ],
    "successCodes": [],
    "sbg:job": {
        "allocatedResources": {
            "mem": 1000,
            "cpu": 1
        },
        "inputs": {
            "output_dir": "output_dir-string-value",
            "input_pairs_index": {
                "path": "/path/to/input_pairs_index.ext",
                "size": 0,
                "secondaryFiles": [],
                "class": "File"
            },
            "enzyme": "4",
            "input_pairs": {
                "path": "/path/to/input_pairs.ext",
                "size": 0,
                "secondaryFiles": [],
                "class": "File"
            },
            "chromsizes": {
                "path": "/path/to/chromsizes.ext",
                "size": 0,
                "secondaryFiles": [],
                "class": "File"
            },
            "sample_name": "sample_name-string-value"
        }
    },
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairsqc-single/4/raw/",
    "arguments": [],
    "sbg:sbgMaintained": false
}