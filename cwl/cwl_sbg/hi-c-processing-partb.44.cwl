{
    "description": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partb/44/raw/",
    "sbg:projectName": "Dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "inputs": [
        {
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "SIZES",
            "sbg:x": -44.285710918659674,
            "sbg:y": 365.8544025321941,
            "label": "chrsizes"
        },
        {
            "id": "#input_pairs",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "sbg:fileTypes": "PAIRS.GZ",
            "sbg:x": -32.85716799814047,
            "sbg:y": 138.56737856934552,
            "label": "input_pairs"
        },
        {
            "sbg:stageInput": null,
            "id": "#binsize",
            "type": [
                "null",
                "int"
            ],
            "sbg:includeInPorts": false,
            "required": false
        },
        {
            "id": "#ncores",
            "sbg:toolDefaultValue": "8",
            "type": [
                "null",
                "int"
            ],
            "required": false
        },
        {
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "5000",
            "type": [
                "null",
                "int"
            ],
            "id": "#min_res"
        },
        {
            "required": false,
            "sbg:toolDefaultValue": "14g",
            "sbg:suggestedValue": "14g",
            "type": [
                "null",
                "string"
            ],
            "id": "#maxmem"
        }
    ],
    "sbg:validationErrors": [],
    "sbg:canvas_y": 43,
    "sbg:project": "4dn-dcic/dev",
    "class": "Workflow",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partb/44.png",
    "sbg:revisionNotes": "docker v35",
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partb/44",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1479144431
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1479144466
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1479146390
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1479149385
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1479149442
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1479150047
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1479241950
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1488530005
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1488530109
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 9,
            "sbg:modifiedOn": 1488530281
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 10,
            "sbg:modifiedOn": 1488530836
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 11,
            "sbg:modifiedOn": 1488530872
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 12,
            "sbg:modifiedOn": 1488531567
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 13,
            "sbg:modifiedOn": 1496181927
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 14,
            "sbg:modifiedOn": 1496181955
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 15,
            "sbg:modifiedOn": 1496182121
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 16,
            "sbg:modifiedOn": 1496188521
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 17,
            "sbg:modifiedOn": 1496188582
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 18,
            "sbg:modifiedOn": 1496188729
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 19,
            "sbg:modifiedOn": 1496190149
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 20,
            "sbg:modifiedOn": 1499355043
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 21,
            "sbg:modifiedOn": 1499356869
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 22,
            "sbg:modifiedOn": 1499363602
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 23,
            "sbg:modifiedOn": 1499370019
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 24,
            "sbg:modifiedOn": 1499460260
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 25,
            "sbg:modifiedOn": 1499529552
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 26,
            "sbg:modifiedOn": 1499625173
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 27,
            "sbg:modifiedOn": 1499627303
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 28,
            "sbg:modifiedOn": 1500331892
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 29,
            "sbg:modifiedOn": 1501513539
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 30,
            "sbg:modifiedOn": 1501514350
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 31,
            "sbg:modifiedOn": 1501514405
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 32,
            "sbg:modifiedOn": 1501689712
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 33,
            "sbg:modifiedOn": 1501689823
        },
        {
            "sbg:revisionNotes": "15G mem for pairs2hic",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 34,
            "sbg:modifiedOn": 1501707297
        },
        {
            "sbg:revisionNotes": "r3.8xlarge for cooler",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 35,
            "sbg:modifiedOn": 1501765060
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 36,
            "sbg:modifiedOn": 1501780788
        },
        {
            "sbg:revisionNotes": "workflow pairs2hic maxmem set up 56g",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 37,
            "sbg:modifiedOn": 1501780943
        },
        {
            "sbg:revisionNotes": "cooler 16G mem max_split parameter included as a default 2 (not modifiable)",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 38,
            "sbg:modifiedOn": 1501908603
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 39,
            "sbg:modifiedOn": 1502485439
        },
        {
            "sbg:revisionNotes": "secondary file handling",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 40,
            "sbg:modifiedOn": 1502834643
        },
        {
            "sbg:revisionNotes": "removed orphan pairs index output",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 41,
            "sbg:modifiedOn": 1502839047
        },
        {
            "sbg:revisionNotes": "cooler self.path -> self.base, pairs2hic using v33 (all of the steps are using the same docker image to avoid multiple pull)",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 42,
            "sbg:modifiedOn": 1502843523
        },
        {
            "sbg:revisionNotes": "docker v34",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 43,
            "sbg:modifiedOn": 1503000535
        },
        {
            "sbg:revisionNotes": "docker v35",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 44,
            "sbg:modifiedOn": 1503089926
        }
    ],
    "sbg:revision": 44,
    "sbg:canvas_zoom": 0.6999999999999997,
    "requirements": [],
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:latestRevision": 44,
    "steps": [
        {
            "sbg:x": 385.57145629610346,
            "inputs": [
                {
                    "id": "#merge_pairs.outprefix",
                    "default": "out"
                },
                {
                    "id": "#merge_pairs.input_pairs",
                    "source": [
                        "#input_pairs"
                    ]
                }
            ],
            "id": "#merge_pairs",
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ],
            "run": {
                "description": "",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/30/raw/",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 2,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "id": "#input_pairs",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "sbg:fileTypes": "PAIRS.GZ",
                        "sbg:stageInput": "copy"
                    }
                ],
                "successCodes": [],
                "sbg:validationErrors": [],
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 4000,
                        "cpu": 1
                    },
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "input_pairs": [
                            {
                                "secondaryFiles": [],
                                "class": "File",
                                "size": 0,
                                "path": "/path/to/input_pairs-1.ext"
                            },
                            {
                                "secondaryFiles": [],
                                "class": "File",
                                "size": 0,
                                "path": "/path/to/input_pairs-2.ext"
                            }
                        ]
                    }
                },
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "class": "CommandLineTool",
                "baseCommand": [
                    "run-merge-pairs.sh"
                ],
                "sbg:cmdPreview": "run-merge-pairs.sh",
                "stdin": "",
                "sbg:image_url": null,
                "arguments": [],
                "sbg:revisionNotes": "docker v35",
                "sbg:modifiedOn": 1503089840,
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "stdout": "",
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine"
                    }
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:revision": 30,
                "temporaryFailCodes": [],
                "outputs": [
                    {
                        "id": "#output_pairs",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "secondaryFiles": [
                                ".px2"
                            ],
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.outprefix + '.pairs.gz'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:fileTypes": "PAIRS.GZ"
                    }
                ],
                "sbg:id": "4dn-dcic/dev/merge-pairs/30",
                "sbg:links": [],
                "label": "merge-pairs",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1479143121
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1479143406
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1479143659
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1479143834
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1479143945
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1479144065
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1479144200
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1479144240
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1479144301
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1479149340
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1479149428
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1479149963
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1479155094
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1479241188
                    },
                    {
                        "sbg:revisionNotes": "now using 4dn-hic docker image",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1488524515
                    },
                    {
                        "sbg:revisionNotes": "pairs and index are copied not links, so that they go together.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 15,
                        "sbg:modifiedOn": 1488524641
                    },
                    {
                        "sbg:revisionNotes": "removed blank secondary file requirement",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 16,
                        "sbg:modifiedOn": 1488524868
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 17,
                        "sbg:modifiedOn": 1488525221
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 18,
                        "sbg:modifiedOn": 1488529667
                    },
                    {
                        "sbg:revisionNotes": "removed outdir in the output glob",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 19,
                        "sbg:modifiedOn": 1488531529
                    },
                    {
                        "sbg:revisionNotes": "fixed output file name",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 20,
                        "sbg:modifiedOn": 1488567441
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 21,
                        "sbg:modifiedOn": 1490716980
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 22,
                        "sbg:modifiedOn": 1496166568
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 23,
                        "sbg:modifiedOn": 1496188642
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 24,
                        "sbg:modifiedOn": 1499356728
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 25,
                        "sbg:modifiedOn": 1500331813
                    },
                    {
                        "sbg:revisionNotes": "pairs index as a secondary file to pairs output instead of a separate output item.",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 26,
                        "sbg:modifiedOn": 1502829840
                    },
                    {
                        "sbg:revisionNotes": "modified expression for secondary output file for pairs index",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 27,
                        "sbg:modifiedOn": 1502830223
                    },
                    {
                        "sbg:revisionNotes": "output secondary file now just '.px2'",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 28,
                        "sbg:modifiedOn": 1502834121
                    },
                    {
                        "sbg:revisionNotes": "docker v34",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 29,
                        "sbg:modifiedOn": 1503000458
                    },
                    {
                        "sbg:revisionNotes": "docker v35",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 30,
                        "sbg:modifiedOn": 1503089840
                    }
                ],
                "sbg:latestRevision": 30,
                "cwlVersion": "sbg:draft-2",
                "sbg:projectName": "Dev",
                "sbg:createdBy": "duplexa",
                "sbg:createdOn": 1479143121,
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
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v35",
                        "dockerImageId": ""
                    },
                    {
                        "value": "",
                        "class": "ExpressionEngineRequirement"
                    }
                ]
            },
            "sbg:y": 192.94197236852995
        },
        {
            "sbg:x": 661.2857765762187,
            "inputs": [
                {
                    "id": "#cooler.pairs",
                    "source": [
                        "#merge_pairs.output_pairs"
                    ]
                },
                {
                    "id": "#cooler.chrsizes",
                    "source": [
                        "#chrsizes"
                    ]
                },
                {
                    "id": "#cooler.binsize",
                    "source": [
                        "#binsize"
                    ]
                },
                {
                    "id": "#cooler.outprefix",
                    "default": "out"
                },
                {
                    "id": "#cooler.ncores",
                    "source": [
                        "#ncores"
                    ]
                },
                {
                    "id": "#cooler.max_split",
                    "default": 2
                }
            ],
            "id": "#cooler",
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
            "run": {
                "description": "",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/24/raw/",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "inputs": [
                    {
                        "inputBinding": {
                            "secondaryFiles": [
                                {
                                    "class": "Expression",
                                    "script": "self.basename + '.px2'",
                                    "engine": "#cwl-js-engine"
                                }
                            ],
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#pairs",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "PAIRS.GZ",
                        "sbg:stageInput": "copy"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "id": "#chrsizes",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "SIZES"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "sbg:stageInput": null,
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
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 4,
                            "sbg:cmdInclude": true
                        },
                        "id": "#ncores",
                        "sbg:toolDefaultValue": "8",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 6,
                            "sbg:cmdInclude": true
                        },
                        "id": "#max_split",
                        "sbg:toolDefaultValue": "2",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null
                    }
                ],
                "successCodes": [],
                "sbg:validationErrors": [],
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine"
                    }
                ],
                "sbg:id": "4dn-dcic/dev/cooler/24",
                "sbg:project": "4dn-dcic/dev",
                "class": "CommandLineTool",
                "baseCommand": [
                    "run-cooler.sh"
                ],
                "sbg:cmdPreview": "run-cooler.sh",
                "stdin": "",
                "sbg:image_url": null,
                "arguments": [],
                "sbg:modifiedOn": 1503089877,
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "stdout": "",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 16000,
                        "cpu": 2
                    },
                    "inputs": {
                        "chrsizes": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/chrsize.ext"
                        },
                        "ncores": 5,
                        "pairs": {
                            "secondaryFiles": [
                                {
                                    "path": {
                                        "class": "Expression",
                                        "script": "self.basename + '.px2'",
                                        "engine": "#cwl-js-engine"
                                    }
                                }
                            ],
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/pairs.ext"
                        },
                        "binsize": 4,
                        "outprefix": "outprefix-string-value",
                        "max_split": 0
                    }
                },
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:revision": 24,
                "temporaryFailCodes": [],
                "outputs": [
                    {
                        "id": "#out_cool",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "*.cool"
                        }
                    }
                ],
                "sbg:projectName": "Dev",
                "label": "cooler",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1488495202
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1488495392
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1488495453
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1488499764
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1488511643
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1488511809
                    },
                    {
                        "sbg:revisionNotes": "now using 4dn-hic docker image",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1488525294
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1488529899
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1490716960
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1496167357
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1496168048
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1496175693
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1496175978
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1499354982
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1499625090
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 15,
                        "sbg:modifiedOn": 1499625139
                    },
                    {
                        "sbg:revisionNotes": "Mem 960GB",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 16,
                        "sbg:modifiedOn": 1499627281
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 17,
                        "sbg:modifiedOn": 1499690249
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 18,
                        "sbg:modifiedOn": 1500331793
                    },
                    {
                        "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 19,
                        "sbg:modifiedOn": 1501908398
                    },
                    {
                        "sbg:revisionNotes": "pairs index as a secondary file to pairs instead of a separate input item",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 20,
                        "sbg:modifiedOn": 1502829691
                    },
                    {
                        "sbg:revisionNotes": "pairs secondary file expression -> job.self.path",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 21,
                        "sbg:modifiedOn": 1502833432
                    },
                    {
                        "sbg:revisionNotes": "self.path -> self.basename for secondary file (pairs index)",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 22,
                        "sbg:modifiedOn": 1502843400
                    },
                    {
                        "sbg:revisionNotes": "docker v34",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 23,
                        "sbg:modifiedOn": 1503000496
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 24,
                        "sbg:modifiedOn": 1503089877
                    }
                ],
                "sbg:latestRevision": 24,
                "cwlVersion": "sbg:draft-2",
                "sbg:sbgMaintained": false,
                "sbg:createdBy": "duplexa",
                "sbg:createdOn": 1488495202,
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
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v35",
                        "dockerImageId": ""
                    }
                ]
            },
            "sbg:y": 238.94200236061556
        },
        {
            "sbg:x": 698.5716418246949,
            "inputs": [
                {
                    "id": "#pairs2hic.input_pairs",
                    "source": [
                        "#merge_pairs.output_pairs"
                    ]
                },
                {
                    "id": "#pairs2hic.chromsizes_file",
                    "source": [
                        "#chrsizes"
                    ]
                },
                {
                    "id": "#pairs2hic.output_prefix",
                    "default": "out"
                },
                {
                    "id": "#pairs2hic.min_res",
                    "source": [
                        "#min_res"
                    ]
                },
                {
                    "id": "#pairs2hic.higlass",
                    "default": "1"
                },
                {
                    "id": "#pairs2hic.maxmem",
                    "source": [
                        "#maxmem"
                    ],
                    "default": "14g"
                }
            ],
            "id": "#pairs2hic",
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
            "run": {
                "description": "",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/18/raw/",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "id": "#input_pairs",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".PAIRS.GZ"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "id": "#chromsizes_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".CHROM.SIZES"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "id": "#output_prefix",
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 4,
                            "sbg:cmdInclude": true
                        },
                        "id": "#min_res",
                        "sbg:toolDefaultValue": "5000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 5,
                            "sbg:cmdInclude": true
                        },
                        "id": "#higlass",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:stageInput": null
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 6,
                            "sbg:cmdInclude": true
                        },
                        "id": "#maxmem",
                        "sbg:toolDefaultValue": "14g",
                        "type": [
                            "null",
                            "string"
                        ]
                    }
                ],
                "successCodes": [],
                "sbg:validationErrors": [],
                "requirements": [],
                "sbg:id": "4dn-dcic/dev/pairs2hic/18",
                "sbg:project": "4dn-dcic/dev",
                "class": "CommandLineTool",
                "baseCommand": [
                    "run-juicebox-pre.sh"
                ],
                "sbg:cmdPreview": "run-juicebox-pre.sh",
                "stdin": "",
                "sbg:image_url": null,
                "arguments": [],
                "sbg:revisionNotes": "docker v35",
                "sbg:modifiedOn": 1503089862,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "stdout": "",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 58000,
                        "cpu": 1
                    },
                    "inputs": {
                        "input_pairs": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_pairs.ext"
                        },
                        "chromsizes_file": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/chromsizes_file.ext"
                        },
                        "maxmem": "maxmem-string-value",
                        "min_res": 4,
                        "output_prefix": "output_prefix-string-value",
                        "higlass": "higlass-string-value"
                    }
                },
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:revision": 18,
                "temporaryFailCodes": [],
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
                "sbg:projectName": "Dev",
                "label": "pairs2hic",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1496168605
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1496168842
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1496168924
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1496172319
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1496176108
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1496178546
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1500331857
                    },
                    {
                        "sbg:revisionNotes": "added java maxmem as parameter",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1501513062
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1501595773
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1501605274
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1501637382
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1501689608
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1501689663
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1501689805
                    },
                    {
                        "sbg:revisionNotes": "15GB mem",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1501707253
                    },
                    {
                        "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 15,
                        "sbg:modifiedOn": 1501780759
                    },
                    {
                        "sbg:revisionNotes": "docker v33",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 16,
                        "sbg:modifiedOn": 1502843453
                    },
                    {
                        "sbg:revisionNotes": "docker v34",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 17,
                        "sbg:modifiedOn": 1503000477
                    },
                    {
                        "sbg:revisionNotes": "docker v35",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 18,
                        "sbg:modifiedOn": 1503089862
                    }
                ],
                "sbg:latestRevision": 18,
                "cwlVersion": "sbg:draft-2",
                "sbg:sbgMaintained": false,
                "sbg:createdBy": "4dn-dcic",
                "sbg:createdOn": 1496168605,
                "hints": [
                    {
                        "value": 1,
                        "class": "sbg:CPURequirement",
                        "diskSize": null
                    },
                    {
                        "value": 58000,
                        "class": "sbg:MemRequirement",
                        "diskSize": null
                    },
                    {
                        "class": "DockerRequirement",
                        "diskSize": null,
                        "dockerPull": "duplexa/4dn-hic:v35",
                        "dockerImageId": ""
                    }
                ]
            },
            "sbg:y": 440.9375780899948
        }
    ],
    "outputs": [
        {
            "id": "#output_pairs",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 814.5714787074501,
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "sbg:fileTypes": "PAIRS.GZ",
            "sbg:y": 139.7114601133321,
            "label": "output_pairs"
        },
        {
            "id": "#out_cool",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 787.2858953184084,
            "source": [
                "#cooler.out_cool"
            ],
            "sbg:y": 294.56866071643174,
            "label": "out_cool"
        },
        {
            "id": "#output_hic",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 910.0000171272096,
            "source": [
                "#pairs2hic.output_hic"
            ],
            "sbg:y": 524.2816587756744,
            "label": "output_hic"
        }
    ],
    "sbg:canvas_x": 108,
    "label": "Hi-C_processing_partB",
    "sbg:modifiedOn": 1503089926,
    "cwlVersion": "sbg:draft-2",
    "sbg:sbgMaintained": false,
    "sbg:createdBy": "duplexa",
    "sbg:createdOn": 1479144431,
    "hints": []
}