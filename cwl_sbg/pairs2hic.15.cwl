{
    "successCodes": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedBy": "4dn-dcic",
    "requirements": [],
    "temporaryFailCodes": [],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "description": "",
    "sbg:modifiedOn": 1501780759,
    "sbg:project": "4dn-dcic/dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/15/raw/",
    "sbg:createdOn": 1496168605,
    "arguments": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:sbgMaintained": false,
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "stdout": "",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1496168605,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1496168842,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1496168924,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedOn": 1496172319,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1496176108,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 4
        },
        {
            "sbg:modifiedOn": 1496178546,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 5
        },
        {
            "sbg:modifiedOn": 1500331857,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 6
        },
        {
            "sbg:modifiedOn": 1501513062,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "added java maxmem as parameter",
            "sbg:revision": 7
        },
        {
            "sbg:modifiedOn": 1501595773,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 8
        },
        {
            "sbg:modifiedOn": 1501605274,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 9
        },
        {
            "sbg:modifiedOn": 1501637382,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 10
        },
        {
            "sbg:modifiedOn": 1501689608,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 11
        },
        {
            "sbg:modifiedOn": 1501689663,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 12
        },
        {
            "sbg:modifiedOn": 1501689805,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 13
        },
        {
            "sbg:modifiedOn": 1501707253,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "15GB mem",
            "sbg:revision": 14
        },
        {
            "sbg:modifiedOn": 1501780759,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
            "sbg:revision": 15
        }
    ],
    "sbg:job": {
        "inputs": {
            "input_pairs": {
                "class": "File",
                "size": 0,
                "path": "/path/to/input_pairs.ext",
                "secondaryFiles": []
            },
            "maxmem": "maxmem-string-value",
            "higlass": "higlass-string-value",
            "chromsizes_file": {
                "class": "File",
                "size": 0,
                "path": "/path/to/chromsizes_file.ext",
                "secondaryFiles": []
            },
            "output_prefix": "output_prefix-string-value",
            "min_res": 4
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 58000
        }
    },
    "outputs": [
        {
            "id": "#output_hic",
            "outputBinding": {
                "glob": "*.hic"
            },
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:validationErrors": [],
    "class": "CommandLineTool",
    "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
    "label": "pairs2hic",
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "sbg:latestRevision": 15,
    "stdin": "",
    "inputs": [
        {
            "sbg:fileTypes": ".PAIRS.GZ",
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "id": "#input_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:fileTypes": ".CHROM.SIZES",
            "inputBinding": {
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true
            },
            "id": "#chromsizes_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "separate": true,
                "position": 3,
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
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "position": 4,
                "sbg:cmdInclude": true
            },
            "id": "#min_res",
            "sbg:stageInput": null
        },
        {
            "sbg:toolDefaultValue": "1",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "position": 5,
                "sbg:cmdInclude": true
            },
            "id": "#higlass",
            "sbg:stageInput": null
        },
        {
            "sbg:toolDefaultValue": "14g",
            "inputBinding": {
                "separate": true,
                "position": 6,
                "sbg:cmdInclude": true
            },
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ]
        }
    ],
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
            "dockerImageId": "",
            "class": "DockerRequirement",
            "diskSize": null,
            "dockerPull": "duplexa/4dn-hic:v30"
        }
    ],
    "sbg:image_url": null,
    "sbg:revision": 15,
    "sbg:projectName": "Dev",
    "sbg:id": "4dn-dcic/dev/pairs2hic/15",
    "sbg:createdBy": "4dn-dcic"
}