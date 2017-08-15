{
    "sbg:sbgMaintained": false,
    "requirements": [],
    "sbg:createdBy": "duplexa",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:canvas_zoom": 0.6999999999999997,
    "sbg:canvas_x": 108,
    "steps": [
        {
            "run": {
                "sbg:sbgMaintained": false,
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "stdout": "",
                "sbg:job": {
                    "inputs": {
                        "input_pairs": [
                            {
                                "secondaryFiles": [],
                                "path": "/path/to/input_pairs-1.ext",
                                "class": "File",
                                "size": 0
                            },
                            {
                                "secondaryFiles": [],
                                "path": "/path/to/input_pairs-2.ext",
                                "class": "File",
                                "size": 0
                            }
                        ],
                        "outprefix": "outprefix-string-value"
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 4000
                    }
                },
                "label": "merge-pairs",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143121,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143406,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143659,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143834,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143945,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144065,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144200,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144240,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144301,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149340,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149428,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149963,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479155094,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1479241188,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488524515,
                        "sbg:revisionNotes": "now using 4dn-hic docker image"
                    },
                    {
                        "sbg:revision": 15,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488524641,
                        "sbg:revisionNotes": "pairs and index are copied not links, so that they go together."
                    },
                    {
                        "sbg:revision": 16,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488524868,
                        "sbg:revisionNotes": "removed blank secondary file requirement"
                    },
                    {
                        "sbg:revision": 17,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488525221,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 18,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488529667,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 19,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488531529,
                        "sbg:revisionNotes": "removed outdir in the output glob"
                    },
                    {
                        "sbg:revision": 20,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488567441,
                        "sbg:revisionNotes": "fixed output file name"
                    },
                    {
                        "sbg:revision": 21,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1490716980,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 22,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496166568,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 23,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496188642,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 24,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499356728,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 25,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1500331813,
                        "sbg:revisionNotes": null
                    }
                ],
                "sbg:links": [],
                "sbg:id": "4dn-dcic/dev/merge-pairs/25",
                "id": "4dn-dcic/dev/merge-pairs/25",
                "baseCommand": [
                    "run-merge-pairs.sh"
                ],
                "class": "CommandLineTool",
                "inputs": [
                    {
                        "required": false,
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out",
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "sbg:fileTypes": "PAIRS.GZ",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "required": false,
                        "sbg:stageInput": "copy",
                        "id": "#input_pairs",
                        "inputBinding": {
                            "position": 2,
                            "itemSeparator": " ",
                            "separate": true,
                            "sbg:cmdInclude": true
                        }
                    }
                ],
                "temporaryFailCodes": [],
                "x": 385.57145629610346,
                "arguments": [],
                "stdin": "",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/merge-pairs/25",
                "sbg:projectName": "Dev",
                "sbg:createdBy": "duplexa",
                "sbg:project": "4dn-dcic/dev",
                "sbg:validationErrors": [],
                "sbg:modifiedBy": "4dn-dcic",
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.outprefix + '.pairs.gz.px2'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#output_pairs_index",
                        "sbg:fileTypes": "PX2",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.outprefix + '.pairs.gz'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#output_pairs",
                        "sbg:fileTypes": "PAIRS.GZ",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "y": 192.94197236852995,
                "sbg:cmdPreview": "run-merge-pairs.sh",
                "sbg:revision": 25,
                "sbg:createdOn": 1479143121,
                "sbg:latestRevision": 25,
                "description": "",
                "sbg:modifiedOn": 1500331813,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "cwlVersion": "sbg:draft-2",
                "successCodes": [],
                "sbg:image_url": null,
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v26"
                    },
                    {
                        "value": "",
                        "class": "ExpressionEngineRequirement"
                    }
                ]
            },
            "id": "#merge_pairs",
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
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs_index"
                },
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ],
            "sbg:y": 192.94197236852995,
            "sbg:x": 385.57145629610346
        },
        {
            "run": {
                "sbg:sbgMaintained": false,
                "requirements": [],
                "stdout": "",
                "sbg:job": {
                    "inputs": {
                        "min_res": 4,
                        "output_prefix": "output_prefix-string-value",
                        "input_pairs": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_pairs.ext",
                            "class": "File",
                            "size": 0
                        },
                        "chromsizes_file": {
                            "secondaryFiles": [],
                            "path": "/path/to/chromsizes_file.ext",
                            "class": "File",
                            "size": 0
                        },
                        "maxmem": "maxmem-string-value",
                        "higlass": "higlass-string-value"
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 58000
                    }
                },
                "label": "pairs2hic",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496168605,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496168842,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496168924,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496172319,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496176108,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496178546,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1500331857,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501513062,
                        "sbg:revisionNotes": "added java maxmem as parameter"
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501595773,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501605274,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501637382,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501689608,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501689663,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501689805,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501707253,
                        "sbg:revisionNotes": "15GB mem"
                    },
                    {
                        "sbg:revision": 15,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501780759,
                        "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed."
                    }
                ],
                "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
                "sbg:id": "4dn-dcic/dev/pairs2hic/15",
                "id": "4dn-dcic/dev/pairs2hic/15",
                "baseCommand": [
                    "run-juicebox-pre.sh"
                ],
                "class": "CommandLineTool",
                "inputs": [
                    {
                        "required": false,
                        "id": "#output_prefix",
                        "sbg:toolDefaultValue": "out",
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "sbg:toolDefaultValue": "5000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "required": false,
                        "sbg:stageInput": null,
                        "id": "#min_res",
                        "inputBinding": {
                            "position": 4,
                            "separate": true,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "required": false,
                        "id": "#maxmem",
                        "sbg:toolDefaultValue": "14g",
                        "inputBinding": {
                            "position": 6,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "sbg:fileTypes": ".PAIRS.GZ",
                        "id": "#input_pairs",
                        "required": false,
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "string"
                        ],
                        "required": false,
                        "sbg:stageInput": null,
                        "id": "#higlass",
                        "inputBinding": {
                            "position": 5,
                            "separate": true,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "id": "#chromsizes_file",
                        "required": false,
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "temporaryFailCodes": [],
                "x": 698.5716418246949,
                "arguments": [],
                "stdin": "",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/pairs2hic/15",
                "sbg:projectName": "Dev",
                "sbg:createdBy": "4dn-dcic",
                "sbg:project": "4dn-dcic/dev",
                "sbg:validationErrors": [],
                "sbg:modifiedBy": "4dn-dcic",
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.hic"
                        },
                        "id": "#output_hic",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "y": 440.9375780899948,
                "sbg:cmdPreview": "run-juicebox-pre.sh",
                "sbg:revision": 15,
                "sbg:createdOn": 1496168605,
                "sbg:latestRevision": 15,
                "description": "",
                "sbg:modifiedOn": 1501780759,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "cwlVersion": "sbg:draft-2",
                "successCodes": [],
                "sbg:image_url": null,
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
                        "diskSize": null,
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v30"
                    }
                ]
            },
            "id": "#pairs2hic",
            "inputs": [
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
                    "id": "#pairs2hic.maxmem",
                    "source": [
                        "#maxmem"
                    ]
                },
                {
                    "id": "#pairs2hic.input_pairs",
                    "source": [
                        "#merge_pairs.output_pairs"
                    ]
                },
                {
                    "id": "#pairs2hic.higlass",
                    "default": "1"
                },
                {
                    "id": "#pairs2hic.chromsizes_file",
                    "source": [
                        "#chrsizes"
                    ]
                }
            ],
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
            "sbg:y": 440.9375780899948,
            "sbg:x": 698.5716418246949
        },
        {
            "run": {
                "sbg:sbgMaintained": false,
                "requirements": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
                        "max_split": 0,
                        "outprefix": "outprefix-string-value",
                        "ncores": 5,
                        "pairs": {
                            "secondaryFiles": [
                                {
                                    "path": "$job.inputs.pairs + '.px2'"
                                }
                            ],
                            "path": "/path/to/pairs.ext",
                            "class": "File",
                            "size": 0
                        },
                        "pairs_index": {
                            "secondaryFiles": [],
                            "path": "/path/to/pairs_index.ext",
                            "class": "File",
                            "size": 0
                        },
                        "chrsizes": {
                            "secondaryFiles": [],
                            "path": "/path/to/chrsize.ext",
                            "class": "File",
                            "size": 0
                        },
                        "binsize": 4
                    },
                    "allocatedResources": {
                        "cpu": 2,
                        "mem": 16000
                    }
                },
                "label": "cooler",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488495202,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488495392,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488495453,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488499764,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488511643,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488511809,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488525294,
                        "sbg:revisionNotes": "now using 4dn-hic docker image"
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488529899,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1490716960,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496167357,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496168048,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496175693,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496175978,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499354982,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499625090,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 15,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499625139,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 16,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499627281,
                        "sbg:revisionNotes": "Mem 960GB"
                    },
                    {
                        "sbg:revision": 17,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499690249,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 18,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1500331793,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 19,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501908398,
                        "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement."
                    }
                ],
                "sbg:id": "4dn-dcic/dev/cooler/19",
                "id": "4dn-dcic/dev/cooler/19",
                "baseCommand": [
                    "run-cooler.sh"
                ],
                "class": "CommandLineTool",
                "inputs": [
                    {
                        "required": false,
                        "id": "#pairs_index",
                        "sbg:stageInput": "copy",
                        "sbg:fileTypes": "PX2",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": "PAIRS.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "sbg:stageInput": "copy",
                        "id": "#pairs",
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out",
                        "inputBinding": {
                            "position": 5,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#ncores",
                        "sbg:toolDefaultValue": "8",
                        "inputBinding": {
                            "position": 4,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#max_split",
                        "sbg:toolDefaultValue": "2",
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "position": 6,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:stageInput": null
                    },
                    {
                        "sbg:fileTypes": "SIZES",
                        "id": "#chrsizes",
                        "required": false,
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#binsize",
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:stageInput": null
                    }
                ],
                "temporaryFailCodes": [],
                "stdout": "",
                "x": 658.4286107335774,
                "arguments": [],
                "stdin": "",
                "sbg:latestRevision": 19,
                "sbg:projectName": "Dev",
                "sbg:createdBy": "duplexa",
                "sbg:project": "4dn-dcic/dev",
                "sbg:validationErrors": [],
                "sbg:modifiedBy": "4dn-dcic",
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.cool"
                        },
                        "id": "#out_cool",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "y": 238.94198231399068,
                "sbg:cmdPreview": "run-cooler.sh",
                "sbg:revision": 19,
                "sbg:createdOn": 1488495202,
                "sbg:modifiedOn": 1501908398,
                "description": "",
                "sbg:image_url": null,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "successCodes": [],
                "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v31"
                    }
                ]
            },
            "id": "#cooler",
            "inputs": [
                {
                    "id": "#cooler.pairs_index",
                    "source": [
                        "#merge_pairs.output_pairs_index"
                    ]
                },
                {
                    "id": "#cooler.pairs",
                    "source": [
                        "#merge_pairs.output_pairs"
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
                }
            ],
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
            "sbg:y": 238.94198231399068,
            "sbg:x": 658.4286107335774
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partb/39/raw/",
    "sbg:latestRevision": 39,
    "class": "Workflow",
    "inputs": [
        {
            "label": "chrsizes",
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 365.8544025321941,
            "sbg:fileTypes": "SIZES",
            "sbg:x": -44.285710918659674
        },
        {
            "label": "input_pairs",
            "id": "#input_pairs",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "sbg:y": 138.56737856934552,
            "sbg:fileTypes": "PAIRS.GZ",
            "sbg:x": -32.85716799814047
        },
        {
            "sbg:toolDefaultValue": "5000",
            "sbg:stageInput": null,
            "id": "#min_res",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "sbg:includeInPorts": false,
            "id": "#binsize",
            "sbg:stageInput": null,
            "required": false,
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#ncores",
            "required": false,
            "sbg:toolDefaultValue": "8",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#maxmem",
            "required": false,
            "sbg:suggestedValue": "14g",
            "sbg:toolDefaultValue": "14g",
            "type": [
                "null",
                "string"
            ]
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "label": "Hi-C_processing_partB",
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "4dn-dcic",
    "outputs": [
        {
            "label": "output_pairs_index",
            "id": "#output_pairs_index",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": -0.7171201026670033,
            "required": false,
            "source": [
                "#merge_pairs.output_pairs_index"
            ],
            "sbg:fileTypes": "PX2",
            "sbg:x": 578.2857636043005
        },
        {
            "label": "output_pairs",
            "id": "#output_pairs",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 139.7114601133321,
            "required": false,
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "sbg:fileTypes": "PAIRS.GZ",
            "sbg:x": 814.5714787074501
        },
        {
            "label": "out_cool",
            "id": "#out_cool",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 294.56866071643174,
            "required": false,
            "source": [
                "#cooler.out_cool"
            ],
            "sbg:x": 787.2858953184084
        },
        {
            "label": "output_hic",
            "id": "#output_hic",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 524.2816587756744,
            "required": false,
            "source": [
                "#pairs2hic.output_hic"
            ],
            "sbg:x": 910.0000171272096
        }
    ],
    "sbg:canvas_y": 43,
    "sbg:createdOn": 1479144431,
    "sbg:revision": 39,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partb/39",
    "description": "",
    "sbg:modifiedOn": 1502485439,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144431,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144466,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479146390,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149385,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149442,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479150047,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1479241950,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530005,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530109,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530281,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530836,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 11,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530872,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 12,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488531567,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 13,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496181927,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 14,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496181955,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 15,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496182121,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 16,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496188521,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 17,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496188582,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 18,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496188729,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 19,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496190149,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 20,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499355043,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 21,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499356869,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 22,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499363602,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 23,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499370019,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 24,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499460260,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 25,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499529552,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 26,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499625173,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 27,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499627303,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 28,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500331892,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 29,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501513539,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 30,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501514350,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 31,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501514405,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 32,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689712,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 33,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689823,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 34,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501707297,
            "sbg:revisionNotes": "15G mem for pairs2hic"
        },
        {
            "sbg:revision": 35,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501765060,
            "sbg:revisionNotes": "r3.8xlarge for cooler"
        },
        {
            "sbg:revision": 36,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501780788,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 37,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501780943,
            "sbg:revisionNotes": "workflow pairs2hic maxmem set up 56g"
        },
        {
            "sbg:revision": 38,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501908603,
            "sbg:revisionNotes": "cooler 16G mem max_split parameter included as a default 2 (not modifiable)"
        },
        {
            "sbg:revision": 39,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502485439,
            "sbg:revisionNotes": null
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partb/39.png",
    "hints": []
}