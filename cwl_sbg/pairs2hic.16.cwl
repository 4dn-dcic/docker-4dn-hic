{
    "sbg:createdOn": 1496168605,
    "sbg:job": {
        "allocatedResources": {
            "mem": 58000,
            "cpu": 1
        },
        "inputs": {
            "min_res": 4,
            "maxmem": "maxmem-string-value",
            "higlass": "higlass-string-value",
            "output_prefix": "output_prefix-string-value",
            "input_pairs": {
                "class": "File",
                "path": "/path/to/input_pairs.ext",
                "secondaryFiles": [],
                "size": 0
            },
            "chromsizes_file": {
                "class": "File",
                "path": "/path/to/chromsizes_file.ext",
                "secondaryFiles": [],
                "size": 0
            }
        }
    },
    "sbg:revision": 16,
    "temporaryFailCodes": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#output_hic",
            "outputBinding": {
                "glob": "*.hic"
            }
        }
    ],
    "successCodes": [],
    "requirements": [],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:revisionNotes": "docker v33",
    "description": "",
    "sbg:modifiedBy": "4dn-dcic",
    "class": "CommandLineTool",
    "cwlVersion": "sbg:draft-2",
    "sbg:validationErrors": [],
    "arguments": [],
    "sbg:modifiedOn": 1502843453,
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            },
            "id": "#input_pairs",
            "sbg:fileTypes": ".PAIRS.GZ",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            },
            "id": "#chromsizes_file",
            "sbg:fileTypes": ".CHROM.SIZES",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 3
            },
            "sbg:toolDefaultValue": "out",
            "id": "#output_prefix",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:toolDefaultValue": "5000",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 4
            },
            "sbg:stageInput": null,
            "id": "#min_res",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "sbg:toolDefaultValue": "1",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 5
            },
            "sbg:stageInput": null,
            "id": "#higlass",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 6
            },
            "sbg:toolDefaultValue": "14g",
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "sbg:project": "4dn-dcic/dev",
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
            "dockerPull": "duplexa/4dn-hic:v33",
            "diskSize": null
        }
    ],
    "sbg:image_url": null,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1496168605,
            "sbg:revision": 0,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1496168842,
            "sbg:revision": 1,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1496168924,
            "sbg:revision": 2,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1496172319,
            "sbg:revision": 3,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1496176108,
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1496178546,
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1500331857,
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501513062,
            "sbg:revision": 7,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "added java maxmem as parameter"
        },
        {
            "sbg:modifiedOn": 1501595773,
            "sbg:revision": 8,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501605274,
            "sbg:revision": 9,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501637382,
            "sbg:revision": 10,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501689608,
            "sbg:revision": 11,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501689663,
            "sbg:revision": 12,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501689805,
            "sbg:revision": 13,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501707253,
            "sbg:revision": 14,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "15GB mem"
        },
        {
            "sbg:modifiedOn": 1501780759,
            "sbg:revision": 15,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed."
        },
        {
            "sbg:modifiedOn": 1502843453,
            "sbg:revision": 16,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "docker v33"
        }
    ],
    "stdout": "",
    "sbg:projectName": "Dev",
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "sbg:sbgMaintained": false,
    "sbg:id": "4dn-dcic/dev/pairs2hic/16",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/16/raw/",
    "stdin": "",
    "label": "pairs2hic",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdBy": "4dn-dcic",
    "sbg:latestRevision": 16,
    "sbg:cmdPreview": "run-juicebox-pre.sh"
}