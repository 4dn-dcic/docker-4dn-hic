{
    "description": "",
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
    "stdin": "",
    "sbg:createdOn": 1496168605,
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1496168605
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1496168842
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1496168924
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1496172319
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1496176108
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1496178546
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1500331857
        },
        {
            "sbg:revisionNotes": "added java maxmem as parameter",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1501513062
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1501595773
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 9,
            "sbg:modifiedOn": 1501605274
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 10,
            "sbg:modifiedOn": 1501637382
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 11,
            "sbg:modifiedOn": 1501689608
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 12,
            "sbg:modifiedOn": 1501689663
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 13,
            "sbg:modifiedOn": 1501689805
        },
        {
            "sbg:revisionNotes": "15GB mem",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 14,
            "sbg:modifiedOn": 1501707253
        },
        {
            "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 15,
            "sbg:modifiedOn": 1501780759
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/15/raw/",
    "sbg:validationErrors": [],
    "stdout": "",
    "sbg:revision": 15,
    "arguments": [],
    "successCodes": [],
    "requirements": [],
    "sbg:projectName": "Dev",
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
            "dockerImageId": "",
            "class": "DockerRequirement",
            "diskSize": null,
            "dockerPull": "duplexa/4dn-hic:v30"
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:image_url": null,
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.hic"
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#output_hic"
        }
    ],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:project": "4dn-dcic/dev",
    "inputs": [
        {
            "sbg:fileTypes": ".PAIRS.GZ",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#input_pairs"
        },
        {
            "sbg:fileTypes": ".CHROM.SIZES",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ],
            "id": "#chromsizes_file"
        },
        {
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": true
            },
            "id": "#output_prefix",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 4,
                "separate": true
            },
            "sbg:toolDefaultValue": "5000",
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "id": "#min_res"
        },
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 5,
                "separate": true
            },
            "sbg:toolDefaultValue": "1",
            "type": [
                "null",
                "string"
            ],
            "sbg:stageInput": null,
            "id": "#higlass"
        },
        {
            "sbg:toolDefaultValue": "14g",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 6,
                "separate": true
            },
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "sbg:id": "4dn-dcic/dev/pairs2hic/15",
    "label": "pairs2hic",
    "sbg:modifiedOn": 1501780759,
    "sbg:sbgMaintained": false,
    "sbg:job": {
        "inputs": {
            "chromsizes_file": {
                "path": "/path/to/chromsizes_file.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            },
            "output_prefix": "output_prefix-string-value",
            "higlass": "higlass-string-value",
            "input_pairs": {
                "path": "/path/to/input_pairs.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            },
            "min_res": 4,
            "maxmem": "maxmem-string-value"
        },
        "allocatedResources": {
            "mem": 58000,
            "cpu": 1
        }
    },
    "temporaryFailCodes": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "sbg:createdBy": "4dn-dcic",
    "class": "CommandLineTool",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:latestRevision": 15
}