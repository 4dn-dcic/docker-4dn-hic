{
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:revisionNotes": "docker v34",
    "sbg:projectName": "Dev",
    "inputs": [
        {
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": ".PAIRS.GZ",
            "id": "#input_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true
            },
            "sbg:fileTypes": ".CHROM.SIZES",
            "id": "#chromsizes_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 3,
                "sbg:cmdInclude": true
            },
            "id": "#output_prefix",
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out"
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 4,
                "sbg:cmdInclude": true
            },
            "id": "#min_res",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "5000",
            "sbg:stageInput": null
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 5,
                "sbg:cmdInclude": true
            },
            "id": "#higlass",
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "1",
            "sbg:stageInput": null
        },
        {
            "inputBinding": {
                "separate": true,
                "position": 6,
                "sbg:cmdInclude": true
            },
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "14g"
        }
    ],
    "arguments": [],
    "description": "",
    "sbg:modifiedBy": "4dn-dcic",
    "hints": [
        {
            "class": "sbg:CPURequirement",
            "value": 1,
            "diskSize": null
        },
        {
            "class": "sbg:MemRequirement",
            "value": 58000,
            "diskSize": null
        },
        {
            "class": "DockerRequirement",
            "dockerPull": "duplexa/4dn-hic:v34",
            "dockerImageId": "",
            "diskSize": null
        }
    ],
    "sbg:createdOn": 1496168605,
    "sbg:image_url": null,
    "stdout": "",
    "sbg:id": "4dn-dcic/dev/pairs2hic/17",
    "sbg:validationErrors": [],
    "sbg:project": "4dn-dcic/dev",
    "class": "CommandLineTool",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/17/raw/",
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "sbg:sbgMaintained": false,
    "temporaryFailCodes": [],
    "sbg:createdBy": "4dn-dcic",
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
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
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revision": 17,
    "cwlVersion": "sbg:draft-2",
    "label": "pairs2hic",
    "sbg:modifiedOn": 1503000477,
    "successCodes": [],
    "stdin": "",
    "outputs": [
        {
            "id": "#output_hic",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.hic"
            }
        }
    ],
    "sbg:latestRevision": 17,
    "sbg:job": {
        "inputs": {
            "chromsizes_file": {
                "path": "/path/to/chromsizes_file.ext",
                "class": "File",
                "secondaryFiles": [],
                "size": 0
            },
            "higlass": "higlass-string-value",
            "output_prefix": "output_prefix-string-value",
            "input_pairs": {
                "path": "/path/to/input_pairs.ext",
                "class": "File",
                "secondaryFiles": [],
                "size": 0
            },
            "min_res": 4,
            "maxmem": "maxmem-string-value"
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 58000
        }
    },
    "requirements": []
}