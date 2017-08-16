{
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:createdOn": 1496168605,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/16/raw/",
    "temporaryFailCodes": [],
    "sbg:latestRevision": 16,
    "cwlVersion": "sbg:draft-2",
    "hints": [
        {
            "value": 1,
            "class": "sbg:CPURequirement",
            "diskSize": null
        },
        {
            "value": 58000,
            "class": "sbg:MemRequirement",
            "diskSize": null
        },
        {
            "dockerPull": "duplexa/4dn-hic:v33",
            "class": "DockerRequirement",
            "dockerImageId": "",
            "diskSize": null
        }
    ],
    "class": "CommandLineTool",
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
    "sbg:createdBy": "4dn-dcic",
    "sbg:project": "4dn-dcic/dev",
    "baseCommand": [
        "run-juicebox-pre.sh"
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
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ],
            "id": "#output_prefix",
            "inputBinding": {
                "position": 3,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "sbg:toolDefaultValue": "5000",
            "type": [
                "null",
                "int"
            ],
            "id": "#min_res",
            "inputBinding": {
                "position": 4,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:stageInput": null
        },
        {
            "sbg:toolDefaultValue": "1",
            "type": [
                "null",
                "string"
            ],
            "id": "#higlass",
            "inputBinding": {
                "position": 5,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:stageInput": null
        },
        {
            "sbg:toolDefaultValue": "14g",
            "type": [
                "null",
                "string"
            ],
            "id": "#maxmem",
            "inputBinding": {
                "position": 6,
                "separate": true,
                "sbg:cmdInclude": true
            }
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "requirements": [],
    "sbg:projectName": "Dev",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:image_url": null,
    "sbg:revisionNotes": "docker v33",
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
        },
        {
            "sbg:revisionNotes": "docker v33",
            "sbg:revision": 16,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502843453
        }
    ],
    "stdin": "",
    "sbg:id": "4dn-dcic/dev/pairs2hic/16",
    "description": "",
    "sbg:job": {
        "inputs": {
            "min_res": 4,
            "maxmem": "maxmem-string-value",
            "output_prefix": "output_prefix-string-value",
            "higlass": "higlass-string-value",
            "chromsizes_file": {
                "class": "File",
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/chromsizes_file.ext"
            },
            "input_pairs": {
                "class": "File",
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_pairs.ext"
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 58000
        }
    },
    "stdout": "",
    "label": "pairs2hic",
    "sbg:revision": 16,
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "sbg:modifiedOn": 1502843453,
    "sbg:sbgMaintained": false,
    "successCodes": [],
    "sbg:validationErrors": [],
    "arguments": []
}