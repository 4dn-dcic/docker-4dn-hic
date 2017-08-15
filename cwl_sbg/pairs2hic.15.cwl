{
    "cwlVersion": "sbg:draft-2",
    "arguments": [],
    "sbg:validationErrors": [],
    "sbg:modifiedOn": 1501780759,
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "sbg:job": {
        "allocatedResources": {
            "mem": 58000,
            "cpu": 1
        },
        "inputs": {
            "chromsizes_file": {
                "path": "/path/to/chromsizes_file.ext",
                "size": 0,
                "secondaryFiles": [],
                "class": "File"
            },
            "input_pairs": {
                "path": "/path/to/input_pairs.ext",
                "size": 0,
                "secondaryFiles": [],
                "class": "File"
            },
            "min_res": 4,
            "maxmem": "maxmem-string-value",
            "higlass": "higlass-string-value",
            "output_prefix": "output_prefix-string-value"
        }
    },
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:createdBy": "4dn-dcic",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/15/raw/",
    "description": "",
    "sbg:id": "4dn-dcic/dev/pairs2hic/15",
    "stdout": "",
    "sbg:projectName": "Dev",
    "temporaryFailCodes": [],
    "requirements": [],
    "class": "CommandLineTool",
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
            "id": "#input_pairs",
            "sbg:fileTypes": ".PAIRS.GZ"
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
            "id": "#chromsizes_file",
            "sbg:fileTypes": ".CHROM.SIZES"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#output_prefix"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "5000",
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#min_res",
            "sbg:stageInput": null
        },
        {
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "1",
            "inputBinding": {
                "position": 5,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#higlass",
            "sbg:stageInput": null
        },
        {
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "14g",
            "inputBinding": {
                "position": 6,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#maxmem"
        }
    ],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "successCodes": [],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:revision": 15,
    "sbg:project": "4dn-dcic/dev",
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
    "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
    "sbg:createdOn": 1496168605,
    "sbg:latestRevision": 15,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1496168605,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1496168842,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1496168924,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1496172319,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1496176108,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1496178546,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1500331857,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1501513062,
            "sbg:revisionNotes": "added java maxmem as parameter"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1501595773,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 9,
            "sbg:modifiedOn": 1501605274,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 10,
            "sbg:modifiedOn": 1501637382,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 11,
            "sbg:modifiedOn": 1501689608,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 12,
            "sbg:modifiedOn": 1501689663,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 13,
            "sbg:modifiedOn": 1501689805,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 14,
            "sbg:modifiedOn": 1501707253,
            "sbg:revisionNotes": "15GB mem"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 15,
            "sbg:modifiedOn": 1501780759,
            "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed."
        }
    ],
    "sbg:sbgMaintained": false,
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
            "dockerImageId": "",
            "diskSize": null,
            "class": "DockerRequirement"
        }
    ],
    "label": "pairs2hic",
    "sbg:image_url": null,
    "stdin": ""
}