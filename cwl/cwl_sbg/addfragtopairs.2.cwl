{
    "sbg:image_url": null,
    "sbg:cmdPreview": "run-addfrag2pairs.sh",
    "baseCommand": [
        "run-addfrag2pairs.sh"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1499271780,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1499271922,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1499279866,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/addfragtopairs/2/raw/",
    "sbg:createdBy": "4dn-dcic",
    "arguments": [],
    "requirements": [],
    "stdin": "",
    "sbg:modifiedBy": "4dn-dcic",
    "hints": [
        {
            "class": "sbg:CPURequirement",
            "value": 1
        },
        {
            "class": "sbg:MemRequirement",
            "value": 1000
        },
        {
            "dockerPull": "duplexa/4dn-hic:v22",
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "sbg:revision": 2,
    "outputs": [
        {
            "outputBinding": {
                "glob": "$job.inputs.outprefix + '.ff.pairs.gz'"
            },
            "sbg:fileTypes": "PAIRS.GZ",
            "id": "#out_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "$job.inputs.outprefix + '.ff.pairs.gz.px2'"
            },
            "sbg:fileTypes": "PX2",
            "id": "#out_pairs_px2",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
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
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            },
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "TXT",
            "id": "#restriction_file"
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 3
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#out_prefix",
            "sbg:toolDefaultValue": "out"
        }
    ],
    "temporaryFailCodes": [],
    "sbg:createdOn": 1499271780,
    "sbg:projectName": "Dev",
    "sbg:job": {
        "inputs": {
            "input_pairs": {
                "class": "File",
                "path": "/path/to/input_pairs.ext",
                "size": 0,
                "secondaryFiles": []
            },
            "out_prefix": "out_prefix-string-value",
            "restriction_file": {
                "class": "File",
                "path": "/path/to/restriction_file.ext",
                "size": 0,
                "secondaryFiles": []
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 1000
        }
    },
    "sbg:id": "4dn-dcic/dev/addfragtopairs/2",
    "sbg:validationErrors": [],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:project": "4dn-dcic/dev",
    "stdout": "",
    "description": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "successCodes": [],
    "class": "CommandLineTool",
    "label": "addfragtopairs",
    "sbg:modifiedOn": 1499279866,
    "sbg:latestRevision": 2,
    "sbg:sbgMaintained": false
}