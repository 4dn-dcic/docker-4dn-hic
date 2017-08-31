{
    "sbg:createdBy": "4dn-dcic",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "baseCommand": [
        "merged_nodup2pairs.pl"
    ],
    "sbg:id": "4dn-dcic/dev/juicer2pairs/9",
    "sbg:createdOn": 1495826137,
    "sbg:latestRevision": 9,
    "sbg:job": {
        "inputs": {
            "chromsize": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/chromsize.ext"
            },
            "outprefix": "outprefix-string-value",
            "nsplit": 8,
            "input_merged_nodups": {
                "size": 0,
                "class": "File",
                "secondaryFiles": [],
                "path": "/path/to/input_merged_nodups.ext"
            },
            "max_remove_mapq": 2
        },
        "allocatedResources": {
            "mem": 12000,
            "cpu": 8
        }
    },
    "hints": [
        {
            "class": "sbg:CPURequirement",
            "value": 8
        },
        {
            "class": "sbg:MemRequirement",
            "value": 12000
        },
        {
            "dockerPull": "duplexa/4dn-hic:v35",
            "dockerImageId": "",
            "class": "DockerRequirement"
        }
    ],
    "requirements": [],
    "label": "juicer2pairs",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1495826137,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1495826456,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1496170558,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedOn": 1496170675,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1499285187,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 4
        },
        {
            "sbg:modifiedOn": 1499966837,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 5
        },
        {
            "sbg:modifiedOn": 1499976359,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 6
        },
        {
            "sbg:modifiedOn": 1499976847,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 7
        },
        {
            "sbg:modifiedOn": 1499980862,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 8
        },
        {
            "sbg:modifiedOn": 1504210977,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 9
        }
    ],
    "outputs": [
        {
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "sbg:fileTypes": ".PAIRS.GZ",
            "id": "#out_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "sbg:fileTypes": ".PX2",
            "id": "#out_pairs_px",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:projectName": "Dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/juicer2pairs/9/raw/",
    "sbg:sbgMaintained": false,
    "sbg:image_url": null,
    "cwlVersion": "sbg:draft-2",
    "sbg:validationErrors": [],
    "temporaryFailCodes": [],
    "description": "",
    "sbg:cmdPreview": "merged_nodup2pairs.pl",
    "inputs": [
        {
            "sbg:fileTypes": ".TXT",
            "id": "#input_merged_nodups",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            }
        },
        {
            "sbg:fileTypes": ".CHROM.SIZES",
            "id": "#chromsize",
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": true
            }
        },
        {
            "id": "#nsplit",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "100",
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "prefix": "-s",
                "separate": true
            }
        },
        {
            "id": "#outprefix",
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "out",
            "inputBinding": {
                "position": 5,
                "sbg:cmdInclude": true,
                "separate": true
            }
        },
        {
            "id": "#max_remove_mapq",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "prefix": "-m",
                "separate": true
            }
        }
    ],
    "stdout": "",
    "stdin": "",
    "successCodes": [],
    "sbg:modifiedOn": 1504210977,
    "class": "CommandLineTool",
    "arguments": [],
    "sbg:revision": 9
}