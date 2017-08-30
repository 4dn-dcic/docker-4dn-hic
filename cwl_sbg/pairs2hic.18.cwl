{
    "sbg:image_url": null,
    "temporaryFailCodes": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/18/raw/",
    "sbg:createdBy": "4dn-dcic",
    "baseCommand": [
        "run-juicebox-pre.sh"
    ],
    "stdin": "",
    "sbg:id": "4dn-dcic/dev/pairs2hic/18",
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedBy": "4dn-dcic",
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
    "arguments": [],
    "sbg:modifiedOn": 1503089862,
    "label": "pairs2hic",
    "sbg:createdOn": 1496168605,
    "sbg:revision": 18,
    "sbg:sbgMaintained": false,
    "cwlVersion": "sbg:draft-2",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:projectName": "Dev",
    "stdout": "",
    "sbg:validationErrors": [],
    "description": "",
    "sbg:revisionNotes": "docker v35",
    "sbg:latestRevision": 18,
    "requirements": [],
    "sbg:cmdPreview": "run-juicebox-pre.sh",
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
            "dockerPull": "duplexa/4dn-hic:v35",
            "diskSize": null,
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
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
            "sbg:fileTypes": ".PAIRS.GZ",
            "id": "#input_pairs"
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
            "sbg:fileTypes": ".CHROM.SIZES",
            "id": "#chromsizes_file"
        },
        {
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "out",
            "type": [
                "null",
                "string"
            ],
            "id": "#output_prefix"
        },
        {
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "5000",
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "id": "#min_res"
        },
        {
            "inputBinding": {
                "position": 5,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "1",
            "type": [
                "null",
                "string"
            ],
            "sbg:stageInput": null,
            "id": "#higlass"
        },
        {
            "inputBinding": {
                "position": 6,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "14g",
            "type": [
                "null",
                "string"
            ],
            "id": "#maxmem"
        }
    ],
    "sbg:contributors": [
        "4dn-dcic"
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
    "sbg:job": {
        "allocatedResources": {
            "cpu": 1,
            "mem": 58000
        },
        "inputs": {
            "maxmem": "maxmem-string-value",
            "input_pairs": {
                "secondaryFiles": [],
                "path": "/path/to/input_pairs.ext",
                "class": "File",
                "size": 0
            },
            "higlass": "higlass-string-value",
            "chromsizes_file": {
                "secondaryFiles": [],
                "path": "/path/to/chromsizes_file.ext",
                "class": "File",
                "size": 0
            },
            "min_res": 4,
            "output_prefix": "output_prefix-string-value"
        }
    },
    "class": "CommandLineTool",
    "successCodes": []
}