{
    "cwlVersion": "sbg:draft-2",
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 58000
        },
        "inputs": {
            "chromsizes_file": {
                "path": "/path/to/chromsizes_file.ext",
                "class": "File",
                "secondaryFiles": [],
                "size": 0
            },
            "output_prefix": "output_prefix-string-value",
            "higlass": "higlass-string-value",
            "min_res": 4,
            "maxmem": "maxmem-string-value",
            "input_pairs": {
                "path": "/path/to/input_pairs.ext",
                "class": "File",
                "secondaryFiles": [],
                "size": 0
            }
        }
    },
    "label": "pairs2hic",
    "class": "CommandLineTool",
    "sbg:validationErrors": [],
    "requirements": [],
    "stdout": "",
    "sbg:revision": 15,
    "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
    "sbg:modifiedBy": "4dn-dcic",
    "description": "",
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
    "sbg:projectName": "Dev",
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "sbg:project": "4dn-dcic/dev",
    "successCodes": [],
    "hints": [
        {
            "diskSize": null,
            "class": "sbg:CPURequirement",
            "value": 1
        },
        {
            "diskSize": null,
            "class": "sbg:MemRequirement",
            "value": 58000
        },
        {
            "dockerImageId": "",
            "diskSize": null,
            "dockerPull": "duplexa/4dn-hic:v30",
            "class": "DockerRequirement"
        }
    ],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "stdin": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/15/raw/",
    "sbg:id": "4dn-dcic/dev/pairs2hic/15",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1496168605,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1496168842,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedOn": 1496168924,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedOn": 1496172319,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedOn": 1496176108,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 5,
            "sbg:modifiedOn": 1496178546,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 6,
            "sbg:modifiedOn": 1500331857,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "added java maxmem as parameter",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1501513062,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 8,
            "sbg:modifiedOn": 1501595773,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 9,
            "sbg:modifiedOn": 1501605274,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 10,
            "sbg:modifiedOn": 1501637382,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 11,
            "sbg:modifiedOn": 1501689608,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 12,
            "sbg:modifiedOn": 1501689663,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 13,
            "sbg:modifiedOn": 1501689805,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "15GB mem",
            "sbg:revision": 14,
            "sbg:modifiedOn": 1501707253,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
            "sbg:revision": 15,
            "sbg:modifiedOn": 1501780759,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:createdBy": "4dn-dcic",
    "arguments": [],
    "sbg:sbgMaintained": false,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "inputs": [
        {
            "id": "#input_pairs",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:fileTypes": ".PAIRS.GZ"
        },
        {
            "id": "#chromsizes_file",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:fileTypes": ".CHROM.SIZES"
        },
        {
            "id": "#output_prefix",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "out"
        },
        {
            "id": "#min_res",
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "5000"
        },
        {
            "id": "#higlass",
            "sbg:stageInput": null,
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 5,
                "sbg:cmdInclude": true,
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
                "position": 6,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "14g"
        }
    ],
    "sbg:latestRevision": 15,
    "sbg:modifiedOn": 1501780759,
    "temporaryFailCodes": [],
    "sbg:createdOn": 1496168605,
    "sbg:image_url": null
}