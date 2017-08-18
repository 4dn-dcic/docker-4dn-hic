{
    "requirements": [],
    "sbg:latestRevision": 18,
    "class": "CommandLineTool",
    "temporaryFailCodes": [],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:sbgMaintained": false,
    "stdin": "",
    "stdout": "",
    "sbg:job": {
        "inputs": {
            "output_prefix": "output_prefix-string-value",
            "maxmem": "maxmem-string-value",
            "input_pairs": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_pairs.ext"
            },
            "min_res": 4,
            "chromsizes_file": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/chromsizes_file.ext"
            },
            "higlass": "higlass-string-value"
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 58000
        }
    },
    "successCodes": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionNotes": "docker v35",
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
            "sbg:fileTypes": ".PAIRS.GZ",
            "id": "#input_pairs"
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
            "sbg:fileTypes": ".CHROM.SIZES",
            "id": "#chromsizes_file"
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
            "sbg:stageInput": null,
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 4
            },
            "id": "#min_res",
            "sbg:toolDefaultValue": "5000"
        },
        {
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
            "id": "#higlass",
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
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdBy": "4dn-dcic",
    "label": "pairs2hic",
    "sbg:projectName": "Dev",
    "sbg:revision": 18,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/18/raw/",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedOn": 1503089862,
    "sbg:id": "4dn-dcic/dev/pairs2hic/18",
    "arguments": [],
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "sbg:validationErrors": [],
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
        },
        {
            "sbg:modifiedOn": 1502843453,
            "sbg:revisionNotes": "docker v33",
            "sbg:revision": 16,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1503000477,
            "sbg:revisionNotes": "docker v34",
            "sbg:revision": 17,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1503089862,
            "sbg:revisionNotes": "docker v35",
            "sbg:revision": 18,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:image_url": null,
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "sbg:createdOn": 1496168605,
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
            "class": "DockerRequirement",
            "diskSize": null,
            "dockerPull": "duplexa/4dn-hic:v35"
        }
    ],
    "description": ""
}