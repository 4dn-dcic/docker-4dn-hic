{
    "class": "CommandLineTool",
    "sbg:createdBy": "4dn-dcic",
    "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
    "sbg:latestRevision": 15,
    "sbg:revision": 15,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/15/raw/",
    "sbg:project": "4dn-dcic/dev",
    "successCodes": [],
    "sbg:id": "4dn-dcic/dev/pairs2hic/15",
    "stdout": "",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "temporaryFailCodes": [],
    "label": "pairs2hic",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:projectName": "Dev",
    "sbg:image_url": null,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1496168605,
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1496168842,
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1496168924,
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1496172319,
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1496176108,
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1496178546,
            "sbg:revisionNotes": null,
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1500331857,
            "sbg:revisionNotes": null,
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501513062,
            "sbg:revisionNotes": "added java maxmem as parameter",
            "sbg:revision": 7,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501595773,
            "sbg:revisionNotes": null,
            "sbg:revision": 8,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501605274,
            "sbg:revisionNotes": null,
            "sbg:revision": 9,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501637382,
            "sbg:revisionNotes": null,
            "sbg:revision": 10,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501689608,
            "sbg:revisionNotes": null,
            "sbg:revision": 11,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501689663,
            "sbg:revisionNotes": null,
            "sbg:revision": 12,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501689805,
            "sbg:revisionNotes": null,
            "sbg:revision": 13,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501707253,
            "sbg:revisionNotes": "15GB mem",
            "sbg:revision": 14,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1501780759,
            "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
            "sbg:revision": 15,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:sbgMaintained": false,
    "inputs": [
        {
            "sbg:fileTypes": ".PAIRS.GZ",
            "id": "#input_pairs",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
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
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:toolDefaultValue": "out",
            "id": "#output_prefix",
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "id": "#min_res",
            "sbg:toolDefaultValue": "5000",
            "sbg:stageInput": null,
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#higlass",
            "sbg:toolDefaultValue": "1",
            "sbg:stageInput": null,
            "inputBinding": {
                "position": 5,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:toolDefaultValue": "14g",
            "id": "#maxmem",
            "inputBinding": {
                "position": 6,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "type": [
                "null",
                "string"
            ]
        }
    ],
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
            "dockerImageId": "",
            "diskSize": null,
            "dockerPull": "duplexa/4dn-hic:v30"
        }
    ],
    "sbg:modifiedOn": 1501780759,
    "stdin": "",
    "sbg:validationErrors": [],
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
    "description": "",
    "sbg:createdOn": 1496168605,
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 58000
        },
        "inputs": {
            "min_res": 4,
            "higlass": "higlass-string-value",
            "chromsizes_file": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/chromsizes_file.ext"
            },
            "maxmem": "maxmem-string-value",
            "input_pairs": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_pairs.ext"
            },
            "output_prefix": "output_prefix-string-value"
        }
    },
    "requirements": [],
    "arguments": []
}