{
    "sbg:validationErrors": [],
    "stdin": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:id": "4dn-dcic/dev/pairs2hic/15",
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:project": "4dn-dcic/dev",
    "class": "CommandLineTool",
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "sbg:createdBy": "4dn-dcic",
    "sbg:revision": 15,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496168605
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496168842
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496168924
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496172319
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496176108
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496178546
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500331857
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 7,
            "sbg:revisionNotes": "added java maxmem as parameter",
            "sbg:modifiedOn": 1501513062
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 8,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501595773
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 9,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501605274
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 10,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501637382
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 11,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501689608
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 12,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501689663
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 13,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501689805
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 14,
            "sbg:revisionNotes": "15GB mem",
            "sbg:modifiedOn": 1501707253
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 15,
            "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
            "sbg:modifiedOn": 1501780759
        }
    ],
    "sbg:createdOn": 1496168605,
    "sbg:projectName": "Dev",
    "label": "pairs2hic",
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
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "sbg:fileTypes": ".PAIRS.GZ",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#input_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:fileTypes": ".CHROM.SIZES",
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#chromsizes_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "out",
            "id": "#output_prefix",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "sbg:stageInput": null,
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "5000",
            "id": "#min_res",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "sbg:stageInput": null,
            "inputBinding": {
                "position": 5,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "1",
            "id": "#higlass",
            "type": [
                "null",
                "string"
            ]
        },
        {
            "inputBinding": {
                "position": 6,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "14g",
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/15/raw/",
    "requirements": [],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1501780759,
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
            "dockerImageId": "",
            "diskSize": null,
            "dockerPull": "duplexa/4dn-hic:v30",
            "class": "DockerRequirement"
        }
    ],
    "stdout": "",
    "sbg:job": {
        "allocatedResources": {
            "mem": 58000,
            "cpu": 1
        },
        "inputs": {
            "maxmem": "maxmem-string-value",
            "output_prefix": "output_prefix-string-value",
            "input_pairs": {
                "path": "/path/to/input_pairs.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "min_res": 4,
            "chromsizes_file": {
                "path": "/path/to/chromsizes_file.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "higlass": "higlass-string-value"
        }
    },
    "sbg:image_url": null,
    "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
    "arguments": [],
    "sbg:latestRevision": 15,
    "successCodes": [],
    "temporaryFailCodes": []
}