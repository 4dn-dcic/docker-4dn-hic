{
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partb/38/raw/",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partb/38",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:sbgMaintained": false,
    "cwlVersion": "sbg:draft-2",
    "sbg:validationErrors": [],
    "sbg:revisionNotes": "cooler 16G mem max_split parameter included as a default 2 (not modifiable)",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partb/38.png",
    "steps": [
        {
            "id": "#merge_pairs",
            "run": {
                "id": "4dn-dcic/dev/merge-pairs/25",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/merge-pairs/25",
                "sbg:modifiedOn": 1500331813,
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:links": [],
                "temporaryFailCodes": [],
                "sbg:sbgMaintained": false,
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:job": {
                    "inputs": {
                        "input_pairs": [
                            {
                                "path": "/path/to/input_pairs-1.ext",
                                "size": 0,
                                "class": "File",
                                "secondaryFiles": []
                            },
                            {
                                "path": "/path/to/input_pairs-2.ext",
                                "size": 0,
                                "class": "File",
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
                "baseCommand": [
                    "run-merge-pairs.sh"
                ],
                "sbg:image_url": null,
                "sbg:cmdPreview": "run-merge-pairs.sh",
                "class": "CommandLineTool",
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1479143121,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1479143406,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedOn": 1479143659,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedOn": 1479143834,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedOn": 1479143945,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedOn": 1479144065,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedOn": 1479144200,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6
                    },
                    {
                        "sbg:modifiedOn": 1479144240,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7
                    },
                    {
                        "sbg:modifiedOn": 1479144301,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 8
                    },
                    {
                        "sbg:modifiedOn": 1479149340,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 9
                    },
                    {
                        "sbg:modifiedOn": 1479149428,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 10
                    },
                    {
                        "sbg:modifiedOn": 1479149963,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 11
                    },
                    {
                        "sbg:modifiedOn": 1479155094,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 12
                    },
                    {
                        "sbg:modifiedOn": 1479241188,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 13
                    },
                    {
                        "sbg:modifiedOn": 1488524515,
                        "sbg:revisionNotes": "now using 4dn-hic docker image",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 14
                    },
                    {
                        "sbg:modifiedOn": 1488524641,
                        "sbg:revisionNotes": "pairs and index are copied not links, so that they go together.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 15
                    },
                    {
                        "sbg:modifiedOn": 1488524868,
                        "sbg:revisionNotes": "removed blank secondary file requirement",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 16
                    },
                    {
                        "sbg:modifiedOn": 1488525221,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 17
                    },
                    {
                        "sbg:modifiedOn": 1488529667,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 18
                    },
                    {
                        "sbg:modifiedOn": 1488531529,
                        "sbg:revisionNotes": "removed outdir in the output glob",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 19
                    },
                    {
                        "sbg:modifiedOn": 1488567441,
                        "sbg:revisionNotes": "fixed output file name",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 20
                    },
                    {
                        "sbg:modifiedOn": 1490716980,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 21
                    },
                    {
                        "sbg:modifiedOn": 1496166568,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 22
                    },
                    {
                        "sbg:modifiedOn": 1496188642,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 23
                    },
                    {
                        "sbg:modifiedOn": 1499356728,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 24
                    },
                    {
                        "sbg:modifiedOn": 1500331813,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 25
                    }
                ],
                "stdout": "",
                "arguments": [],
                "y": 192.94197236852995,
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
                "outputs": [
                    {
                        "id": "#output_pairs_index",
                        "sbg:fileTypes": "PX2",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.outprefix + '.pairs.gz.px2'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        }
                    },
                    {
                        "id": "#output_pairs",
                        "sbg:fileTypes": "PAIRS.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.outprefix + '.pairs.gz'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        }
                    }
                ],
                "sbg:createdBy": "duplexa",
                "sbg:revision": 25,
                "sbg:id": "4dn-dcic/dev/merge-pairs/25",
                "sbg:createdOn": 1479143121,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
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
                        "dockerImageId": "",
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v26"
                    },
                    {
                        "class": "ExpressionEngineRequirement",
                        "value": ""
                    }
                ],
                "successCodes": [],
                "description": "",
                "label": "merge-pairs",
                "sbg:latestRevision": 25,
                "sbg:projectName": "Dev",
                "stdin": "",
                "x": 385.57145629610346,
                "inputs": [
                    {
                        "id": "#outprefix",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        },
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "required": false
                    },
                    {
                        "id": "#input_pairs",
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " "
                        },
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "required": false,
                        "sbg:fileTypes": "PAIRS.GZ",
                        "sbg:stageInput": "copy"
                    }
                ]
            },
            "sbg:x": 385.57145629610346,
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
            "sbg:y": 192.94197236852995
        },
        {
            "id": "#pairs2hic",
            "run": {
                "id": "4dn-dcic/dev/pairs2hic/15",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/pairs2hic/15",
                "sbg:modifiedOn": 1501780759,
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:image_url": null,
                "temporaryFailCodes": [],
                "sbg:sbgMaintained": false,
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:job": {
                    "inputs": {
                        "output_prefix": "output_prefix-string-value",
                        "maxmem": "maxmem-string-value",
                        "higlass": "higlass-string-value",
                        "min_res": 4,
                        "chromsizes_file": {
                            "path": "/path/to/chromsizes_file.ext",
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "input_pairs": {
                            "path": "/path/to/input_pairs.ext",
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": []
                        }
                    },
                    "allocatedResources": {
                        "mem": 58000,
                        "cpu": 1
                    }
                },
                "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
                "baseCommand": [
                    "run-juicebox-pre.sh"
                ],
                "arguments": [],
                "sbg:cmdPreview": "run-juicebox-pre.sh",
                "y": 440.9375780899948,
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1496168605,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1496168842,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedOn": 1496168924,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedOn": 1496172319,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedOn": 1496176108,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedOn": 1496178546,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedOn": 1500331857,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 6
                    },
                    {
                        "sbg:modifiedOn": 1501513062,
                        "sbg:revisionNotes": "added java maxmem as parameter",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 7
                    },
                    {
                        "sbg:modifiedOn": 1501595773,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 8
                    },
                    {
                        "sbg:modifiedOn": 1501605274,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 9
                    },
                    {
                        "sbg:modifiedOn": 1501637382,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 10
                    },
                    {
                        "sbg:modifiedOn": 1501689608,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 11
                    },
                    {
                        "sbg:modifiedOn": 1501689663,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 12
                    },
                    {
                        "sbg:modifiedOn": 1501689805,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 13
                    },
                    {
                        "sbg:modifiedOn": 1501707253,
                        "sbg:revisionNotes": "15GB mem",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 14
                    },
                    {
                        "sbg:modifiedOn": 1501780759,
                        "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 15
                    }
                ],
                "stdout": "",
                "class": "CommandLineTool",
                "requirements": [],
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
                "sbg:createdBy": "4dn-dcic",
                "sbg:revision": 15,
                "sbg:id": "4dn-dcic/dev/pairs2hic/15",
                "sbg:createdOn": 1496168605,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
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
                        "diskSize": null,
                        "dockerImageId": "",
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v30"
                    }
                ],
                "successCodes": [],
                "description": "",
                "label": "pairs2hic",
                "sbg:latestRevision": 15,
                "sbg:projectName": "Dev",
                "stdin": "",
                "x": 698.5716418246949,
                "inputs": [
                    {
                        "id": "#output_prefix",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        },
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "required": false
                    },
                    {
                        "id": "#min_res",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 4
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "required": false,
                        "sbg:toolDefaultValue": "5000",
                        "sbg:stageInput": null
                    },
                    {
                        "id": "#maxmem",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 6
                        },
                        "sbg:toolDefaultValue": "14g",
                        "type": [
                            "null",
                            "string"
                        ],
                        "required": false
                    },
                    {
                        "id": "#input_pairs",
                        "required": false,
                        "sbg:fileTypes": ".PAIRS.GZ",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#higlass",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 5
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "required": false,
                        "sbg:toolDefaultValue": "1",
                        "sbg:stageInput": null
                    },
                    {
                        "id": "#chromsizes_file",
                        "required": false,
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ]
            },
            "sbg:x": 698.5716418246949,
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
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
                    "default": "56g"
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
            "sbg:y": 440.9375780899948
        },
        {
            "id": "#cooler",
            "run": {
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/19/raw/",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:cmdPreview": "run-cooler.sh",
                "sbg:modifiedBy": "4dn-dcic",
                "arguments": [],
                "temporaryFailCodes": [],
                "sbg:sbgMaintained": false,
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
                "sbg:job": {
                    "inputs": {
                        "chrsizes": {
                            "path": "/path/to/chrsize.ext",
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "binsize": 4,
                        "pairs": {
                            "path": "/path/to/pairs.ext",
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [
                                {
                                    "path": "$job.inputs.pairs + '.px2'"
                                }
                            ]
                        },
                        "max_split": 0,
                        "pairs_index": {
                            "path": "/path/to/pairs_index.ext",
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "ncores": 5,
                        "outprefix": "outprefix-string-value"
                    },
                    "allocatedResources": {
                        "mem": 16000,
                        "cpu": 2
                    }
                },
                "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
                "sbg:image_url": null,
                "sbg:modifiedOn": 1501908398,
                "class": "CommandLineTool",
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1488495202,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1488495392,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedOn": 1488495453,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedOn": 1488499764,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedOn": 1488511643,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedOn": 1488511809,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedOn": 1488525294,
                        "sbg:revisionNotes": "now using 4dn-hic docker image",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6
                    },
                    {
                        "sbg:modifiedOn": 1488529899,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7
                    },
                    {
                        "sbg:modifiedOn": 1490716960,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 8
                    },
                    {
                        "sbg:modifiedOn": 1496167357,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 9
                    },
                    {
                        "sbg:modifiedOn": 1496168048,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 10
                    },
                    {
                        "sbg:modifiedOn": 1496175693,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 11
                    },
                    {
                        "sbg:modifiedOn": 1496175978,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 12
                    },
                    {
                        "sbg:modifiedOn": 1499354982,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 13
                    },
                    {
                        "sbg:modifiedOn": 1499625090,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 14
                    },
                    {
                        "sbg:modifiedOn": 1499625139,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 15
                    },
                    {
                        "sbg:modifiedOn": 1499627281,
                        "sbg:revisionNotes": "Mem 960GB",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 16
                    },
                    {
                        "sbg:modifiedOn": 1499690249,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 17
                    },
                    {
                        "sbg:modifiedOn": 1500331793,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 18
                    },
                    {
                        "sbg:modifiedOn": 1501908398,
                        "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 19
                    }
                ],
                "stdout": "",
                "baseCommand": [
                    "run-cooler.sh"
                ],
                "requirements": [],
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
                "sbg:createdBy": "duplexa",
                "sbg:revision": 19,
                "sbg:id": "4dn-dcic/dev/cooler/19",
                "sbg:createdOn": 1488495202,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
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
                        "dockerImageId": "",
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v31"
                    }
                ],
                "successCodes": [],
                "description": "",
                "label": "cooler",
                "sbg:latestRevision": 19,
                "sbg:projectName": "Dev",
                "stdin": "",
                "inputs": [
                    {
                        "id": "#pairs",
                        "sbg:fileTypes": "PAIRS.GZ",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:stageInput": "copy"
                    },
                    {
                        "id": "#pairs_index",
                        "sbg:fileTypes": "PX2",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:stageInput": "copy"
                    },
                    {
                        "id": "#chrsizes",
                        "sbg:fileTypes": "SIZES",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#binsize",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null
                    },
                    {
                        "id": "#outprefix",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 5
                        },
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#ncores",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 4
                        },
                        "sbg:toolDefaultValue": "8",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#max_split",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 6
                        },
                        "sbg:toolDefaultValue": "2",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null
                    }
                ]
            },
            "sbg:x": 658.4286107335774,
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
            "inputs": [
                {
                    "id": "#cooler.pairs",
                    "source": [
                        "#merge_pairs.output_pairs"
                    ]
                },
                {
                    "id": "#cooler.pairs_index",
                    "source": [
                        "#merge_pairs.output_pairs_index"
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
            "sbg:y": 238.94198231399068
        }
    ],
    "sbg:modifiedOn": 1501908603,
    "class": "Workflow",
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1479144431,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1479144466,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1479146390,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2
        },
        {
            "sbg:modifiedOn": 1479149385,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1479149442,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4
        },
        {
            "sbg:modifiedOn": 1479150047,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5
        },
        {
            "sbg:modifiedOn": 1479241950,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6
        },
        {
            "sbg:modifiedOn": 1488530005,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 7
        },
        {
            "sbg:modifiedOn": 1488530109,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 8
        },
        {
            "sbg:modifiedOn": 1488530281,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 9
        },
        {
            "sbg:modifiedOn": 1488530836,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 10
        },
        {
            "sbg:modifiedOn": 1488530872,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 11
        },
        {
            "sbg:modifiedOn": 1488531567,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 12
        },
        {
            "sbg:modifiedOn": 1496181927,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 13
        },
        {
            "sbg:modifiedOn": 1496181955,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 14
        },
        {
            "sbg:modifiedOn": 1496182121,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 15
        },
        {
            "sbg:modifiedOn": 1496188521,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 16
        },
        {
            "sbg:modifiedOn": 1496188582,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 17
        },
        {
            "sbg:modifiedOn": 1496188729,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 18
        },
        {
            "sbg:modifiedOn": 1496190149,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 19
        },
        {
            "sbg:modifiedOn": 1499355043,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 20
        },
        {
            "sbg:modifiedOn": 1499356869,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 21
        },
        {
            "sbg:modifiedOn": 1499363602,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 22
        },
        {
            "sbg:modifiedOn": 1499370019,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 23
        },
        {
            "sbg:modifiedOn": 1499460260,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 24
        },
        {
            "sbg:modifiedOn": 1499529552,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 25
        },
        {
            "sbg:modifiedOn": 1499625173,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 26
        },
        {
            "sbg:modifiedOn": 1499627303,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 27
        },
        {
            "sbg:modifiedOn": 1500331892,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 28
        },
        {
            "sbg:modifiedOn": 1501513539,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 29
        },
        {
            "sbg:modifiedOn": 1501514350,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 30
        },
        {
            "sbg:modifiedOn": 1501514405,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 31
        },
        {
            "sbg:modifiedOn": 1501689712,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 32
        },
        {
            "sbg:modifiedOn": 1501689823,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 33
        },
        {
            "sbg:modifiedOn": 1501707297,
            "sbg:revisionNotes": "15G mem for pairs2hic",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 34
        },
        {
            "sbg:modifiedOn": 1501765060,
            "sbg:revisionNotes": "r3.8xlarge for cooler",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 35
        },
        {
            "sbg:modifiedOn": 1501780788,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 36
        },
        {
            "sbg:modifiedOn": 1501780943,
            "sbg:revisionNotes": "workflow pairs2hic maxmem set up 56g",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 37
        },
        {
            "sbg:modifiedOn": 1501908603,
            "sbg:revisionNotes": "cooler 16G mem max_split parameter included as a default 2 (not modifiable)",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 38
        }
    ],
    "requirements": [],
    "outputs": [
        {
            "id": "#output_pairs_index",
            "sbg:y": -0.7171201026670033,
            "sbg:x": 578.2857636043005,
            "label": "output_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:fileTypes": "PX2",
            "source": [
                "#merge_pairs.output_pairs_index"
            ],
            "sbg:includeInPorts": true
        },
        {
            "id": "#output_pairs",
            "sbg:y": 139.7114601133321,
            "sbg:x": 814.5714787074501,
            "label": "output_pairs",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:fileTypes": "PAIRS.GZ",
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "sbg:includeInPorts": true
        },
        {
            "id": "#out_cool",
            "sbg:y": 294.56866071643174,
            "label": "out_cool",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:x": 787.2858953184084,
            "source": [
                "#cooler.out_cool"
            ],
            "sbg:includeInPorts": true
        },
        {
            "id": "#output_hic",
            "sbg:y": 524.2816587756744,
            "label": "output_hic",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:x": 910.0000171272096,
            "source": [
                "#pairs2hic.output_hic"
            ],
            "sbg:includeInPorts": true
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:revision": 38,
    "sbg:createdOn": 1479144431,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "hints": [],
    "sbg:canvas_x": 108,
    "description": "",
    "label": "Hi-C_processing_partB",
    "sbg:canvas_zoom": 0.6999999999999997,
    "sbg:latestRevision": 38,
    "sbg:canvas_y": 43,
    "sbg:projectName": "Dev",
    "inputs": [
        {
            "id": "#chrsizes",
            "sbg:y": 365.8544025321941,
            "sbg:x": -44.285710918659674,
            "label": "chrsizes",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": ".CHROM.SIZES"
        },
        {
            "id": "#input_pairs",
            "sbg:y": 138.56737856934552,
            "sbg:x": -32.85716799814047,
            "label": "input_pairs",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
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
            "required": false,
            "sbg:toolDefaultValue": "8",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#binsize",
            "required": false,
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "sbg:includeInPorts": false
        }
    ]
}