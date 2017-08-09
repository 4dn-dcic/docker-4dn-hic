{
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedOn": 1501780759,
    "inputs": [
        {
            "sbg:fileTypes": ".PAIRS.GZ",
            "id": "#input_pairs",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:fileTypes": ".CHROM.SIZES",
            "id": "#chromsizes_file",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:toolDefaultValue": "out",
            "id": "#output_prefix",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:toolDefaultValue": "5000",
            "sbg:stageInput": null,
            "id": "#min_res",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 4
            },
            "type": [
                "null",
                "int"
            ]
        },
        {
            "sbg:toolDefaultValue": "1",
            "sbg:stageInput": null,
            "id": "#higlass",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 5
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:toolDefaultValue": "14g",
            "id": "#maxmem",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 6
            },
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "label": "pairs2hic",
    "requirements": [],
    "class": "CommandLineTool",
    "sbg:image_url": null,
    "hints": [
        {
            "value": 1,
            "diskSize": null,
            "class": "sbg:CPURequirement"
        },
        {
            "value": 58000,
            "diskSize": null,
            "class": "sbg:MemRequirement"
        },
        {
            "dockerPull": "duplexa/4dn-hic:v30",
            "dockerImageId": "",
            "diskSize": null,
            "class": "DockerRequirement"
        }
    ],
    "arguments": [],
    "sbg:latestRevision": 15,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdOn": 1496168605,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/15/raw/",
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
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 58000
        },
        "inputs": {
            "output_prefix": "output_prefix-string-value",
            "chromsizes_file": {
                "secondaryFiles": [],
                "path": "/path/to/chromsizes_file.ext",
                "size": 0,
                "class": "File"
            },
            "input_pairs": {
                "secondaryFiles": [],
                "path": "/path/to/input_pairs.ext",
                "size": 0,
                "class": "File"
            },
            "maxmem": "maxmem-string-value",
            "min_res": 4,
            "higlass": "higlass-string-value"
        }
    },
    "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
    "sbg:validationErrors": [],
    "sbg:createdBy": "4dn-dcic",
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
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "sbg:projectName": "Dev",
    "description": "",
    "sbg:id": "4dn-dcic/dev/pairs2hic/15",
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "sbg:revision": 15,
    "sbg:sbgMaintained": false,
    "temporaryFailCodes": [],
    "sbg:modifiedBy": "4dn-dcic",
    "stdin": "",
    "successCodes": [],
    "stdout": "",
    "sbg:project": "4dn-dcic/dev"
}