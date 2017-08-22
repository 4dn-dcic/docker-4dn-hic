{
    "stdin": "",
    "sbg:image_url": null,
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "sbg:projectName": "Dev",
    "outputs": [
        {
            "id": "#output_hic",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.hic"
            }
        }
    ],
    "successCodes": [],
    "class": "CommandLineTool",
    "inputs": [
        {
            "id": "#input_pairs",
            "sbg:fileTypes": ".PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1,
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
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true
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
                "separate": true,
                "position": 3,
                "sbg:cmdInclude": true
            }
        },
        {
            "id": "#min_res",
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
            }
        },
        {
            "id": "#higlass",
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
            }
        },
        {
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "14g",
            "inputBinding": {
                "separate": true,
                "position": 6,
                "sbg:cmdInclude": true
            }
        }
    ],
    "sbg:project": "4dn-dcic/dev",
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
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/4dn-hic:v35",
            "diskSize": null
        }
    ],
    "arguments": [],
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
        },
        {
            "sbg:revisionNotes": "docker v33",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502843453,
            "sbg:revision": 16
        },
        {
            "sbg:revisionNotes": "docker v34",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1503000477,
            "sbg:revision": 17
        },
        {
            "sbg:revisionNotes": "docker v35",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1503089862,
            "sbg:revision": 18
        }
    ],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:cmdPreview": "run-juicebox-pre.sh",
    "sbg:modifiedOn": 1503089862,
    "temporaryFailCodes": [],
    "sbg:job": {
        "allocatedResources": {
            "mem": 58000,
            "cpu": 1
        },
        "inputs": {
            "chromsizes_file": {
                "class": "File",
                "size": 0,
                "path": "/path/to/chromsizes_file.ext",
                "secondaryFiles": []
            },
            "input_pairs": {
                "class": "File",
                "size": 0,
                "path": "/path/to/input_pairs.ext",
                "secondaryFiles": []
            },
            "maxmem": "maxmem-string-value",
            "higlass": "higlass-string-value",
            "output_prefix": "output_prefix-string-value",
            "min_res": 4
        }
    },
    "requirements": [],
    "sbg:revisionNotes": "docker v35",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/18/raw/",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:revision": 18,
    "sbg:latestRevision": 18,
    "description": "",
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
    "cwlVersion": "sbg:draft-2",
    "label": "pairs2hic",
    "sbg:id": "4dn-dcic/dev/pairs2hic/18",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdOn": 1496168605,
    "stdout": "",
    "sbg:createdBy": "4dn-dcic"
}