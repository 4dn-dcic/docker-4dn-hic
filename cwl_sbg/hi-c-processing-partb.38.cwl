{
    "sbg:latestRevision": 38,
    "sbg:canvas_zoom": 0.6999999999999997,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "description": "",
    "class": "Workflow",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partb/38.png",
    "inputs": [
        {
            "sbg:y": 365.8544025321941,
            "sbg:x": -44.285710918659674,
            "sbg:fileTypes": ".CHROM.SIZES",
            "type": [
                "null",
                "File"
            ],
            "label": "chrsizes",
            "id": "#chrsizes"
        },
        {
            "sbg:y": 138.56737856934552,
            "sbg:x": -32.85716799814047,
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "label": "input_pairs",
            "id": "#input_pairs"
        },
        {
            "sbg:stageInput": null,
            "id": "#min_res",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "5000"
        },
        {
            "required": false,
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "8"
        },
        {
            "sbg:stageInput": null,
            "required": false,
            "type": [
                "null",
                "int"
            ],
            "sbg:includeInPorts": false,
            "id": "#binsize"
        }
    ],
    "sbg:canvas_x": 108,
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionNotes": "cooler 16G mem max_split parameter included as a default 2 (not modifiable)",
    "sbg:createdBy": "duplexa",
    "sbg:sbgMaintained": false,
    "steps": [
        {
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs_index"
                },
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ],
            "sbg:y": 192.94197236852995,
            "sbg:x": 385.57145629610346,
            "run": {
                "y": 192.94197236852995,
                "sbg:cmdPreview": "run-merge-pairs.sh",
                "hints": [
                    {
                        "class": "sbg:CPURequirement",
                        "value": 1
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 4000
                    },
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v26"
                    },
                    {
                        "class": "ExpressionEngineRequirement",
                        "value": ""
                    }
                ],
                "sbg:latestRevision": 25,
                "description": "",
                "class": "CommandLineTool",
                "sbg:image_url": null,
                "sbg:id": "4dn-dcic/dev/merge-pairs/25",
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "id": "#outprefix",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out"
                    },
                    {
                        "required": false,
                        "sbg:stageInput": "copy",
                        "sbg:fileTypes": "PAIRS.GZ",
                        "inputBinding": {
                            "separate": true,
                            "position": 2,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "id": "#input_pairs"
                    }
                ],
                "successCodes": [],
                "cwlVersion": "sbg:draft-2",
                "requirements": [
                    {
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine"
                    }
                ],
                "sbg:createdBy": "duplexa",
                "sbg:sbgMaintained": false,
                "stdout": "",
                "sbg:revision": 25,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143121
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143406
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143659
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143834
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143945
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144065
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144200
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144240
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144301
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149340
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149428
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149963
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479155094
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1479241188
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:revisionNotes": "now using 4dn-hic docker image",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488524515
                    },
                    {
                        "sbg:revision": 15,
                        "sbg:revisionNotes": "pairs and index are copied not links, so that they go together.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488524641
                    },
                    {
                        "sbg:revision": 16,
                        "sbg:revisionNotes": "removed blank secondary file requirement",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488524868
                    },
                    {
                        "sbg:revision": 17,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488525221
                    },
                    {
                        "sbg:revision": 18,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488529667
                    },
                    {
                        "sbg:revision": 19,
                        "sbg:revisionNotes": "removed outdir in the output glob",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488531529
                    },
                    {
                        "sbg:revision": 20,
                        "sbg:revisionNotes": "fixed output file name",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488567441
                    },
                    {
                        "sbg:revision": 21,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1490716980
                    },
                    {
                        "sbg:revision": 22,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496166568
                    },
                    {
                        "sbg:revision": 23,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496188642
                    },
                    {
                        "sbg:revision": 24,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499356728
                    },
                    {
                        "sbg:revision": 25,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1500331813
                    }
                ],
                "baseCommand": [
                    "run-merge-pairs.sh"
                ],
                "outputs": [
                    {
                        "sbg:fileTypes": "PX2",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.outprefix + '.pairs.gz.px2'"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#output_pairs_index"
                    },
                    {
                        "sbg:fileTypes": "PAIRS.GZ",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.outprefix + '.pairs.gz'"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#output_pairs"
                    }
                ],
                "sbg:projectName": "Dev",
                "sbg:validationErrors": [],
                "sbg:job": {
                    "inputs": {
                        "input_pairs": [
                            {
                                "class": "File",
                                "size": 0,
                                "path": "/path/to/input_pairs-1.ext",
                                "secondaryFiles": []
                            },
                            {
                                "class": "File",
                                "size": 0,
                                "path": "/path/to/input_pairs-2.ext",
                                "secondaryFiles": []
                            }
                        ],
                        "outprefix": "outprefix-string-value"
                    },
                    "allocatedResources": {
                        "mem": 4000,
                        "cpu": 1
                    }
                },
                "temporaryFailCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/merge-pairs/25",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "label": "merge-pairs",
                "sbg:links": [],
                "sbg:modifiedOn": 1500331813,
                "arguments": [],
                "stdin": "",
                "sbg:createdOn": 1479143121,
                "x": 385.57145629610346,
                "sbg:project": "4dn-dcic/dev",
                "id": "4dn-dcic/dev/merge-pairs/25"
            },
            "inputs": [
                {
                    "default": "out",
                    "id": "#merge_pairs.outprefix"
                },
                {
                    "source": [
                        "#input_pairs"
                    ],
                    "id": "#merge_pairs.input_pairs"
                }
            ],
            "id": "#merge_pairs"
        },
        {
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
            "sbg:y": 440.9375780899948,
            "sbg:x": 698.5716418246949,
            "run": {
                "y": 440.9375780899948,
                "sbg:latestRevision": 15,
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
                "sbg:cmdPreview": "run-juicebox-pre.sh",
                "description": "",
                "class": "CommandLineTool",
                "sbg:image_url": null,
                "sbg:id": "4dn-dcic/dev/pairs2hic/15",
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "id": "#output_prefix",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out"
                    },
                    {
                        "required": false,
                        "sbg:toolDefaultValue": "5000",
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "separate": true,
                            "position": 4,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#min_res"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 6,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "id": "#maxmem",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "14g"
                    },
                    {
                        "sbg:fileTypes": ".PAIRS.GZ",
                        "required": false,
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_pairs"
                    },
                    {
                        "required": false,
                        "sbg:toolDefaultValue": "1",
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "separate": true,
                            "position": 5,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#higlass"
                    },
                    {
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "required": false,
                        "inputBinding": {
                            "separate": true,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#chromsizes_file"
                    }
                ],
                "successCodes": [],
                "cwlVersion": "sbg:draft-2",
                "requirements": [],
                "sbg:createdBy": "4dn-dcic",
                "sbg:sbgMaintained": false,
                "stdout": "",
                "sbg:revision": 15,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496168605
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496168842
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496168924
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496172319
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496176108
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496178546
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1500331857
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:revisionNotes": "added java maxmem as parameter",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501513062
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501595773
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501605274
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501637382
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501689608
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501689663
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501689805
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:revisionNotes": "15GB mem",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501707253
                    },
                    {
                        "sbg:revision": 15,
                        "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501780759
                    }
                ],
                "baseCommand": [
                    "run-juicebox-pre.sh"
                ],
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
                "sbg:projectName": "Dev",
                "sbg:validationErrors": [],
                "sbg:job": {
                    "inputs": {
                        "min_res": 4,
                        "maxmem": "maxmem-string-value",
                        "chromsizes_file": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/chromsizes_file.ext",
                            "secondaryFiles": []
                        },
                        "higlass": "higlass-string-value",
                        "input_pairs": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_pairs.ext",
                            "secondaryFiles": []
                        },
                        "output_prefix": "output_prefix-string-value"
                    },
                    "allocatedResources": {
                        "mem": 58000,
                        "cpu": 1
                    }
                },
                "temporaryFailCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/pairs2hic/15",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "label": "pairs2hic",
                "sbg:modifiedOn": 1501780759,
                "arguments": [],
                "stdin": "",
                "sbg:createdOn": 1496168605,
                "x": 698.5716418246949,
                "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
                "sbg:project": "4dn-dcic/dev",
                "id": "4dn-dcic/dev/pairs2hic/15"
            },
            "inputs": [
                {
                    "default": "out",
                    "id": "#pairs2hic.output_prefix"
                },
                {
                    "source": [
                        "#min_res"
                    ],
                    "id": "#pairs2hic.min_res"
                },
                {
                    "default": "56g",
                    "id": "#pairs2hic.maxmem"
                },
                {
                    "source": [
                        "#merge_pairs.output_pairs"
                    ],
                    "id": "#pairs2hic.input_pairs"
                },
                {
                    "default": "1",
                    "id": "#pairs2hic.higlass"
                },
                {
                    "source": [
                        "#chrsizes"
                    ],
                    "id": "#pairs2hic.chromsizes_file"
                }
            ],
            "id": "#pairs2hic"
        },
        {
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
            "sbg:y": 238.94198231399068,
            "sbg:x": 658.4286107335774,
            "run": {
                "sbg:cmdPreview": "run-cooler.sh",
                "hints": [
                    {
                        "class": "sbg:CPURequirement",
                        "value": 2
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 16000
                    },
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v31"
                    }
                ],
                "sbg:latestRevision": 19,
                "description": "",
                "class": "CommandLineTool",
                "sbg:image_url": null,
                "sbg:id": "4dn-dcic/dev/cooler/19",
                "inputs": [
                    {
                        "sbg:fileTypes": "PAIRS.GZ",
                        "sbg:stageInput": "copy",
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#pairs"
                    },
                    {
                        "sbg:fileTypes": "PX2",
                        "sbg:stageInput": "copy",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#pairs_index"
                    },
                    {
                        "sbg:fileTypes": "SIZES",
                        "inputBinding": {
                            "separate": true,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#chrsizes"
                    },
                    {
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "separate": true,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#binsize"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 5,
                            "sbg:cmdInclude": true
                        },
                        "id": "#outprefix",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 4,
                            "sbg:cmdInclude": true
                        },
                        "id": "#ncores",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "8"
                    },
                    {
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "separate": true,
                            "position": 6,
                            "sbg:cmdInclude": true
                        },
                        "id": "#max_split",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "2"
                    }
                ],
                "successCodes": [],
                "cwlVersion": "sbg:draft-2",
                "requirements": [],
                "sbg:createdBy": "duplexa",
                "sbg:sbgMaintained": false,
                "stdout": "",
                "sbg:revision": 19,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488495202
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488495392
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488495453
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488499764
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488511643
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488511809
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:revisionNotes": "now using 4dn-hic docker image",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488525294
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488529899
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1490716960
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496167357
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496168048
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496175693
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496175978
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499354982
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499625090
                    },
                    {
                        "sbg:revision": 15,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499625139
                    },
                    {
                        "sbg:revision": 16,
                        "sbg:revisionNotes": "Mem 960GB",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499627281
                    },
                    {
                        "sbg:revision": 17,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499690249
                    },
                    {
                        "sbg:revision": 18,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1500331793
                    },
                    {
                        "sbg:revision": 19,
                        "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501908398
                    }
                ],
                "baseCommand": [
                    "run-cooler.sh"
                ],
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.cool"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#out_cool"
                    }
                ],
                "sbg:projectName": "Dev",
                "sbg:validationErrors": [],
                "sbg:job": {
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "pairs": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/pairs.ext",
                            "secondaryFiles": [
                                {
                                    "path": "$job.inputs.pairs + '.px2'"
                                }
                            ]
                        },
                        "pairs_index": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/pairs_index.ext",
                            "secondaryFiles": []
                        },
                        "chrsizes": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/chrsize.ext",
                            "secondaryFiles": []
                        },
                        "ncores": 5,
                        "binsize": 4,
                        "max_split": 0
                    },
                    "allocatedResources": {
                        "mem": 16000,
                        "cpu": 2
                    }
                },
                "temporaryFailCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "label": "cooler",
                "sbg:modifiedOn": 1501908398,
                "arguments": [],
                "stdin": "",
                "sbg:createdOn": 1488495202,
                "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
                "sbg:project": "4dn-dcic/dev",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/19/raw/"
            },
            "inputs": [
                {
                    "source": [
                        "#merge_pairs.output_pairs"
                    ],
                    "id": "#cooler.pairs"
                },
                {
                    "source": [
                        "#merge_pairs.output_pairs_index"
                    ],
                    "id": "#cooler.pairs_index"
                },
                {
                    "source": [
                        "#chrsizes"
                    ],
                    "id": "#cooler.chrsizes"
                },
                {
                    "source": [
                        "#binsize"
                    ],
                    "id": "#cooler.binsize"
                },
                {
                    "default": "out",
                    "id": "#cooler.outprefix"
                },
                {
                    "source": [
                        "#ncores"
                    ],
                    "id": "#cooler.ncores"
                },
                {
                    "default": 2,
                    "id": "#cooler.max_split"
                }
            ],
            "id": "#cooler"
        }
    ],
    "sbg:revision": 38,
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144431
        },
        {
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144466
        },
        {
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479146390
        },
        {
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149385
        },
        {
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149442
        },
        {
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479150047
        },
        {
            "sbg:revision": 6,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1479241950
        },
        {
            "sbg:revision": 7,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530005
        },
        {
            "sbg:revision": 8,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530109
        },
        {
            "sbg:revision": 9,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530281
        },
        {
            "sbg:revision": 10,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530836
        },
        {
            "sbg:revision": 11,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530872
        },
        {
            "sbg:revision": 12,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488531567
        },
        {
            "sbg:revision": 13,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496181927
        },
        {
            "sbg:revision": 14,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496181955
        },
        {
            "sbg:revision": 15,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496182121
        },
        {
            "sbg:revision": 16,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496188521
        },
        {
            "sbg:revision": 17,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496188582
        },
        {
            "sbg:revision": 18,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496188729
        },
        {
            "sbg:revision": 19,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496190149
        },
        {
            "sbg:revision": 20,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499355043
        },
        {
            "sbg:revision": 21,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499356869
        },
        {
            "sbg:revision": 22,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499363602
        },
        {
            "sbg:revision": 23,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499370019
        },
        {
            "sbg:revision": 24,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499460260
        },
        {
            "sbg:revision": 25,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499529552
        },
        {
            "sbg:revision": 26,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499625173
        },
        {
            "sbg:revision": 27,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499627303
        },
        {
            "sbg:revision": 28,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500331892
        },
        {
            "sbg:revision": 29,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501513539
        },
        {
            "sbg:revision": 30,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501514350
        },
        {
            "sbg:revision": 31,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501514405
        },
        {
            "sbg:revision": 32,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689712
        },
        {
            "sbg:revision": 33,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689823
        },
        {
            "sbg:revision": 34,
            "sbg:revisionNotes": "15G mem for pairs2hic",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501707297
        },
        {
            "sbg:revision": 35,
            "sbg:revisionNotes": "r3.8xlarge for cooler",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501765060
        },
        {
            "sbg:revision": 36,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501780788
        },
        {
            "sbg:revision": 37,
            "sbg:revisionNotes": "workflow pairs2hic maxmem set up 56g",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501780943
        },
        {
            "sbg:revision": 38,
            "sbg:revisionNotes": "cooler 16G mem max_split parameter included as a default 2 (not modifiable)",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501908603
        }
    ],
    "hints": [],
    "outputs": [
        {
            "required": false,
            "source": [
                "#merge_pairs.output_pairs_index"
            ],
            "sbg:includeInPorts": true,
            "sbg:x": 578.2857636043005,
            "sbg:y": -0.7171201026670033,
            "sbg:fileTypes": "PX2",
            "type": [
                "null",
                "File"
            ],
            "label": "output_pairs_index",
            "id": "#output_pairs_index"
        },
        {
            "required": false,
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "sbg:includeInPorts": true,
            "sbg:x": 814.5714787074501,
            "sbg:y": 139.7114601133321,
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "label": "output_pairs",
            "id": "#output_pairs"
        },
        {
            "required": false,
            "source": [
                "#cooler.out_cool"
            ],
            "sbg:includeInPorts": true,
            "sbg:x": 787.2858953184084,
            "sbg:y": 294.56866071643174,
            "type": [
                "null",
                "File"
            ],
            "label": "out_cool",
            "id": "#out_cool"
        },
        {
            "required": false,
            "source": [
                "#pairs2hic.output_hic"
            ],
            "sbg:includeInPorts": true,
            "sbg:x": 910.0000171272096,
            "sbg:y": 524.2816587756744,
            "type": [
                "null",
                "File"
            ],
            "label": "output_hic",
            "id": "#output_hic"
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedOn": 1501908603,
    "requirements": [],
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partb/38",
    "sbg:createdOn": 1479144431,
    "sbg:canvas_y": 43,
    "label": "Hi-C_processing_partB",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partb/38/raw/"
}