{
    "class": "CommandLineTool",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1495826137,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1495826456,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1496170558,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1496170675,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1499285187,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1499966837,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedOn": 1499976359,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedOn": 1499976847,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedOn": 1499980862,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "baseCommand": [
        "merged_nodup2pairs.pl"
    ],
    "stdout": "",
    "sbg:cmdPreview": "merged_nodup2pairs.pl",
    "sbg:sbgMaintained": false,
    "sbg:latestRevision": 8,
    "sbg:id": "4dn-dcic/dev/juicer2pairs/8",
    "description": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/juicer2pairs/8/raw/",
    "cwlVersion": "sbg:draft-2",
    "sbg:projectName": "Dev",
    "sbg:createdOn": 1495826137,
    "sbg:job": {
        "inputs": {
            "max_remove_mapq": 2,
            "outprefix": "outprefix-string-value",
            "input_merged_nodups": {
                "class": "File",
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/input_merged_nodups.ext"
            },
            "chromsize": {
                "class": "File",
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/chromsize.ext"
            },
            "nsplit": 8
        },
        "allocatedResources": {
            "cpu": 8,
            "mem": 12000
        }
    },
    "sbg:revision": 8,
    "label": "juicer2pairs",
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
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "duplexa/4dn-hic:v26"
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz"
            },
            "id": "#out_pairs",
            "sbg:fileTypes": ".PAIRS.GZ"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*.bsorted.pairs.gz.px2"
            },
            "id": "#out_pairs_px",
            "sbg:fileTypes": ".PX2"
        }
    ],
    "temporaryFailCodes": [],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:image_url": null,
    "sbg:project": "4dn-dcic/dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdBy": "4dn-dcic",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 3,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#input_merged_nodups",
            "sbg:fileTypes": ".TXT"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "inputBinding": {
                "position": 4,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "id": "#chromsize",
            "sbg:fileTypes": ".CHROM.SIZES"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "position": 1,
                "sbg:cmdInclude": true,
                "prefix": "-s"
            },
            "sbg:toolDefaultValue": "100",
            "id": "#nsplit"
        },
        {
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "position": 5,
                "sbg:cmdInclude": true,
                "separate": true
            },
            "sbg:toolDefaultValue": "out",
            "id": "#outprefix"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "separate": true,
                "position": 2,
                "sbg:cmdInclude": true,
                "prefix": "-m"
            },
            "id": "#max_remove_mapq"
        }
    ],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "requirements": [],
    "successCodes": [],
    "arguments": [],
    "sbg:modifiedOn": 1499980862,
    "sbg:validationErrors": [],
    "stdin": ""
}