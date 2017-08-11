{
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:modifiedOn": 1502485439,
    "requirements": [],
    "sbg:createdBy": "duplexa",
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partb/39",
    "inputs": [
        {
            "sbg:y": 365.8544025321941,
            "id": "#chrsizes",
            "label": "chrsizes",
            "sbg:fileTypes": "SIZES",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": -44.285710918659674
        },
        {
            "sbg:y": 138.56737856934552,
            "id": "#input_pairs",
            "label": "input_pairs",
            "sbg:fileTypes": "PAIRS.GZ",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "sbg:x": -32.85716799814047
        },
        {
            "sbg:toolDefaultValue": "5000",
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "id": "#min_res"
        },
        {
            "sbg:stageInput": null,
            "required": false,
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize",
            "sbg:includeInPorts": false
        },
        {
            "sbg:toolDefaultValue": "8",
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "required": false
        },
        {
            "sbg:toolDefaultValue": "14g",
            "required": false,
            "type": [
                "null",
                "string"
            ],
            "id": "#maxmem",
            "sbg:suggestedValue": "14g"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:sbgMaintained": false,
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479144431
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479144466
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479146390
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479149385
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479149442
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479150047
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479241950
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488530005
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488530109
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488530281
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488530836
        },
        {
            "sbg:revision": 11,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488530872
        },
        {
            "sbg:revision": 12,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488531567
        },
        {
            "sbg:revision": 13,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496181927
        },
        {
            "sbg:revision": 14,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496181955
        },
        {
            "sbg:revision": 15,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496182121
        },
        {
            "sbg:revision": 16,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496188521
        },
        {
            "sbg:revision": 17,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496188582
        },
        {
            "sbg:revision": 18,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496188729
        },
        {
            "sbg:revision": 19,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496190149
        },
        {
            "sbg:revision": 20,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499355043
        },
        {
            "sbg:revision": 21,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499356869
        },
        {
            "sbg:revision": 22,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499363602
        },
        {
            "sbg:revision": 23,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499370019
        },
        {
            "sbg:revision": 24,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499460260
        },
        {
            "sbg:revision": 25,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499529552
        },
        {
            "sbg:revision": 26,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499625173
        },
        {
            "sbg:revision": 27,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499627303
        },
        {
            "sbg:revision": 28,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500331892
        },
        {
            "sbg:revision": 29,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501513539
        },
        {
            "sbg:revision": 30,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501514350
        },
        {
            "sbg:revision": 31,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501514405
        },
        {
            "sbg:revision": 32,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501689712
        },
        {
            "sbg:revision": 33,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501689823
        },
        {
            "sbg:revision": 34,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "15G mem for pairs2hic",
            "sbg:modifiedOn": 1501707297
        },
        {
            "sbg:revision": 35,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "r3.8xlarge for cooler",
            "sbg:modifiedOn": 1501765060
        },
        {
            "sbg:revision": 36,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501780788
        },
        {
            "sbg:revision": 37,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "workflow pairs2hic maxmem set up 56g",
            "sbg:modifiedOn": 1501780943
        },
        {
            "sbg:revision": 38,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "cooler 16G mem max_split parameter included as a default 2 (not modifiable)",
            "sbg:modifiedOn": 1501908603
        },
        {
            "sbg:revision": 39,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1502485439
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:validationErrors": [],
    "outputs": [
        {
            "sbg:y": -0.7171201026670033,
            "id": "#output_pairs_index",
            "required": false,
            "label": "output_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#merge_pairs.output_pairs_index"
            ],
            "sbg:fileTypes": "PX2",
            "sbg:x": 578.2857636043005,
            "sbg:includeInPorts": true
        },
        {
            "sbg:y": 139.7114601133321,
            "id": "#output_pairs",
            "required": false,
            "label": "output_pairs",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "sbg:fileTypes": "PAIRS.GZ",
            "sbg:x": 814.5714787074501,
            "sbg:includeInPorts": true
        },
        {
            "sbg:y": 294.56866071643174,
            "id": "#out_cool",
            "required": false,
            "label": "out_cool",
            "source": [
                "#cooler.out_cool"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 787.2858953184084,
            "sbg:includeInPorts": true
        },
        {
            "sbg:y": 524.2816587756744,
            "id": "#output_hic",
            "required": false,
            "label": "output_hic",
            "source": [
                "#pairs2hic.output_hic"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 910.0000171272096,
            "sbg:includeInPorts": true
        }
    ],
    "steps": [
        {
            "sbg:y": 192.94197236852995,
            "id": "#merge_pairs",
            "run": {
                "sbg:project": "4dn-dcic/dev",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:createdOn": 1479143121,
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "sbg:createdBy": "duplexa",
                "sbg:id": "4dn-dcic/dev/merge-pairs/25",
                "inputs": [
                    {
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "required": false
                    },
                    {
                        "sbg:stageInput": "copy",
                        "id": "#input_pairs",
                        "required": false,
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "sbg:fileTypes": "PAIRS.GZ",
                        "inputBinding": {
                            "itemSeparator": " ",
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        }
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/merge-pairs/25",
                "description": "",
                "x": 385.57145629610346,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479143121
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479143406
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479143659
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479143834
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479143945
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479144065
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479144200
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479144240
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479144301
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479149340
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479149428
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479149963
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479155094
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479241188
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "now using 4dn-hic docker image",
                        "sbg:modifiedOn": 1488524515
                    },
                    {
                        "sbg:revision": 15,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "pairs and index are copied not links, so that they go together.",
                        "sbg:modifiedOn": 1488524641
                    },
                    {
                        "sbg:revision": 16,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "removed blank secondary file requirement",
                        "sbg:modifiedOn": 1488524868
                    },
                    {
                        "sbg:revision": 17,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488525221
                    },
                    {
                        "sbg:revision": 18,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488529667
                    },
                    {
                        "sbg:revision": 19,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "removed outdir in the output glob",
                        "sbg:modifiedOn": 1488531529
                    },
                    {
                        "sbg:revision": 20,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "fixed output file name",
                        "sbg:modifiedOn": 1488567441
                    },
                    {
                        "sbg:revision": 21,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1490716980
                    },
                    {
                        "sbg:revision": 22,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496166568
                    },
                    {
                        "sbg:revision": 23,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496188642
                    },
                    {
                        "sbg:revision": 24,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499356728
                    },
                    {
                        "sbg:revision": 25,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1500331813
                    }
                ],
                "sbg:projectName": "Dev",
                "sbg:validationErrors": [],
                "outputs": [
                    {
                        "sbg:fileTypes": "PX2",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.outprefix + '.pairs.gz.px2'"
                            }
                        },
                        "id": "#output_pairs_index"
                    },
                    {
                        "sbg:fileTypes": "PAIRS.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.outprefix + '.pairs.gz'"
                            }
                        },
                        "id": "#output_pairs"
                    }
                ],
                "y": 192.94197236852995,
                "arguments": [],
                "successCodes": [],
                "id": "4dn-dcic/dev/merge-pairs/25",
                "hints": [
                    {
                        "value": 1,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": 4000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "dockerPull": "duplexa/4dn-hic:v26",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    },
                    {
                        "value": "",
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "sbg:links": [],
                "sbg:image_url": null,
                "baseCommand": [
                    "run-merge-pairs.sh"
                ],
                "sbg:revision": 25,
                "sbg:sbgMaintained": false,
                "sbg:modifiedOn": 1500331813,
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "stdin": "",
                "stdout": "",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "label": "merge-pairs",
                "temporaryFailCodes": [],
                "sbg:latestRevision": 25,
                "class": "CommandLineTool",
                "sbg:job": {
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "input_pairs": [
                            {
                                "secondaryFiles": [],
                                "size": 0,
                                "path": "/path/to/input_pairs-1.ext",
                                "class": "File"
                            },
                            {
                                "secondaryFiles": [],
                                "size": 0,
                                "path": "/path/to/input_pairs-2.ext",
                                "class": "File"
                            }
                        ]
                    },
                    "allocatedResources": {
                        "mem": 4000,
                        "cpu": 1
                    }
                },
                "sbg:cmdPreview": "run-merge-pairs.sh"
            },
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs_index"
                },
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ],
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
            "sbg:x": 385.57145629610346
        },
        {
            "sbg:y": 440.9375780899948,
            "id": "#pairs2hic",
            "run": {
                "sbg:project": "4dn-dcic/dev",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:createdOn": 1496168605,
                "requirements": [],
                "sbg:createdBy": "4dn-dcic",
                "temporaryFailCodes": [],
                "inputs": [
                    {
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#output_prefix",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        },
                        "required": false
                    },
                    {
                        "sbg:stageInput": null,
                        "id": "#min_res",
                        "required": false,
                        "sbg:toolDefaultValue": "5000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 4
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "14g",
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#maxmem",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 6
                        },
                        "required": false
                    },
                    {
                        "sbg:fileTypes": ".PAIRS.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_pairs",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "required": false
                    },
                    {
                        "sbg:stageInput": null,
                        "id": "#higlass",
                        "required": false,
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 5
                        }
                    },
                    {
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#chromsizes_file",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "required": false
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/pairs2hic/15",
                "x": 698.5716418246949,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496168605
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496168842
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496168924
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496172319
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496176108
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496178546
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1500331857
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "added java maxmem as parameter",
                        "sbg:modifiedOn": 1501513062
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1501595773
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1501605274
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1501637382
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1501689608
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1501689663
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1501689805
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "15GB mem",
                        "sbg:modifiedOn": 1501707253
                    },
                    {
                        "sbg:revision": 15,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
                        "sbg:modifiedOn": 1501780759
                    }
                ],
                "sbg:projectName": "Dev",
                "sbg:validationErrors": [],
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
                "y": 440.9375780899948,
                "arguments": [],
                "successCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "hints": [
                    {
                        "diskSize": null,
                        "value": 1,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "diskSize": null,
                        "value": 58000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "diskSize": null,
                        "dockerPull": "duplexa/4dn-hic:v30",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    }
                ],
                "id": "4dn-dcic/dev/pairs2hic/15",
                "sbg:image_url": null,
                "baseCommand": [
                    "run-juicebox-pre.sh"
                ],
                "sbg:revision": 15,
                "sbg:sbgMaintained": false,
                "sbg:modifiedOn": 1501780759,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "stdin": "",
                "description": "",
                "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
                "sbg:id": "4dn-dcic/dev/pairs2hic/15",
                "stdout": "",
                "sbg:latestRevision": 15,
                "class": "CommandLineTool",
                "label": "pairs2hic",
                "sbg:job": {
                    "inputs": {
                        "output_prefix": "output_prefix-string-value",
                        "chromsizes_file": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/chromsizes_file.ext",
                            "class": "File"
                        },
                        "min_res": 4,
                        "maxmem": "maxmem-string-value",
                        "input_pairs": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_pairs.ext",
                            "class": "File"
                        },
                        "higlass": "higlass-string-value"
                    },
                    "allocatedResources": {
                        "mem": 58000,
                        "cpu": 1
                    }
                },
                "sbg:cmdPreview": "run-juicebox-pre.sh"
            },
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
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
                    "source": [
                        "#maxmem"
                    ],
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
            "sbg:x": 698.5716418246949
        },
        {
            "sbg:y": 238.94198231399068,
            "id": "#cooler",
            "run": {
                "sbg:project": "4dn-dcic/dev",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:createdOn": 1488495202,
                "requirements": [],
                "sbg:createdBy": "duplexa",
                "temporaryFailCodes": [],
                "inputs": [
                    {
                        "sbg:fileTypes": "PX2",
                        "sbg:stageInput": "copy",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#pairs_index",
                        "required": false
                    },
                    {
                        "sbg:stageInput": "copy",
                        "id": "#pairs",
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "PAIRS.GZ",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 5
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "8",
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#ncores",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 4
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "2",
                        "sbg:stageInput": null,
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#max_split",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 6
                        }
                    },
                    {
                        "sbg:fileTypes": "SIZES",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#chrsizes",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "required": false
                    },
                    {
                        "sbg:stageInput": null,
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#binsize",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        }
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "x": 658.4286107335774,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488495202
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488495392
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488495453
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488499764
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488511643
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488511809
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "now using 4dn-hic docker image",
                        "sbg:modifiedOn": 1488525294
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488529899
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1490716960
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496167357
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496168048
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496175693
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496175978
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499354982
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499625090
                    },
                    {
                        "sbg:revision": 15,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499625139
                    },
                    {
                        "sbg:revision": 16,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "Mem 960GB",
                        "sbg:modifiedOn": 1499627281
                    },
                    {
                        "sbg:revision": 17,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499690249
                    },
                    {
                        "sbg:revision": 18,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1500331793
                    },
                    {
                        "sbg:revision": 19,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
                        "sbg:modifiedOn": 1501908398
                    }
                ],
                "sbg:projectName": "Dev",
                "sbg:validationErrors": [],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "*.cool"
                        },
                        "id": "#out_cool"
                    }
                ],
                "y": 238.94198231399068,
                "arguments": [],
                "successCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "hints": [
                    {
                        "value": 2,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": 16000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "dockerPull": "duplexa/4dn-hic:v31",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    }
                ],
                "id": "4dn-dcic/dev/cooler/19",
                "sbg:image_url": null,
                "baseCommand": [
                    "run-cooler.sh"
                ],
                "sbg:revision": 19,
                "sbg:sbgMaintained": false,
                "sbg:modifiedOn": 1501908398,
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "stdin": "",
                "description": "",
                "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
                "sbg:id": "4dn-dcic/dev/cooler/19",
                "stdout": "",
                "sbg:latestRevision": 19,
                "class": "CommandLineTool",
                "label": "cooler",
                "sbg:job": {
                    "inputs": {
                        "ncores": 5,
                        "outprefix": "outprefix-string-value",
                        "chrsizes": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/chrsize.ext",
                            "class": "File"
                        },
                        "binsize": 4,
                        "pairs": {
                            "secondaryFiles": [
                                {
                                    "path": "$job.inputs.pairs + '.px2'"
                                }
                            ],
                            "size": 0,
                            "path": "/path/to/pairs.ext",
                            "class": "File"
                        },
                        "max_split": 0,
                        "pairs_index": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/pairs_index.ext",
                            "class": "File"
                        }
                    },
                    "allocatedResources": {
                        "mem": 16000,
                        "cpu": 2
                    }
                },
                "sbg:cmdPreview": "run-cooler.sh"
            },
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
            "inputs": [
                {
                    "source": [
                        "#merge_pairs.output_pairs_index"
                    ],
                    "id": "#cooler.pairs_index"
                },
                {
                    "source": [
                        "#merge_pairs.output_pairs"
                    ],
                    "id": "#cooler.pairs"
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
                }
            ],
            "sbg:x": 658.4286107335774
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "hints": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partb/39/raw/",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partb/39.png",
    "label": "Hi-C_processing_partB",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "description": "",
    "sbg:revision": 39,
    "sbg:latestRevision": 39,
    "class": "Workflow",
    "sbg:canvas_y": 43,
    "sbg:canvas_zoom": 0.6999999999999997,
    "sbg:canvas_x": 108,
    "sbg:createdOn": 1479144431
}