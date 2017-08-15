{
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "stdout": "",
    "class": "CommandLineTool",
    "sbg:modifiedOn": 1501780759,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/15/raw/",
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
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:projectName": "Dev",
    "sbg:validationErrors": [],
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
            "dockerImageId": "",
            "class": "DockerRequirement",
            "diskSize": null,
            "dockerPull": "duplexa/4dn-hic:v30"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "label": "pairs2hic",
    "sbg:createdBy": "4dn-dcic",
    "sbg:job": {
        "inputs": {
            "higlass": "higlass-string-value",
            "maxmem": "maxmem-string-value",
            "min_res": 4,
            "output_prefix": "output_prefix-string-value",
            "input_pairs": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_pairs.ext"
            },
            "chromsizes_file": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/chromsizes_file.ext"
            }
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 58000
        }
    },
    "sbg:id": "4dn-dcic/dev/pairs2hic/15",
    "sbg:revision": 15,
    "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
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
    "stdin": "",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "successCodes": [],
    "description": "",
    "sbg:sbgMaintained": false,
    "sbg:createdOn": 1496168605,
    "sbg:project": "4dn-dcic/dev",
    "temporaryFailCodes": [],
    "requirements": [],
    "inputs": [
        {
            "sbg:fileTypes": ".PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1
            },
            "id": "#input_pairs"
        },
        {
            "sbg:fileTypes": ".CHROM.SIZES",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "id": "#chromsizes_file"
        },
        {
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 3
            },
            "id": "#output_prefix"
        },
        {
            "sbg:toolDefaultValue": "5000",
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 4
            },
            "id": "#min_res"
        },
        {
            "sbg:toolDefaultValue": "1",
            "sbg:stageInput": null,
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 5
            },
            "id": "#higlass"
        },
        {
            "sbg:toolDefaultValue": "14g",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 6
            },
            "id": "#maxmem"
        }
    ],
    "sbg:latestRevision": 15,
    "sbg:image_url": null,
    "arguments": []
}