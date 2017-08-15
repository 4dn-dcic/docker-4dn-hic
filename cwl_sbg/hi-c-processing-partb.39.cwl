{
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partb/39",
    "sbg:canvas_y": 43,
    "outputs": [
        {
            "sbg:fileTypes": "PX2",
            "required": false,
            "source": [
                "#merge_pairs.output_pairs_index"
            ],
            "sbg:y": -0.7171201026670033,
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs_index",
            "sbg:x": 578.2857636043005,
            "sbg:includeInPorts": true,
            "label": "output_pairs_index"
        },
        {
            "sbg:fileTypes": "PAIRS.GZ",
            "required": false,
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "sbg:y": 139.7114601133321,
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs",
            "sbg:x": 814.5714787074501,
            "sbg:includeInPorts": true,
            "label": "output_pairs"
        },
        {
            "required": false,
            "source": [
                "#cooler.out_cool"
            ],
            "sbg:y": 294.56866071643174,
            "type": [
                "null",
                "File"
            ],
            "id": "#out_cool",
            "sbg:x": 787.2858953184084,
            "sbg:includeInPorts": true,
            "label": "out_cool"
        },
        {
            "required": false,
            "source": [
                "#pairs2hic.output_hic"
            ],
            "sbg:y": 524.2816587756744,
            "type": [
                "null",
                "File"
            ],
            "id": "#output_hic",
            "sbg:x": 910.0000171272096,
            "sbg:includeInPorts": true,
            "label": "output_hic"
        }
    ],
    "sbg:modifiedOn": 1502485439,
    "requirements": [],
    "sbg:projectName": "Dev",
    "sbg:sbgMaintained": false,
    "description": "",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partb/39/raw/",
    "label": "Hi-C_processing_partB",
    "sbg:latestRevision": 39,
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
            "run": {
                "sbg:id": "4dn-dcic/dev/merge-pairs/25",
                "sbg:image_url": null,
                "outputs": [
                    {
                        "sbg:fileTypes": "PX2",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#output_pairs_index",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.outprefix + '.pairs.gz.px2'",
                                "class": "Expression"
                            }
                        }
                    },
                    {
                        "sbg:fileTypes": "PAIRS.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#output_pairs",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.outprefix + '.pairs.gz'",
                                "class": "Expression"
                            }
                        }
                    }
                ],
                "stdin": "",
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
                "sbg:links": [],
                "successCodes": [],
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:job": {
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "input_pairs": [
                            {
                                "path": "/path/to/input_pairs-1.ext",
                                "size": 0,
                                "secondaryFiles": [],
                                "class": "File"
                            },
                            {
                                "path": "/path/to/input_pairs-2.ext",
                                "size": 0,
                                "secondaryFiles": [],
                                "class": "File"
                            }
                        ]
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 4000
                    }
                },
                "sbg:projectName": "Dev",
                "sbg:modifiedOn": 1500331813,
                "stdout": "",
                "sbg:sbgMaintained": false,
                "sbg:validationErrors": [],
                "id": "4dn-dcic/dev/merge-pairs/25",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/merge-pairs/25",
                "sbg:latestRevision": 25,
                "y": 192.94197236852995,
                "sbg:createdBy": "duplexa",
                "description": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1479143121,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1479143406,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1479143659,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1479143834,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1479143945,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1479144065,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1479144200,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1479144240,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1479144301,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1479149340,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1479149428,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1479149963,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1479155094,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1479241188,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": "now using 4dn-hic docker image",
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1488524515,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "pairs and index are copied not links, so that they go together.",
                        "sbg:revision": 15,
                        "sbg:modifiedOn": 1488524641,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "removed blank secondary file requirement",
                        "sbg:revision": 16,
                        "sbg:modifiedOn": 1488524868,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 17,
                        "sbg:modifiedOn": 1488525221,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 18,
                        "sbg:modifiedOn": 1488529667,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "removed outdir in the output glob",
                        "sbg:revision": 19,
                        "sbg:modifiedOn": 1488531529,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "fixed output file name",
                        "sbg:revision": 20,
                        "sbg:modifiedOn": 1488567441,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 21,
                        "sbg:modifiedOn": 1490716980,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 22,
                        "sbg:modifiedOn": 1496166568,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 23,
                        "sbg:modifiedOn": 1496188642,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 24,
                        "sbg:modifiedOn": 1499356728,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 25,
                        "sbg:modifiedOn": 1500331813,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "x": 385.57145629610346,
                "sbg:project": "4dn-dcic/dev",
                "sbg:modifiedBy": "4dn-dcic",
                "arguments": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "label": "merge-pairs",
                "sbg:createdOn": 1479143121,
                "sbg:cmdPreview": "run-merge-pairs.sh",
                "sbg:revision": 25,
                "class": "CommandLineTool",
                "baseCommand": [
                    "run-merge-pairs.sh"
                ],
                "inputs": [
                    {
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix",
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    },
                    {
                        "sbg:fileTypes": "PAIRS.GZ",
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "id": "#input_pairs",
                        "sbg:stageInput": "copy"
                    }
                ],
                "cwlVersion": "sbg:draft-2",
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
                "temporaryFailCodes": []
            },
            "sbg:y": 192.94197236852995,
            "inputs": [
                {
                    "default": "out",
                    "id": "#merge_pairs.outprefix"
                },
                {
                    "id": "#merge_pairs.input_pairs",
                    "source": [
                        "#input_pairs"
                    ]
                }
            ],
            "id": "#merge_pairs",
            "sbg:x": 385.57145629610346
        },
        {
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
            "run": {
                "sbg:id": "4dn-dcic/dev/pairs2hic/15",
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#output_hic",
                        "outputBinding": {
                            "glob": "*.hic"
                        }
                    }
                ],
                "stdin": "",
                "requirements": [],
                "successCodes": [],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:job": {
                    "inputs": {
                        "chromsizes_file": {
                            "path": "/path/to/chromsizes_file.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "higlass": "higlass-string-value",
                        "input_pairs": {
                            "path": "/path/to/input_pairs.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "output_prefix": "output_prefix-string-value",
                        "maxmem": "maxmem-string-value",
                        "min_res": 4
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 58000
                    }
                },
                "sbg:projectName": "Dev",
                "sbg:modifiedOn": 1501780759,
                "stdout": "",
                "sbg:sbgMaintained": false,
                "description": "",
                "id": "4dn-dcic/dev/pairs2hic/15",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/pairs2hic/15",
                "sbg:latestRevision": 15,
                "y": 440.9375780899948,
                "sbg:createdBy": "4dn-dcic",
                "sbg:validationErrors": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1496168605,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1496168842,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1496168924,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1496172319,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1496176108,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1496178546,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1500331857,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": "added java maxmem as parameter",
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1501513062,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1501595773,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1501605274,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1501637382,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1501689608,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1501689663,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1501689805,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": "15GB mem",
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1501707253,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
                        "sbg:revision": 15,
                        "sbg:modifiedOn": 1501780759,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "x": 698.5716418246949,
                "sbg:project": "4dn-dcic/dev",
                "sbg:modifiedBy": "4dn-dcic",
                "arguments": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "label": "pairs2hic",
                "sbg:image_url": null,
                "sbg:cmdPreview": "run-juicebox-pre.sh",
                "sbg:revision": 15,
                "class": "CommandLineTool",
                "baseCommand": [
                    "run-juicebox-pre.sh"
                ],
                "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
                "inputs": [
                    {
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#output_prefix",
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    },
                    {
                        "inputBinding": {
                            "position": 4,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "sbg:toolDefaultValue": "5000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#min_res",
                        "sbg:stageInput": null
                    },
                    {
                        "sbg:toolDefaultValue": "14g",
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#maxmem",
                        "inputBinding": {
                            "position": 6,
                            "separate": true,
                            "sbg:cmdInclude": true
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
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    },
                    {
                        "inputBinding": {
                            "position": 5,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#higlass",
                        "sbg:stageInput": null
                    },
                    {
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#chromsizes_file",
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    }
                ],
                "sbg:createdOn": 1496168605,
                "cwlVersion": "sbg:draft-2",
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
                        "dockerImageId": "",
                        "diskSize": null,
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v30"
                    }
                ],
                "temporaryFailCodes": []
            },
            "sbg:y": 440.9375780899948,
            "inputs": [
                {
                    "default": "out",
                    "id": "#pairs2hic.output_prefix"
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
                    "default": "1",
                    "id": "#pairs2hic.higlass"
                },
                {
                    "id": "#pairs2hic.chromsizes_file",
                    "source": [
                        "#chrsizes"
                    ]
                }
            ],
            "id": "#pairs2hic",
            "sbg:x": 698.5716418246949
        },
        {
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
            "run": {
                "sbg:id": "4dn-dcic/dev/cooler/19",
                "sbg:image_url": null,
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#out_cool",
                        "outputBinding": {
                            "glob": "*.cool"
                        }
                    }
                ],
                "stdin": "",
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
                "requirements": [],
                "successCodes": [],
                "sbg:job": {
                    "inputs": {
                        "chrsizes": {
                            "path": "/path/to/chrsize.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "max_split": 0,
                        "pairs": {
                            "path": "/path/to/pairs.ext",
                            "size": 0,
                            "secondaryFiles": [
                                {
                                    "path": "$job.inputs.pairs + '.px2'"
                                }
                            ],
                            "class": "File"
                        },
                        "outprefix": "outprefix-string-value",
                        "binsize": 4,
                        "ncores": 5,
                        "pairs_index": {
                            "path": "/path/to/pairs_index.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 2,
                        "mem": 16000
                    }
                },
                "sbg:projectName": "Dev",
                "sbg:modifiedOn": 1501908398,
                "stdout": "",
                "sbg:sbgMaintained": false,
                "description": "",
                "id": "4dn-dcic/dev/cooler/19",
                "label": "cooler",
                "sbg:latestRevision": 19,
                "y": 238.94198231399068,
                "sbg:createdBy": "duplexa",
                "sbg:validationErrors": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1488495202,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1488495392,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1488495453,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1488499764,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1488511643,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1488511809,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "now using 4dn-hic docker image",
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1488525294,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1488529899,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1490716960,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1496167357,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1496168048,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1496175693,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1496175978,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1499354982,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1499625090,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 15,
                        "sbg:modifiedOn": 1499625139,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": "Mem 960GB",
                        "sbg:revision": 16,
                        "sbg:modifiedOn": 1499627281,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 17,
                        "sbg:modifiedOn": 1499690249,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 18,
                        "sbg:modifiedOn": 1500331793,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
                        "sbg:revision": 19,
                        "sbg:modifiedOn": 1501908398,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "x": 658.4286107335774,
                "sbg:project": "4dn-dcic/dev",
                "sbg:modifiedBy": "4dn-dcic",
                "arguments": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
                "sbg:cmdPreview": "run-cooler.sh",
                "sbg:revision": 19,
                "class": "CommandLineTool",
                "baseCommand": [
                    "run-cooler.sh"
                ],
                "inputs": [
                    {
                        "sbg:fileTypes": "PX2",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#pairs_index",
                        "sbg:stageInput": "copy",
                        "required": false
                    },
                    {
                        "sbg:fileTypes": "PAIRS.GZ",
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#pairs",
                        "sbg:stageInput": "copy"
                    },
                    {
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix",
                        "inputBinding": {
                            "position": 5,
                            "separate": true,
                            "sbg:cmdInclude": true
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
                            "position": 4,
                            "separate": true,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "2",
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#max_split",
                        "inputBinding": {
                            "position": 6,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:stageInput": null
                    },
                    {
                        "sbg:fileTypes": "SIZES",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#chrsizes",
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#binsize",
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:stageInput": null
                    }
                ],
                "sbg:createdOn": 1488495202,
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "cwlVersion": "sbg:draft-2",
                "temporaryFailCodes": []
            },
            "sbg:y": 238.94198231399068,
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
                    "default": "out",
                    "id": "#cooler.outprefix"
                },
                {
                    "id": "#cooler.ncores",
                    "source": [
                        "#ncores"
                    ]
                },
                {
                    "default": 2,
                    "id": "#cooler.max_split"
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
            "id": "#cooler",
            "sbg:x": 658.4286107335774
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:validationErrors": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1479144431,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1479144466,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedOn": 1479146390,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedOn": 1479149385,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedOn": 1479149442,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 5,
            "sbg:modifiedOn": 1479150047,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 6,
            "sbg:modifiedOn": 1479241950,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 7,
            "sbg:modifiedOn": 1488530005,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 8,
            "sbg:modifiedOn": 1488530109,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 9,
            "sbg:modifiedOn": 1488530281,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 10,
            "sbg:modifiedOn": 1488530836,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 11,
            "sbg:modifiedOn": 1488530872,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 12,
            "sbg:modifiedOn": 1488531567,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 13,
            "sbg:modifiedOn": 1496181927,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 14,
            "sbg:modifiedOn": 1496181955,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 15,
            "sbg:modifiedOn": 1496182121,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 16,
            "sbg:modifiedOn": 1496188521,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 17,
            "sbg:modifiedOn": 1496188582,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 18,
            "sbg:modifiedOn": 1496188729,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 19,
            "sbg:modifiedOn": 1496190149,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 20,
            "sbg:modifiedOn": 1499355043,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 21,
            "sbg:modifiedOn": 1499356869,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 22,
            "sbg:modifiedOn": 1499363602,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 23,
            "sbg:modifiedOn": 1499370019,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 24,
            "sbg:modifiedOn": 1499460260,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 25,
            "sbg:modifiedOn": 1499529552,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 26,
            "sbg:modifiedOn": 1499625173,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 27,
            "sbg:modifiedOn": 1499627303,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 28,
            "sbg:modifiedOn": 1500331892,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 29,
            "sbg:modifiedOn": 1501513539,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 30,
            "sbg:modifiedOn": 1501514350,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 31,
            "sbg:modifiedOn": 1501514405,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 32,
            "sbg:modifiedOn": 1501689712,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 33,
            "sbg:modifiedOn": 1501689823,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "15G mem for pairs2hic",
            "sbg:revision": 34,
            "sbg:modifiedOn": 1501707297,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "r3.8xlarge for cooler",
            "sbg:revision": 35,
            "sbg:modifiedOn": 1501765060,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 36,
            "sbg:modifiedOn": 1501780788,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "workflow pairs2hic maxmem set up 56g",
            "sbg:revision": 37,
            "sbg:modifiedOn": 1501780943,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "cooler 16G mem max_split parameter included as a default 2 (not modifiable)",
            "sbg:revision": 38,
            "sbg:modifiedOn": 1501908603,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 39,
            "sbg:modifiedOn": 1502485439,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partb/39.png",
    "sbg:revision": 39,
    "sbg:canvas_x": 108,
    "class": "Workflow",
    "inputs": [
        {
            "sbg:fileTypes": "SIZES",
            "sbg:y": 365.8544025321941,
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes",
            "sbg:x": -44.285710918659674,
            "label": "chrsizes"
        },
        {
            "sbg:fileTypes": "PAIRS.GZ",
            "sbg:y": 138.56737856934552,
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "id": "#input_pairs",
            "sbg:x": -32.85716799814047,
            "label": "input_pairs"
        },
        {
            "sbg:toolDefaultValue": "5000",
            "type": [
                "null",
                "int"
            ],
            "id": "#min_res",
            "sbg:stageInput": null
        },
        {
            "type": [
                "null",
                "int"
            ],
            "required": false,
            "id": "#binsize",
            "sbg:stageInput": null,
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
            "type": [
                "null",
                "string"
            ],
            "id": "#maxmem",
            "required": false,
            "sbg:suggestedValue": "14g"
        }
    ],
    "sbg:createdOn": 1479144431,
    "sbg:canvas_zoom": 0.6999999999999997,
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "hints": [],
    "cwlVersion": "sbg:draft-2"
}