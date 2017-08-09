{
    "sbg:revision": 15,
    "sbg:createdBy": "4dn-dcic",
    "inputs": [
        {
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "id": "#input_pairs",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": ".PAIRS.GZ"
        },
        {
            "inputBinding": {
                "position": 2,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "id": "#chromsizes_file",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": ".CHROM.SIZES"
        },
        {
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "position": 3,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "id": "#output_prefix",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:toolDefaultValue": "5000",
            "inputBinding": {
                "position": 4,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "id": "#min_res",
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null
        },
        {
            "sbg:toolDefaultValue": "1",
            "inputBinding": {
                "position": 5,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "id": "#higlass",
            "type": [
                "null",
                "string"
            ],
            "sbg:stageInput": null
        },
        {
            "sbg:toolDefaultValue": "14g",
            "inputBinding": {
                "position": 6,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.hic"
            },
            "id": "#output_hic",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:createdOn": 1496168605,
    "hints": [
        {
            "class": "sbg:CPURequirement",
            "diskSize": null,
            "value": 1
        },
        {
            "class": "sbg:MemRequirement",
            "diskSize": null,
            "value": 58000
        },
        {
            "class": "DockerRequirement",
            "diskSize": null,
            "dockerImageId": "",
            "dockerPull": "duplexa/4dn-hic:v30"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:id": "4dn-dcic/dev/pairs2hic/15",
    "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
    "sbg:projectName": "Dev",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "description": "",
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "sbg:modifiedOn": 1501780759,
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496168605
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496168842
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496168924
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496172319
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496176108
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496178546
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500331857
        },
        {
            "sbg:revisionNotes": "added java maxmem as parameter",
            "sbg:revision": 7,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501513062
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 8,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501595773
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 9,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501605274
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 10,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501637382
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 11,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689608
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 12,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689663
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 13,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689805
        },
        {
            "sbg:revisionNotes": "15GB mem",
            "sbg:revision": 14,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501707253
        },
        {
            "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
            "sbg:revision": 15,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501780759
        }
    ],
    "sbg:validationErrors": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "cwlVersion": "sbg:draft-2",
    "successCodes": [],
    "class": "CommandLineTool",
    "label": "pairs2hic",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 58000
        },
        "inputs": {
            "min_res": 4,
            "output_prefix": "output_prefix-string-value",
            "chromsizes_file": {
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/chromsizes_file.ext",
                "size": 0
            },
            "higlass": "higlass-string-value",
            "maxmem": "maxmem-string-value",
            "input_pairs": {
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_pairs.ext",
                "size": 0
            }
        }
    },
    "sbg:image_url": null,
    "arguments": [],
    "stdin": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/15/raw/",
    "stdout": "",
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "requirements": [],
    "temporaryFailCodes": [],
    "sbg:latestRevision": 15,
    "sbg:sbgMaintained": false
}