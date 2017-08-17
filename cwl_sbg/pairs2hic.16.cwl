{
    "sbg:createdOn": 1496168605,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/16/raw/",
    "sbg:modifiedOn": 1502843453,
    "arguments": [],
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
            "dockerPull": "duplexa/4dn-hic:v33",
            "diskSize": null,
            "dockerImageId": ""
        }
    ],
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "inputs": [
        {
            "id": "#input_pairs",
            "sbg:fileTypes": ".PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "id": "#chromsizes_file",
            "sbg:fileTypes": ".CHROM.SIZES",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "separate": true,
                "sbg:cmdInclude": true
            }
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#output_prefix",
            "sbg:toolDefaultValue": "out"
        },
        {
            "inputBinding": {
                "position": 4,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "5000",
            "id": "#min_res"
        },
        {
            "inputBinding": {
                "position": 5,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "string"
            ],
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "1",
            "id": "#higlass"
        },
        {
            "inputBinding": {
                "position": 6,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "type": [
                "null",
                "string"
            ],
            "id": "#maxmem",
            "sbg:toolDefaultValue": "14g"
        }
    ],
    "sbg:sbgMaintained": false,
    "description": "",
    "sbg:job": {
        "inputs": {
            "higlass": "higlass-string-value",
            "chromsizes_file": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/chromsizes_file.ext",
                "size": 0
            },
            "maxmem": "maxmem-string-value",
            "min_res": 4,
            "output_prefix": "output_prefix-string-value",
            "input_pairs": {
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_pairs.ext",
                "size": 0
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 58000
        }
    },
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
        },
        {
            "sbg:modifiedOn": 1502843453,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "docker v33",
            "sbg:revision": 16
        }
    ],
    "sbg:createdBy": "4dn-dcic",
    "class": "CommandLineTool",
    "temporaryFailCodes": [],
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
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:image_url": null,
    "stdout": "",
    "label": "pairs2hic",
    "requirements": [],
    "sbg:id": "4dn-dcic/dev/pairs2hic/16",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:latestRevision": 16,
    "sbg:validationErrors": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:projectName": "Dev",
    "stdin": "",
    "successCodes": [],
    "sbg:revisionNotes": "docker v33",
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "sbg:revision": 16
}