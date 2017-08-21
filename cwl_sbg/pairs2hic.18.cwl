{
    "requirements": [],
    "arguments": [],
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
            "dockerPull": "duplexa/4dn-hic:v35",
            "dockerImageId": "",
            "class": "DockerRequirement",
            "diskSize": null
        }
    ],
    "stdin": "",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "sbg:createdOn": 1496168605,
    "sbg:modifiedOn": 1503089862,
    "sbg:validationErrors": [],
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 58000
        },
        "inputs": {
            "input_pairs": {
                "secondaryFiles": [],
                "path": "/path/to/input_pairs.ext",
                "class": "File",
                "size": 0
            },
            "higlass": "higlass-string-value",
            "maxmem": "maxmem-string-value",
            "min_res": 4,
            "output_prefix": "output_prefix-string-value",
            "chromsizes_file": {
                "secondaryFiles": [],
                "path": "/path/to/chromsizes_file.ext",
                "class": "File",
                "size": 0
            }
        }
    },
    "description": "",
    "stdout": "",
    "sbg:revisionNotes": "docker v35",
    "sbg:latestRevision": 18,
    "temporaryFailCodes": [],
    "sbg:createdBy": "4dn-dcic",
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496168605
        },
        {
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496168842
        },
        {
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496168924
        },
        {
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496172319
        },
        {
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496176108
        },
        {
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496178546
        },
        {
            "sbg:revision": 6,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500331857
        },
        {
            "sbg:revision": 7,
            "sbg:revisionNotes": "added java maxmem as parameter",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501513062
        },
        {
            "sbg:revision": 8,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501595773
        },
        {
            "sbg:revision": 9,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501605274
        },
        {
            "sbg:revision": 10,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501637382
        },
        {
            "sbg:revision": 11,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689608
        },
        {
            "sbg:revision": 12,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689663
        },
        {
            "sbg:revision": 13,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689805
        },
        {
            "sbg:revision": 14,
            "sbg:revisionNotes": "15GB mem",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501707253
        },
        {
            "sbg:revision": 15,
            "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501780759
        },
        {
            "sbg:revision": 16,
            "sbg:revisionNotes": "docker v33",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502843453
        },
        {
            "sbg:revision": 17,
            "sbg:revisionNotes": "docker v34",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1503000477
        },
        {
            "sbg:revision": 18,
            "sbg:revisionNotes": "docker v35",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1503089862
        }
    ],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "label": "pairs2hic",
    "sbg:sbgMaintained": false,
    "sbg:revision": 18,
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:fileTypes": ".PAIRS.GZ",
            "id": "#input_pairs"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:fileTypes": ".CHROM.SIZES",
            "id": "#chromsizes_file"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#output_prefix",
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "out"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "id": "#min_res",
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "5000"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#higlass",
            "inputBinding": {
                "position": 5,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "1"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "id": "#maxmem",
            "inputBinding": {
                "position": 6,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "14g"
        }
    ],
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
    "successCodes": [],
    "class": "CommandLineTool",
    "sbg:image_url": null,
    "sbg:projectName": "Dev",
    "cwlVersion": "sbg:draft-2",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/18/raw/",
    "sbg:id": "4dn-dcic/dev/pairs2hic/18"
}