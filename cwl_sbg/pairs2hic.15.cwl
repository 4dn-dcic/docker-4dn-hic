{
    "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
    "sbg:revision": 15,
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 1
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
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            },
            "id": "#chromsizes_file",
            "sbg:fileTypes": ".CHROM.SIZES"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 3
            },
            "id": "#output_prefix",
            "sbg:toolDefaultValue": "out"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 4
            },
            "id": "#min_res",
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "5000"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 5
            },
            "id": "#higlass",
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "1"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 6
            },
            "id": "#maxmem",
            "sbg:toolDefaultValue": "14g"
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:job": {
        "allocatedResources": {
            "mem": 58000,
            "cpu": 1
        },
        "inputs": {
            "output_prefix": "output_prefix-string-value",
            "min_res": 4,
            "maxmem": "maxmem-string-value",
            "input_pairs": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/input_pairs.ext",
                "class": "File"
            },
            "chromsizes_file": {
                "size": 0,
                "secondaryFiles": [],
                "path": "/path/to/chromsizes_file.ext",
                "class": "File"
            },
            "higlass": "higlass-string-value"
        }
    },
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "sbg:id": "4dn-dcic/dev/pairs2hic/15",
    "sbg:createdOn": 1496168605,
    "stdin": "",
    "arguments": [],
    "label": "pairs2hic",
    "temporaryFailCodes": [],
    "sbg:validationErrors": [],
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "requirements": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdBy": "4dn-dcic",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496168605,
            "sbg:revision": 0,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496168842,
            "sbg:revision": 1,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496168924,
            "sbg:revision": 2,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496172319,
            "sbg:revision": 3,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496176108,
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496178546,
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500331857,
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "added java maxmem as parameter",
            "sbg:modifiedOn": 1501513062,
            "sbg:revision": 7,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501595773,
            "sbg:revision": 8,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501605274,
            "sbg:revision": 9,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501637382,
            "sbg:revision": 10,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501689608,
            "sbg:revision": 11,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501689663,
            "sbg:revision": 12,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501689805,
            "sbg:revision": 13,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "15GB mem",
            "sbg:modifiedOn": 1501707253,
            "sbg:revision": 14,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
            "sbg:modifiedOn": 1501780759,
            "sbg:revision": 15,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:latestRevision": 15,
    "class": "CommandLineTool",
    "sbg:image_url": null,
    "cwlVersion": "sbg:draft-2",
    "successCodes": [],
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
    "stdout": "",
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
    "sbg:modifiedBy": "4dn-dcic",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/15/raw/",
    "sbg:modifiedOn": 1501780759,
    "description": "",
    "sbg:sbgMaintained": false
}