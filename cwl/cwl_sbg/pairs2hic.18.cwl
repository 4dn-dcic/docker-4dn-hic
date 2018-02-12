{
    "label": "pairs2hic",
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedOn": 1503089862,
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
        "inputs": {
            "output_prefix": "output_prefix-string-value",
            "input_pairs": {
                "path": "/path/to/input_pairs.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            },
            "higlass": "higlass-string-value",
            "min_res": 4,
            "maxmem": "maxmem-string-value",
            "chromsizes_file": {
                "path": "/path/to/chromsizes_file.ext",
                "secondaryFiles": [],
                "size": 0,
                "class": "File"
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 58000
        }
    },
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:id": "4dn-dcic/dev/pairs2hic/18",
    "sbg:projectName": "Dev",
    "sbg:latestRevision": 18,
    "sbg:createdOn": 1496168605,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/18/raw/",
    "temporaryFailCodes": [],
    "cwlVersion": "sbg:draft-2",
    "stdout": "",
    "class": "CommandLineTool",
    "sbg:image_url": null,
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "sbg:revisionNotes": "docker v35",
    "inputs": [
        {
            "sbg:fileTypes": ".PAIRS.GZ",
            "id": "#input_pairs",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 1,
                "separate": true
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
                "sbg:cmdInclude": true,
                "position": 2,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#output_prefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 3,
                "separate": true
            },
            "sbg:toolDefaultValue": "out"
        },
        {
            "id": "#min_res",
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 4,
                "separate": true
            },
            "sbg:toolDefaultValue": "5000"
        },
        {
            "id": "#higlass",
            "type": [
                "null",
                "string"
            ],
            "sbg:stageInput": null,
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 5,
                "separate": true
            },
            "sbg:toolDefaultValue": "1"
        },
        {
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "position": 6,
                "separate": true
            },
            "sbg:toolDefaultValue": "14g"
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "arguments": [],
    "requirements": [],
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
            "dockerPull": "duplexa/4dn-hic:v35",
            "dockerImageId": "",
            "diskSize": null,
            "class": "DockerRequirement"
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496168605,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496168842,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496168924,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496172319,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496176108,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496178546,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 6,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500331857,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 7,
            "sbg:revisionNotes": "added java maxmem as parameter",
            "sbg:modifiedOn": 1501513062,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 8,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501595773,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 9,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501605274,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 10,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501637382,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 11,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501689608,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 12,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501689663,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 13,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501689805,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 14,
            "sbg:revisionNotes": "15GB mem",
            "sbg:modifiedOn": 1501707253,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 15,
            "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
            "sbg:modifiedOn": 1501780759,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 16,
            "sbg:revisionNotes": "docker v33",
            "sbg:modifiedOn": 1502843453,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 17,
            "sbg:revisionNotes": "docker v34",
            "sbg:modifiedOn": 1503000477,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 18,
            "sbg:revisionNotes": "docker v35",
            "sbg:modifiedOn": 1503089862,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "description": "",
    "successCodes": [],
    "stdin": "",
    "sbg:revision": 18,
    "sbg:validationErrors": [],
    "sbg:createdBy": "4dn-dcic",
    "sbg:cmdPreview": "run-juicebox-pre.sh"
}