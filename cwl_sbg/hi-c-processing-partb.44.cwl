{
    "steps": [
        {
            "id": "#merge_pairs",
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
            "sbg:y": 192.94197236852995,
            "run": {
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143121,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143406,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143659,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143834,
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143945,
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144065,
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144200,
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144240,
                        "sbg:revision": 7,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144301,
                        "sbg:revision": 8,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149340,
                        "sbg:revision": 9,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149428,
                        "sbg:revision": 10,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149963,
                        "sbg:revision": 11,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479155094,
                        "sbg:revision": 12,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1479241188,
                        "sbg:revision": 13,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488524515,
                        "sbg:revision": 14,
                        "sbg:revisionNotes": "now using 4dn-hic docker image"
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488524641,
                        "sbg:revision": 15,
                        "sbg:revisionNotes": "pairs and index are copied not links, so that they go together."
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488524868,
                        "sbg:revision": 16,
                        "sbg:revisionNotes": "removed blank secondary file requirement"
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488525221,
                        "sbg:revision": 17,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488529667,
                        "sbg:revision": 18,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488531529,
                        "sbg:revision": 19,
                        "sbg:revisionNotes": "removed outdir in the output glob"
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488567441,
                        "sbg:revision": 20,
                        "sbg:revisionNotes": "fixed output file name"
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1490716980,
                        "sbg:revision": 21,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496166568,
                        "sbg:revision": 22,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496188642,
                        "sbg:revision": 23,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499356728,
                        "sbg:revision": 24,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1500331813,
                        "sbg:revision": 25,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502829840,
                        "sbg:revision": 26,
                        "sbg:revisionNotes": "pairs index as a secondary file to pairs output instead of a separate output item."
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502830223,
                        "sbg:revision": 27,
                        "sbg:revisionNotes": "modified expression for secondary output file for pairs index"
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502834121,
                        "sbg:revision": 28,
                        "sbg:revisionNotes": "output secondary file now just '.px2'"
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1503000458,
                        "sbg:revision": 29,
                        "sbg:revisionNotes": "docker v34"
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1503089840,
                        "sbg:revision": 30,
                        "sbg:revisionNotes": "docker v35"
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "class": "CommandLineTool",
                "successCodes": [],
                "sbg:cmdPreview": "run-merge-pairs.sh",
                "label": "merge-pairs",
                "sbg:project": "4dn-dcic/dev",
                "sbg:image_url": null,
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:latestRevision": 30,
                "sbg:id": "4dn-dcic/dev/merge-pairs/30",
                "sbg:modifiedBy": "4dn-dcic",
                "stdout": "",
                "description": "",
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
                        "dockerPull": "duplexa/4dn-hic:v35",
                        "dockerImageId": ""
                    },
                    {
                        "class": "ExpressionEngineRequirement",
                        "value": ""
                    }
                ],
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.outprefix + '.pairs.gz'"
                            },
                            "secondaryFiles": [
                                ".px2"
                            ]
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "PAIRS.GZ",
                        "id": "#output_pairs"
                    }
                ],
                "sbg:sbgMaintained": false,
                "sbg:createdBy": "duplexa",
                "cwlVersion": "sbg:draft-2",
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out",
                        "id": "#outprefix"
                    },
                    {
                        "sbg:stageInput": "copy",
                        "sbg:fileTypes": "PAIRS.GZ",
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "File"
                            }
                        ],
                        "inputBinding": {
                            "position": 2,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "id": "#input_pairs"
                    }
                ],
                "temporaryFailCodes": [],
                "baseCommand": [
                    "run-merge-pairs.sh"
                ],
                "arguments": [],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/merge-pairs/30/raw/",
                "sbg:links": [],
                "sbg:modifiedOn": 1503089840,
                "sbg:revision": 30,
                "stdin": "",
                "sbg:validationErrors": [],
                "sbg:job": {
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "input_pairs": [
                            {
                                "size": 0,
                                "class": "File",
                                "path": "/path/to/input_pairs-1.ext",
                                "secondaryFiles": []
                            },
                            {
                                "size": 0,
                                "class": "File",
                                "path": "/path/to/input_pairs-2.ext",
                                "secondaryFiles": []
                            }
                        ]
                    },
                    "allocatedResources": {
                        "mem": 4000,
                        "cpu": 1
                    }
                },
                "sbg:projectName": "Dev",
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ]
                    }
                ],
                "sbg:createdOn": 1479143121,
                "sbg:revisionNotes": "docker v35"
            },
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ],
            "sbg:x": 385.57145629610346
        },
        {
            "id": "#cooler",
            "inputs": [
                {
                    "source": [
                        "#merge_pairs.output_pairs"
                    ],
                    "id": "#cooler.pairs"
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
            "sbg:y": 238.94200236061556,
            "run": {
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488495202,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488495392,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488495453,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488499764,
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488511643,
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488511809,
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488525294,
                        "sbg:revision": 6,
                        "sbg:revisionNotes": "now using 4dn-hic docker image"
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488529899,
                        "sbg:revision": 7,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1490716960,
                        "sbg:revision": 8,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496167357,
                        "sbg:revision": 9,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496168048,
                        "sbg:revision": 10,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496175693,
                        "sbg:revision": 11,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496175978,
                        "sbg:revision": 12,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499354982,
                        "sbg:revision": 13,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499625090,
                        "sbg:revision": 14,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499625139,
                        "sbg:revision": 15,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499627281,
                        "sbg:revision": 16,
                        "sbg:revisionNotes": "Mem 960GB"
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499690249,
                        "sbg:revision": 17,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1500331793,
                        "sbg:revision": 18,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501908398,
                        "sbg:revision": 19,
                        "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement."
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502829691,
                        "sbg:revision": 20,
                        "sbg:revisionNotes": "pairs index as a secondary file to pairs instead of a separate input item"
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502833432,
                        "sbg:revision": 21,
                        "sbg:revisionNotes": "pairs secondary file expression -> job.self.path"
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502843400,
                        "sbg:revision": 22,
                        "sbg:revisionNotes": "self.path -> self.basename for secondary file (pairs index)"
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1503000496,
                        "sbg:revision": 23,
                        "sbg:revisionNotes": "docker v34"
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1503089877,
                        "sbg:revision": 24,
                        "sbg:revisionNotes": null
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:createdOn": 1488495202,
                "sbg:createdBy": "duplexa",
                "successCodes": [],
                "label": "cooler",
                "sbg:image_url": null,
                "sbg:project": "4dn-dcic/dev",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/24/raw/",
                "sbg:id": "4dn-dcic/dev/cooler/24",
                "sbg:modifiedBy": "4dn-dcic",
                "stdout": "",
                "description": "",
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
                        "dockerPull": "duplexa/4dn-hic:v35",
                        "dockerImageId": ""
                    }
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
                "sbg:sbgMaintained": false,
                "class": "CommandLineTool",
                "cwlVersion": "sbg:draft-2",
                "inputs": [
                    {
                        "sbg:stageInput": "copy",
                        "sbg:fileTypes": "PAIRS.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "secondaryFiles": [
                                {
                                    "class": "Expression",
                                    "engine": "#cwl-js-engine",
                                    "script": "self.basename + '.px2'"
                                }
                            ],
                            "separate": true
                        },
                        "id": "#pairs"
                    },
                    {
                        "sbg:fileTypes": "SIZES",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "id": "#chrsizes"
                    },
                    {
                        "sbg:stageInput": null,
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "id": "#binsize"
                    },
                    {
                        "inputBinding": {
                            "position": 5,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out",
                        "id": "#outprefix"
                    },
                    {
                        "inputBinding": {
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "8",
                        "id": "#ncores"
                    },
                    {
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "position": 6,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "2",
                        "id": "#max_split"
                    }
                ],
                "temporaryFailCodes": [],
                "sbg:job": {
                    "inputs": {
                        "pairs": {
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/pairs.ext",
                            "secondaryFiles": [
                                {
                                    "path": {
                                        "class": "Expression",
                                        "engine": "#cwl-js-engine",
                                        "script": "self.basename + '.px2'"
                                    }
                                }
                            ]
                        },
                        "binsize": 4,
                        "ncores": 5,
                        "outprefix": "outprefix-string-value",
                        "chrsizes": {
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/chrsize.ext",
                            "secondaryFiles": []
                        },
                        "max_split": 0
                    },
                    "allocatedResources": {
                        "mem": 16000,
                        "cpu": 2
                    }
                },
                "arguments": [],
                "sbg:latestRevision": 24,
                "sbg:modifiedOn": 1503089877,
                "sbg:revision": 24,
                "stdin": "",
                "sbg:validationErrors": [],
                "sbg:projectName": "Dev",
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ]
                    }
                ],
                "sbg:cmdPreview": "run-cooler.sh",
                "baseCommand": [
                    "run-cooler.sh"
                ]
            },
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
            "sbg:x": 661.2857765762187
        },
        {
            "id": "#pairs2hic",
            "inputs": [
                {
                    "source": [
                        "#merge_pairs.output_pairs"
                    ],
                    "id": "#pairs2hic.input_pairs"
                },
                {
                    "source": [
                        "#chrsizes"
                    ],
                    "id": "#pairs2hic.chromsizes_file"
                },
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
                    "default": "1",
                    "id": "#pairs2hic.higlass"
                },
                {
                    "source": [
                        "#maxmem"
                    ],
                    "default": "14g",
                    "id": "#pairs2hic.maxmem"
                }
            ],
            "sbg:y": 440.9375780899948,
            "run": {
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496168605,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496168842,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496168924,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496172319,
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496176108,
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496178546,
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1500331857,
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501513062,
                        "sbg:revision": 7,
                        "sbg:revisionNotes": "added java maxmem as parameter"
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501595773,
                        "sbg:revision": 8,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501605274,
                        "sbg:revision": 9,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501637382,
                        "sbg:revision": 10,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501689608,
                        "sbg:revision": 11,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501689663,
                        "sbg:revision": 12,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501689805,
                        "sbg:revision": 13,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501707253,
                        "sbg:revision": 14,
                        "sbg:revisionNotes": "15GB mem"
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501780759,
                        "sbg:revision": 15,
                        "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed."
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502843453,
                        "sbg:revision": 16,
                        "sbg:revisionNotes": "docker v33"
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1503000477,
                        "sbg:revision": 17,
                        "sbg:revisionNotes": "docker v34"
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1503089862,
                        "sbg:revision": 18,
                        "sbg:revisionNotes": "docker v35"
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:createdOn": 1496168605,
                "sbg:createdBy": "4dn-dcic",
                "successCodes": [],
                "sbg:latestRevision": 18,
                "label": "pairs2hic",
                "sbg:image_url": null,
                "sbg:project": "4dn-dcic/dev",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:id": "4dn-dcic/dev/pairs2hic/18",
                "sbg:modifiedBy": "4dn-dcic",
                "stdout": "",
                "description": "",
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
                        "diskSize": null,
                        "dockerPull": "duplexa/4dn-hic:v35",
                        "dockerImageId": ""
                    }
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
                "sbg:sbgMaintained": false,
                "class": "CommandLineTool",
                "cwlVersion": "sbg:draft-2",
                "inputs": [
                    {
                        "sbg:fileTypes": ".PAIRS.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
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
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "id": "#chromsizes_file"
                    },
                    {
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out",
                        "id": "#output_prefix"
                    },
                    {
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "5000",
                        "id": "#min_res"
                    },
                    {
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "position": 5,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "1",
                        "id": "#higlass"
                    },
                    {
                        "inputBinding": {
                            "position": 6,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "14g",
                        "id": "#maxmem"
                    }
                ],
                "temporaryFailCodes": [],
                "sbg:job": {
                    "inputs": {
                        "min_res": 4,
                        "maxmem": "maxmem-string-value",
                        "chromsizes_file": {
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/chromsizes_file.ext",
                            "secondaryFiles": []
                        },
                        "output_prefix": "output_prefix-string-value",
                        "input_pairs": {
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/input_pairs.ext",
                            "secondaryFiles": []
                        },
                        "higlass": "higlass-string-value"
                    },
                    "allocatedResources": {
                        "mem": 58000,
                        "cpu": 1
                    }
                },
                "arguments": [],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/18/raw/",
                "sbg:modifiedOn": 1503089862,
                "sbg:revision": 18,
                "stdin": "",
                "sbg:validationErrors": [],
                "sbg:projectName": "Dev",
                "requirements": [],
                "sbg:cmdPreview": "run-juicebox-pre.sh",
                "sbg:revisionNotes": "docker v35",
                "baseCommand": [
                    "run-juicebox-pre.sh"
                ]
            },
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
            "sbg:x": 698.5716418246949
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "class": "Workflow",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144431,
            "sbg:revision": 0,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144466,
            "sbg:revision": 1,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479146390,
            "sbg:revision": 2,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149385,
            "sbg:revision": 3,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149442,
            "sbg:revision": 4,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479150047,
            "sbg:revision": 5,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1479241950,
            "sbg:revision": 6,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530005,
            "sbg:revision": 7,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530109,
            "sbg:revision": 8,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530281,
            "sbg:revision": 9,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530836,
            "sbg:revision": 10,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530872,
            "sbg:revision": 11,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488531567,
            "sbg:revision": 12,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496181927,
            "sbg:revision": 13,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496181955,
            "sbg:revision": 14,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496182121,
            "sbg:revision": 15,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496188521,
            "sbg:revision": 16,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496188582,
            "sbg:revision": 17,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496188729,
            "sbg:revision": 18,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496190149,
            "sbg:revision": 19,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499355043,
            "sbg:revision": 20,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499356869,
            "sbg:revision": 21,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499363602,
            "sbg:revision": 22,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499370019,
            "sbg:revision": 23,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499460260,
            "sbg:revision": 24,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499529552,
            "sbg:revision": 25,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499625173,
            "sbg:revision": 26,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499627303,
            "sbg:revision": 27,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500331892,
            "sbg:revision": 28,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501513539,
            "sbg:revision": 29,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501514350,
            "sbg:revision": 30,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501514405,
            "sbg:revision": 31,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689712,
            "sbg:revision": 32,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689823,
            "sbg:revision": 33,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501707297,
            "sbg:revision": 34,
            "sbg:revisionNotes": "15G mem for pairs2hic"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501765060,
            "sbg:revision": 35,
            "sbg:revisionNotes": "r3.8xlarge for cooler"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501780788,
            "sbg:revision": 36,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501780943,
            "sbg:revision": 37,
            "sbg:revisionNotes": "workflow pairs2hic maxmem set up 56g"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501908603,
            "sbg:revision": 38,
            "sbg:revisionNotes": "cooler 16G mem max_split parameter included as a default 2 (not modifiable)"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502485439,
            "sbg:revision": 39,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502834643,
            "sbg:revision": 40,
            "sbg:revisionNotes": "secondary file handling"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502839047,
            "sbg:revision": 41,
            "sbg:revisionNotes": "removed orphan pairs index output"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502843523,
            "sbg:revision": 42,
            "sbg:revisionNotes": "cooler self.path -> self.base, pairs2hic using v33 (all of the steps are using the same docker image to avoid multiple pull)"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1503000535,
            "sbg:revision": 43,
            "sbg:revisionNotes": "docker v34"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1503089926,
            "sbg:revision": 44,
            "sbg:revisionNotes": "docker v35"
        }
    ],
    "sbg:latestRevision": 44,
    "label": "Hi-C_processing_partB",
    "sbg:project": "4dn-dcic/dev",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partb/44.png",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:canvas_zoom": 0.6999999999999997,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partb/44",
    "sbg:modifiedBy": "4dn-dcic",
    "description": "",
    "hints": [],
    "outputs": [
        {
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 139.7114601133321,
            "sbg:fileTypes": "PAIRS.GZ",
            "required": false,
            "label": "output_pairs",
            "id": "#output_pairs",
            "sbg:x": 814.5714787074501
        },
        {
            "source": [
                "#cooler.out_cool"
            ],
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 294.56866071643174,
            "required": false,
            "label": "out_cool",
            "id": "#out_cool",
            "sbg:x": 787.2858953184084
        },
        {
            "source": [
                "#pairs2hic.output_hic"
            ],
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 524.2816587756744,
            "required": false,
            "label": "output_hic",
            "id": "#output_hic",
            "sbg:x": 910.0000171272096
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:createdBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 365.8544025321941,
            "label": "chrsizes",
            "sbg:fileTypes": "SIZES",
            "id": "#chrsizes",
            "sbg:x": -44.285710918659674
        },
        {
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "sbg:y": 138.56737856934552,
            "label": "input_pairs",
            "sbg:fileTypes": "PAIRS.GZ",
            "id": "#input_pairs",
            "sbg:x": -32.85716799814047
        },
        {
            "required": false,
            "sbg:includeInPorts": false,
            "type": [
                "null",
                "int"
            ],
            "id": "#binsize",
            "sbg:stageInput": null
        },
        {
            "required": false,
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "8",
            "id": "#ncores"
        },
        {
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "5000",
            "id": "#min_res"
        },
        {
            "required": false,
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": "14g",
            "sbg:suggestedValue": "14g",
            "id": "#maxmem"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partb/44/raw/",
    "sbg:canvas_y": 43,
    "sbg:modifiedOn": 1503089926,
    "sbg:revision": 44,
    "sbg:validationErrors": [],
    "sbg:projectName": "Dev",
    "requirements": [],
    "sbg:createdOn": 1479144431,
    "sbg:revisionNotes": "docker v35",
    "sbg:canvas_x": 108
}