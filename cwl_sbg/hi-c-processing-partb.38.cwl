{
    "sbg:canvas_zoom": 0.6999999999999997,
    "sbg:sbgMaintained": false,
    "sbg:project": "4dn-dcic/dev",
    "steps": [
        {
            "run": {
                "y": 192.94197236852995,
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "label": "merge-pairs",
                "inputs": [
                    {
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out",
                        "required": false,
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "sbg:stageInput": "copy",
                        "id": "#input_pairs",
                        "required": false,
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "itemSeparator": " ",
                            "separate": true
                        },
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "File"
                            }
                        ],
                        "sbg:fileTypes": "PAIRS.GZ"
                    }
                ],
                "sbg:revision": 25,
                "sbg:job": {
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "input_pairs": [
                            {
                                "path": "/path/to/input_pairs-1.ext",
                                "class": "File",
                                "secondaryFiles": [],
                                "size": 0
                            },
                            {
                                "path": "/path/to/input_pairs-2.ext",
                                "class": "File",
                                "secondaryFiles": [],
                                "size": 0
                            }
                        ]
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 4000
                    }
                },
                "sbg:latestRevision": 25,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "stdin": "",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ]
                    }
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "id": "4dn-dcic/dev/merge-pairs/25",
                "sbg:links": [],
                "baseCommand": [
                    "run-merge-pairs.sh"
                ],
                "cwlVersion": "sbg:draft-2",
                "stdout": "",
                "description": "",
                "sbg:projectName": "Dev",
                "arguments": [],
                "successCodes": [],
                "sbg:image_url": null,
                "outputs": [
                    {
                        "id": "#output_pairs_index",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.outprefix + '.pairs.gz.px2'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "PX2"
                    },
                    {
                        "id": "#output_pairs",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.outprefix + '.pairs.gz'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "PAIRS.GZ"
                    }
                ],
                "class": "CommandLineTool",
                "sbg:modifiedOn": 1500331813,
                "sbg:createdOn": 1479143121,
                "x": 385.57145629610346,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1479143121,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1479143406,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1479143659,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1479143834,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1479143945,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1479144065,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1479144200,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1479144240,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1479144301,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1479149340,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1479149428,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1479149963,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1479155094,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1479241188,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1488524515,
                        "sbg:revisionNotes": "now using 4dn-hic docker image",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 15,
                        "sbg:modifiedOn": 1488524641,
                        "sbg:revisionNotes": "pairs and index are copied not links, so that they go together.",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 16,
                        "sbg:modifiedOn": 1488524868,
                        "sbg:revisionNotes": "removed blank secondary file requirement",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 17,
                        "sbg:modifiedOn": 1488525221,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 18,
                        "sbg:modifiedOn": 1488529667,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 19,
                        "sbg:modifiedOn": 1488531529,
                        "sbg:revisionNotes": "removed outdir in the output glob",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 20,
                        "sbg:modifiedOn": 1488567441,
                        "sbg:revisionNotes": "fixed output file name",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 21,
                        "sbg:modifiedOn": 1490716980,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 22,
                        "sbg:modifiedOn": 1496166568,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 23,
                        "sbg:modifiedOn": 1496188642,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 24,
                        "sbg:modifiedOn": 1499356728,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 25,
                        "sbg:modifiedOn": 1500331813,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "sbg:cmdPreview": "run-merge-pairs.sh",
                "sbg:createdBy": "duplexa",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/merge-pairs/25",
                "temporaryFailCodes": [],
                "sbg:id": "4dn-dcic/dev/merge-pairs/25",
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
                        "dockerPull": "duplexa/4dn-hic:v26",
                        "dockerImageId": ""
                    },
                    {
                        "class": "ExpressionEngineRequirement",
                        "value": ""
                    }
                ]
            },
            "sbg:y": 192.94197236852995,
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs_index"
                },
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ],
            "id": "#merge_pairs",
            "inputs": [
                {
                    "id": "#merge_pairs.outprefix",
                    "default": "out"
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
            "run": {
                "y": 440.9375780899948,
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "label": "pairs2hic",
                "inputs": [
                    {
                        "id": "#output_prefix",
                        "sbg:toolDefaultValue": "out",
                        "required": false,
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "5000",
                        "sbg:stageInput": null,
                        "id": "#min_res",
                        "required": false,
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "id": "#maxmem",
                        "sbg:toolDefaultValue": "14g",
                        "required": false,
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "position": 6,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "id": "#input_pairs",
                        "required": false,
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".PAIRS.GZ"
                    },
                    {
                        "sbg:toolDefaultValue": "1",
                        "sbg:stageInput": null,
                        "id": "#higlass",
                        "required": false,
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "position": 5,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "id": "#chromsizes_file",
                        "required": false,
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".CHROM.SIZES"
                    }
                ],
                "sbg:revision": 15,
                "sbg:job": {
                    "inputs": {
                        "maxmem": "maxmem-string-value",
                        "input_pairs": {
                            "path": "/path/to/input_pairs.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "chromsizes_file": {
                            "path": "/path/to/chromsizes_file.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "min_res": 4,
                        "higlass": "higlass-string-value",
                        "output_prefix": "output_prefix-string-value"
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 58000
                    }
                },
                "sbg:latestRevision": 15,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "stdin": "",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "requirements": [],
                "sbg:modifiedBy": "4dn-dcic",
                "id": "4dn-dcic/dev/pairs2hic/15",
                "baseCommand": [
                    "run-juicebox-pre.sh"
                ],
                "cwlVersion": "sbg:draft-2",
                "stdout": "",
                "description": "",
                "sbg:projectName": "Dev",
                "arguments": [],
                "successCodes": [],
                "sbg:image_url": null,
                "outputs": [
                    {
                        "id": "#output_hic",
                        "outputBinding": {
                            "glob": "*.hic"
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
                "class": "CommandLineTool",
                "sbg:modifiedOn": 1501780759,
                "sbg:createdOn": 1496168605,
                "x": 698.5716418246949,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1496168605,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1496168842,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1496168924,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1496172319,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1496176108,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1496178546,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1500331857,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1501513062,
                        "sbg:revisionNotes": "added java maxmem as parameter",
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1501595773,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1501605274,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1501637382,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1501689608,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1501689663,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1501689805,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1501707253,
                        "sbg:revisionNotes": "15GB mem",
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 15,
                        "sbg:modifiedOn": 1501780759,
                        "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "sbg:cmdPreview": "run-juicebox-pre.sh",
                "sbg:createdBy": "4dn-dcic",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/pairs2hic/15",
                "temporaryFailCodes": [],
                "sbg:id": "4dn-dcic/dev/pairs2hic/15",
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
                        "dockerPull": "duplexa/4dn-hic:v30",
                        "dockerImageId": "",
                        "diskSize": null
                    }
                ]
            },
            "sbg:y": 440.9375780899948,
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
            "id": "#pairs2hic",
            "inputs": [
                {
                    "id": "#pairs2hic.output_prefix",
                    "default": "out"
                },
                {
                    "source": [
                        "#min_res"
                    ],
                    "id": "#pairs2hic.min_res"
                },
                {
                    "id": "#pairs2hic.maxmem",
                    "default": "56g"
                },
                {
                    "source": [
                        "#merge_pairs.output_pairs"
                    ],
                    "id": "#pairs2hic.input_pairs"
                },
                {
                    "id": "#pairs2hic.higlass",
                    "default": "1"
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
            "run": {
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "label": "cooler",
                "inputs": [
                    {
                        "id": "#pairs",
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:stageInput": "copy",
                        "sbg:fileTypes": "PAIRS.GZ"
                    },
                    {
                        "id": "#pairs_index",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:stageInput": "copy",
                        "sbg:fileTypes": "PX2"
                    },
                    {
                        "id": "#chrsizes",
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "SIZES"
                    },
                    {
                        "id": "#binsize",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "position": 5,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "id": "#ncores",
                        "sbg:toolDefaultValue": "8",
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "id": "#max_split",
                        "sbg:toolDefaultValue": "2",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "position": 6,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    }
                ],
                "sbg:revision": 19,
                "sbg:job": {
                    "inputs": {
                        "binsize": 4,
                        "ncores": 5,
                        "pairs": {
                            "path": "/path/to/pairs.ext",
                            "class": "File",
                            "secondaryFiles": [
                                {
                                    "path": "$job.inputs.pairs + '.px2'"
                                }
                            ],
                            "size": 0
                        },
                        "chrsizes": {
                            "path": "/path/to/chrsize.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "max_split": 0,
                        "outprefix": "outprefix-string-value",
                        "pairs_index": {
                            "path": "/path/to/pairs_index.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "cpu": 2,
                        "mem": 16000
                    }
                },
                "sbg:latestRevision": 19,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "stdin": "",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "requirements": [],
                "sbg:modifiedBy": "4dn-dcic",
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/19/raw/",
                "baseCommand": [
                    "run-cooler.sh"
                ],
                "cwlVersion": "sbg:draft-2",
                "stdout": "",
                "description": "",
                "sbg:projectName": "Dev",
                "arguments": [],
                "successCodes": [],
                "sbg:image_url": null,
                "outputs": [
                    {
                        "id": "#out_cool",
                        "outputBinding": {
                            "glob": "*.cool"
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
                "class": "CommandLineTool",
                "sbg:modifiedOn": 1501908398,
                "sbg:createdOn": 1488495202,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1488495202,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1488495392,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1488495453,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1488499764,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1488511643,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1488511809,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1488525294,
                        "sbg:revisionNotes": "now using 4dn-hic docker image",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1488529899,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1490716960,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1496167357,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1496168048,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1496175693,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1496175978,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1499354982,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1499625090,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 15,
                        "sbg:modifiedOn": 1499625139,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 16,
                        "sbg:modifiedOn": 1499627281,
                        "sbg:revisionNotes": "Mem 960GB",
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 17,
                        "sbg:modifiedOn": 1499690249,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 18,
                        "sbg:modifiedOn": 1500331793,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revision": 19,
                        "sbg:modifiedOn": 1501908398,
                        "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "sbg:cmdPreview": "run-cooler.sh",
                "sbg:createdBy": "duplexa",
                "temporaryFailCodes": [],
                "sbg:id": "4dn-dcic/dev/cooler/19",
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
                        "dockerPull": "duplexa/4dn-hic:v31",
                        "dockerImageId": ""
                    }
                ]
            },
            "sbg:y": 238.94198231399068,
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
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
                    "id": "#cooler.outprefix",
                    "default": "out"
                },
                {
                    "source": [
                        "#ncores"
                    ],
                    "id": "#cooler.ncores"
                },
                {
                    "id": "#cooler.max_split",
                    "default": 2
                }
            ],
            "sbg:x": 658.4286107335774
        }
    ],
    "label": "Hi-C_processing_partB",
    "sbg:createdOn": 1479144431,
    "sbg:revision": 38,
    "sbg:latestRevision": 38,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:validationErrors": [],
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "requirements": [],
    "sbg:modifiedBy": "4dn-dcic",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partb/38/raw/",
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_x": 108,
    "description": "",
    "sbg:projectName": "Dev",
    "sbg:canvas_y": 43,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partb/38.png",
    "outputs": [
        {
            "label": "output_pairs_index",
            "source": [
                "#merge_pairs.output_pairs_index"
            ],
            "sbg:includeInPorts": true,
            "id": "#output_pairs_index",
            "sbg:x": 578.2857636043005,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": -0.7171201026670033,
            "sbg:fileTypes": "PX2"
        },
        {
            "label": "output_pairs",
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "sbg:includeInPorts": true,
            "id": "#output_pairs",
            "sbg:x": 814.5714787074501,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 139.7114601133321,
            "sbg:fileTypes": "PAIRS.GZ"
        },
        {
            "label": "out_cool",
            "source": [
                "#cooler.out_cool"
            ],
            "sbg:includeInPorts": true,
            "id": "#out_cool",
            "sbg:x": 787.2858953184084,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 294.56866071643174
        },
        {
            "label": "output_hic",
            "source": [
                "#pairs2hic.output_hic"
            ],
            "sbg:includeInPorts": true,
            "id": "#output_hic",
            "sbg:x": 910.0000171272096,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 524.2816587756744
        }
    ],
    "sbg:revisionNotes": "cooler 16G mem max_split parameter included as a default 2 (not modifiable)",
    "class": "Workflow",
    "sbg:modifiedOn": 1501908603,
    "inputs": [
        {
            "label": "chrsizes",
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": -44.285710918659674,
            "sbg:y": 365.8544025321941,
            "sbg:fileTypes": ".CHROM.SIZES"
        },
        {
            "label": "input_pairs",
            "id": "#input_pairs",
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "sbg:x": -32.85716799814047,
            "sbg:y": 138.56737856934552,
            "sbg:fileTypes": "PAIRS.GZ"
        },
        {
            "id": "#min_res",
            "sbg:toolDefaultValue": "5000",
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null
        },
        {
            "id": "#ncores",
            "sbg:toolDefaultValue": "8",
            "required": false,
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#binsize",
            "required": false,
            "sbg:includeInPorts": false,
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1479144431,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1479144466,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1479146390,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1479149385,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1479149442,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1479150047,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedOn": 1479241950,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedOn": 1488530005,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedOn": 1488530109,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedOn": 1488530281,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedOn": 1488530836,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 11,
            "sbg:modifiedOn": 1488530872,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 12,
            "sbg:modifiedOn": 1488531567,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 13,
            "sbg:modifiedOn": 1496181927,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 14,
            "sbg:modifiedOn": 1496181955,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 15,
            "sbg:modifiedOn": 1496182121,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 16,
            "sbg:modifiedOn": 1496188521,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 17,
            "sbg:modifiedOn": 1496188582,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 18,
            "sbg:modifiedOn": 1496188729,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 19,
            "sbg:modifiedOn": 1496190149,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 20,
            "sbg:modifiedOn": 1499355043,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 21,
            "sbg:modifiedOn": 1499356869,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 22,
            "sbg:modifiedOn": 1499363602,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 23,
            "sbg:modifiedOn": 1499370019,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 24,
            "sbg:modifiedOn": 1499460260,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 25,
            "sbg:modifiedOn": 1499529552,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 26,
            "sbg:modifiedOn": 1499625173,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 27,
            "sbg:modifiedOn": 1499627303,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 28,
            "sbg:modifiedOn": 1500331892,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 29,
            "sbg:modifiedOn": 1501513539,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 30,
            "sbg:modifiedOn": 1501514350,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 31,
            "sbg:modifiedOn": 1501514405,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 32,
            "sbg:modifiedOn": 1501689712,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 33,
            "sbg:modifiedOn": 1501689823,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 34,
            "sbg:modifiedOn": 1501707297,
            "sbg:revisionNotes": "15G mem for pairs2hic",
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 35,
            "sbg:modifiedOn": 1501765060,
            "sbg:revisionNotes": "r3.8xlarge for cooler",
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 36,
            "sbg:modifiedOn": 1501780788,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 37,
            "sbg:modifiedOn": 1501780943,
            "sbg:revisionNotes": "workflow pairs2hic maxmem set up 56g",
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revision": 38,
            "sbg:modifiedOn": 1501908603,
            "sbg:revisionNotes": "cooler 16G mem max_split parameter included as a default 2 (not modifiable)",
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partb/38",
    "hints": []
}