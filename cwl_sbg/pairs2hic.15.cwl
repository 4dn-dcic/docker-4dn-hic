{
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1496168605,
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1496168842,
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1496168924,
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1496172319,
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1496176108,
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1496178546,
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1500331857,
            "sbg:revision": 6,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501513062,
            "sbg:revision": 7,
            "sbg:revisionNotes": "added java maxmem as parameter",
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501595773,
            "sbg:revision": 8,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501605274,
            "sbg:revision": 9,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501637382,
            "sbg:revision": 10,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501689608,
            "sbg:revision": 11,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501689663,
            "sbg:revision": 12,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501689805,
            "sbg:revision": 13,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501707253,
            "sbg:revision": 14,
            "sbg:revisionNotes": "15GB mem",
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501780759,
            "sbg:revision": 15,
            "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:revision": 15,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/15/raw/",
    "requirements": [],
    "sbg:validationErrors": [],
    "class": "CommandLineTool",
    "sbg:projectName": "Dev",
    "description": "",
    "stdout": "",
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "sbg:fileTypes": ".PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "id": "#input_pairs",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
            }
        },
        {
            "sbg:fileTypes": ".CHROM.SIZES",
            "type": [
                "null",
                "File"
            ],
            "id": "#chromsizes_file",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            }
        },
        {
            "id": "#output_prefix",
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 3
            }
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
                "separate": true,
                "position": 4
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
                "separate": true,
                "position": 5
            },
            "sbg:toolDefaultValue": "1"
        },
        {
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "14g",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 6
            }
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "temporaryFailCodes": [],
    "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
    "sbg:createdBy": "4dn-dcic",
    "sbg:createdOn": 1496168605,
    "sbg:job": {
        "inputs": {
            "output_prefix": "output_prefix-string-value",
            "maxmem": "maxmem-string-value",
            "chromsizes_file": {
                "secondaryFiles": [],
                "path": "/path/to/chromsizes_file.ext",
                "class": "File",
                "size": 0
            },
            "input_pairs": {
                "secondaryFiles": [],
                "path": "/path/to/input_pairs.ext",
                "class": "File",
                "size": 0
            },
            "higlass": "higlass-string-value",
            "min_res": 4
        },
        "allocatedResources": {
            "mem": 58000,
            "cpu": 1
        }
    },
    "stdin": "",
    "label": "pairs2hic",
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
            "dockerImageId": "",
            "dockerPull": "duplexa/4dn-hic:v30",
            "class": "DockerRequirement",
            "diskSize": null
        }
    ],
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "sbg:latestRevision": 15,
    "sbg:modifiedOn": 1501780759,
    "sbg:image_url": null,
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "sbg:modifiedBy": "4dn-dcic",
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
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:id": "4dn-dcic/dev/pairs2hic/15",
    "sbg:sbgMaintained": false,
    "sbg:project": "4dn-dcic/dev",
    "arguments": []
}