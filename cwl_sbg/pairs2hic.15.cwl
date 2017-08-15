{
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "cwlVersion": "sbg:draft-2",
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
            "diskSize": null,
            "class": "DockerRequirement",
            "dockerImageId": ""
        }
    ],
    "requirements": [],
    "temporaryFailCodes": [],
    "sbg:latestRevision": 15,
    "sbg:revision": 15,
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
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "stdout": "",
    "successCodes": [],
    "arguments": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:sbgMaintained": false,
    "description": "",
    "sbg:createdBy": "4dn-dcic",
    "sbg:createdOn": 1496168605,
    "sbg:validationErrors": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/15/raw/",
    "inputs": [
        {
            "sbg:fileTypes": ".PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true
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
                "position": 2,
                "sbg:cmdInclude": true
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
                "position": 3,
                "sbg:cmdInclude": true
            },
            "id": "#output_prefix"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "5000",
            "sbg:stageInput": null,
            "inputBinding": {
                "separate": true,
                "position": 4,
                "sbg:cmdInclude": true
            },
            "id": "#min_res"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "1",
            "sbg:stageInput": null,
            "inputBinding": {
                "separate": true,
                "position": 5,
                "sbg:cmdInclude": true
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
                "position": 6,
                "sbg:cmdInclude": true
            },
            "id": "#maxmem"
        }
    ],
    "sbg:image_url": null,
    "label": "pairs2hic",
    "stdin": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:id": "4dn-dcic/dev/pairs2hic/15",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496168605,
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496168842,
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496168924,
            "sbg:revision": 2
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496172319,
            "sbg:revision": 3
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496176108,
            "sbg:revision": 4
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496178546,
            "sbg:revision": 5
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500331857,
            "sbg:revision": 6
        },
        {
            "sbg:revisionNotes": "added java maxmem as parameter",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501513062,
            "sbg:revision": 7
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501595773,
            "sbg:revision": 8
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501605274,
            "sbg:revision": 9
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501637382,
            "sbg:revision": 10
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689608,
            "sbg:revision": 11
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689663,
            "sbg:revision": 12
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689805,
            "sbg:revision": 13
        },
        {
            "sbg:revisionNotes": "15GB mem",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501707253,
            "sbg:revision": 14
        },
        {
            "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501780759,
            "sbg:revision": 15
        }
    ],
    "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
    "sbg:job": {
        "allocatedResources": {
            "mem": 58000,
            "cpu": 1
        },
        "inputs": {
            "min_res": 4,
            "output_prefix": "output_prefix-string-value",
            "maxmem": "maxmem-string-value",
            "higlass": "higlass-string-value",
            "input_pairs": {
                "path": "/path/to/input_pairs.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            },
            "chromsizes_file": {
                "path": "/path/to/chromsizes_file.ext",
                "size": 0,
                "class": "File",
                "secondaryFiles": []
            }
        }
    },
    "sbg:projectName": "Dev",
    "sbg:modifiedOn": 1501780759,
    "class": "CommandLineTool"
}