{
    "arguments": [],
    "sbg:createdOn": 1496168605,
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#input_pairs",
            "sbg:fileTypes": ".PAIRS.GZ",
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chromsizes_file",
            "sbg:fileTypes": ".CHROM.SIZES",
            "inputBinding": {
                "position": 2,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out",
            "id": "#output_prefix",
            "inputBinding": {
                "position": 3,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "5000",
            "id": "#min_res",
            "inputBinding": {
                "position": 4,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "1",
            "id": "#higlass",
            "inputBinding": {
                "position": 5,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "14g",
            "id": "#maxmem",
            "inputBinding": {
                "position": 6,
                "separate": true,
                "sbg:cmdInclude": true
            }
        }
    ],
    "successCodes": [],
    "requirements": [],
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.hic"
            },
            "id": "#output_hic"
        }
    ],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/15/raw/",
    "stdout": "",
    "class": "CommandLineTool",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:validationErrors": [],
    "sbg:modifiedOn": 1501780759,
    "stdin": "",
    "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
    "hints": [
        {
            "diskSize": null,
            "value": 1,
            "class": "sbg:CPURequirement"
        },
        {
            "diskSize": null,
            "value": 58000,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerPull": "duplexa/4dn-hic:v30",
            "diskSize": null,
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "sbg:createdBy": "4dn-dcic",
    "sbg:image_url": null,
    "sbg:latestRevision": 15,
    "sbg:revision": 15,
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "label": "pairs2hic",
    "sbg:projectName": "Dev",
    "sbg:sbgMaintained": false,
    "temporaryFailCodes": [],
    "sbg:modifiedBy": "4dn-dcic",
    "description": "",
    "sbg:id": "4dn-dcic/dev/pairs2hic/15",
    "sbg:project": "4dn-dcic/dev",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 58000
        },
        "inputs": {
            "maxmem": "maxmem-string-value",
            "input_pairs": {
                "secondaryFiles": [],
                "size": 0,
                "class": "File",
                "path": "/path/to/input_pairs.ext"
            },
            "chromsizes_file": {
                "secondaryFiles": [],
                "size": 0,
                "class": "File",
                "path": "/path/to/chromsizes_file.ext"
            },
            "output_prefix": "output_prefix-string-value",
            "higlass": "higlass-string-value",
            "min_res": 4
        }
    },
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496168605,
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496168842,
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496168924,
            "sbg:revision": 2
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496172319,
            "sbg:revision": 3
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496176108,
            "sbg:revision": 4
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496178546,
            "sbg:revision": 5
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500331857,
            "sbg:revision": 6
        },
        {
            "sbg:revisionNotes": "added java maxmem as parameter",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501513062,
            "sbg:revision": 7
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501595773,
            "sbg:revision": 8
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501605274,
            "sbg:revision": 9
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501637382,
            "sbg:revision": 10
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689608,
            "sbg:revision": 11
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689663,
            "sbg:revision": 12
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689805,
            "sbg:revision": 13
        },
        {
            "sbg:revisionNotes": "15GB mem",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501707253,
            "sbg:revision": 14
        },
        {
            "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501780759,
            "sbg:revision": 15
        }
    ]
}