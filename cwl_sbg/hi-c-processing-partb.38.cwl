{
    "label": "Hi-C_processing_partB",
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:canvas_y": 43,
    "sbg:latestRevision": 38,
    "sbg:createdBy": "duplexa",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:sbgMaintained": false,
    "requirements": [],
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partb/38",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partb/38.png",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partb/38/raw/",
    "sbg:projectName": "Dev",
    "sbg:revisionNotes": "cooler 16G mem max_split parameter included as a default 2 (not modifiable)",
    "sbg:modifiedOn": 1501908603,
    "class": "Workflow",
    "hints": [],
    "outputs": [
        {
            "required": false,
            "sbg:includeInPorts": true,
            "sbg:y": -0.7171201026670033,
            "source": [
                "#merge_pairs.output_pairs_index"
            ],
            "label": "output_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 578.2857636043005,
            "sbg:fileTypes": "PX2",
            "id": "#output_pairs_index"
        },
        {
            "required": false,
            "sbg:includeInPorts": true,
            "sbg:y": 139.7114601133321,
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "label": "output_pairs",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 814.5714787074501,
            "sbg:fileTypes": "PAIRS.GZ",
            "id": "#output_pairs"
        },
        {
            "required": false,
            "sbg:includeInPorts": true,
            "sbg:y": 294.56866071643174,
            "source": [
                "#cooler.out_cool"
            ],
            "label": "out_cool",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 787.2858953184084,
            "id": "#out_cool"
        },
        {
            "required": false,
            "sbg:includeInPorts": true,
            "sbg:y": 524.2816587756744,
            "source": [
                "#pairs2hic.output_hic"
            ],
            "label": "output_hic",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 910.0000171272096,
            "id": "#output_hic"
        }
    ],
    "sbg:createdOn": 1479144431,
    "steps": [
        {
            "sbg:x": 385.57145629610346,
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
            "sbg:y": 192.94197236852995,
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs_index"
                },
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ],
            "run": {
                "label": "merge-pairs",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/merge-pairs/25",
                "cwlVersion": "sbg:draft-2",
                "y": 192.94197236852995,
                "sbg:job": {
                    "inputs": {
                        "outprefix": "outprefix-string-value",
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
                        ]
                    },
                    "allocatedResources": {
                        "mem": 4000,
                        "cpu": 1
                    }
                },
                "sbg:latestRevision": 25,
                "sbg:createdBy": "duplexa",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:sbgMaintained": false,
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
                "x": 385.57145629610346,
                "sbg:projectName": "Dev",
                "arguments": [],
                "baseCommand": [
                    "run-merge-pairs.sh"
                ],
                "id": "4dn-dcic/dev/merge-pairs/25",
                "stdout": "",
                "sbg:id": "4dn-dcic/dev/merge-pairs/25",
                "sbg:image_url": null,
                "sbg:modifiedOn": 1500331813,
                "temporaryFailCodes": [],
                "sbg:links": [],
                "class": "CommandLineTool",
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
                "sbg:project": "4dn-dcic/dev",
                "sbg:createdOn": 1479143121,
                "stdin": "",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true
                        },
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out"
                    },
                    {
                        "required": false,
                        "sbg:stageInput": "copy",
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "File"
                            }
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "itemSeparator": " ",
                            "separate": true
                        },
                        "sbg:fileTypes": "PAIRS.GZ",
                        "id": "#input_pairs"
                    }
                ],
                "sbg:revision": 25,
                "description": "",
                "sbg:validationErrors": [],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479143121
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479143406
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479143659
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479143834
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479143945
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479144065
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479144200
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479144240
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 8,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479144301
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 9,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479149340
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 10,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479149428
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 11,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479149963
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 12,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479155094
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 13,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1479241188
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 14,
                        "sbg:revisionNotes": "now using 4dn-hic docker image",
                        "sbg:modifiedOn": 1488524515
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 15,
                        "sbg:revisionNotes": "pairs and index are copied not links, so that they go together.",
                        "sbg:modifiedOn": 1488524641
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 16,
                        "sbg:revisionNotes": "removed blank secondary file requirement",
                        "sbg:modifiedOn": 1488524868
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 17,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488525221
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 18,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488529667
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 19,
                        "sbg:revisionNotes": "removed outdir in the output glob",
                        "sbg:modifiedOn": 1488531529
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 20,
                        "sbg:revisionNotes": "fixed output file name",
                        "sbg:modifiedOn": 1488567441
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 21,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1490716980
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 22,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496166568
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 23,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496188642
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 24,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499356728
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 25,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1500331813
                    }
                ],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "PX2",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.outprefix + '.pairs.gz.px2'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#output_pairs_index"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "PAIRS.GZ",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.outprefix + '.pairs.gz'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#output_pairs"
                    }
                ],
                "successCodes": []
            },
            "id": "#merge_pairs"
        },
        {
            "sbg:x": 698.5716418246949,
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
                    "default": "56g",
                    "id": "#pairs2hic.maxmem"
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
            "sbg:y": 440.9375780899948,
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
            "run": {
                "label": "pairs2hic",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/pairs2hic/15",
                "cwlVersion": "sbg:draft-2",
                "y": 440.9375780899948,
                "sbg:job": {
                    "inputs": {
                        "min_res": 4,
                        "chromsizes_file": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/chromsizes_file.ext",
                            "secondaryFiles": []
                        },
                        "input_pairs": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_pairs.ext",
                            "secondaryFiles": []
                        },
                        "higlass": "higlass-string-value",
                        "maxmem": "maxmem-string-value",
                        "output_prefix": "output_prefix-string-value"
                    },
                    "allocatedResources": {
                        "mem": 58000,
                        "cpu": 1
                    }
                },
                "sbg:createdBy": "4dn-dcic",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:sbgMaintained": false,
                "requirements": [],
                "x": 698.5716418246949,
                "sbg:id": "4dn-dcic/dev/pairs2hic/15",
                "arguments": [],
                "baseCommand": [
                    "run-juicebox-pre.sh"
                ],
                "id": "4dn-dcic/dev/pairs2hic/15",
                "stdout": "",
                "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
                "sbg:image_url": null,
                "sbg:modifiedOn": 1501780759,
                "temporaryFailCodes": [],
                "class": "CommandLineTool",
                "sbg:cmdPreview": "run-juicebox-pre.sh",
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
                        "diskSize": null,
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v30"
                    }
                ],
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
                "sbg:createdOn": 1496168605,
                "stdin": "",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": true
                        },
                        "id": "#output_prefix",
                        "sbg:toolDefaultValue": "out"
                    },
                    {
                        "required": false,
                        "sbg:stageInput": null,
                        "sbg:toolDefaultValue": "5000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 4,
                            "separate": true
                        },
                        "id": "#min_res"
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 6,
                            "separate": true
                        },
                        "id": "#maxmem",
                        "sbg:toolDefaultValue": "14g"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true
                        },
                        "sbg:fileTypes": ".PAIRS.GZ",
                        "id": "#input_pairs"
                    },
                    {
                        "required": false,
                        "sbg:stageInput": null,
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 5,
                            "separate": true
                        },
                        "id": "#higlass"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": true
                        },
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "id": "#chromsizes_file"
                    }
                ],
                "sbg:revision": 15,
                "sbg:latestRevision": 15,
                "sbg:project": "4dn-dcic/dev",
                "successCodes": [],
                "sbg:projectName": "Dev",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496168605
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496168842
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496168924
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496172319
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496176108
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496178546
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1500331857
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 7,
                        "sbg:revisionNotes": "added java maxmem as parameter",
                        "sbg:modifiedOn": 1501513062
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 8,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1501595773
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 9,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1501605274
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 10,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1501637382
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 11,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1501689608
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 12,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1501689663
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 13,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1501689805
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 14,
                        "sbg:revisionNotes": "15GB mem",
                        "sbg:modifiedOn": 1501707253
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 15,
                        "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
                        "sbg:modifiedOn": 1501780759
                    }
                ],
                "description": ""
            },
            "id": "#pairs2hic"
        },
        {
            "sbg:x": 658.4286107335774,
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
                }
            ],
            "sbg:y": 238.94198231399068,
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
            "run": {
                "label": "cooler",
                "sbg:job": {
                    "inputs": {
                        "ncores": 5,
                        "max_split": 0,
                        "pairs_index": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/pairs_index.ext",
                            "secondaryFiles": []
                        },
                        "outprefix": "outprefix-string-value",
                        "chrsizes": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/chrsize.ext",
                            "secondaryFiles": []
                        },
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
                        "binsize": 4
                    },
                    "allocatedResources": {
                        "mem": 16000,
                        "cpu": 2
                    }
                },
                "cwlVersion": "sbg:draft-2",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:latestRevision": 19,
                "sbg:createdBy": "duplexa",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:sbgMaintained": false,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/19/raw/",
                "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
                "sbg:projectName": "Dev",
                "arguments": [],
                "baseCommand": [
                    "run-cooler.sh"
                ],
                "requirements": [],
                "stdout": "",
                "sbg:id": "4dn-dcic/dev/cooler/19",
                "sbg:image_url": null,
                "sbg:modifiedOn": 1501908398,
                "temporaryFailCodes": [],
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
                "class": "CommandLineTool",
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
                "sbg:project": "4dn-dcic/dev",
                "sbg:createdOn": 1488495202,
                "stdin": "",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:stageInput": "copy",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true
                        },
                        "sbg:fileTypes": "PAIRS.GZ",
                        "id": "#pairs"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:stageInput": "copy",
                        "sbg:fileTypes": "PX2",
                        "id": "#pairs_index"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": true
                        },
                        "sbg:fileTypes": "SIZES",
                        "id": "#chrsizes"
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": true
                        },
                        "id": "#binsize"
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 5,
                            "separate": true
                        },
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out"
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 4,
                            "separate": true
                        },
                        "id": "#ncores",
                        "sbg:toolDefaultValue": "8"
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 6,
                            "separate": true
                        },
                        "id": "#max_split",
                        "sbg:toolDefaultValue": "2"
                    }
                ],
                "sbg:revision": 19,
                "description": "",
                "sbg:validationErrors": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488495202
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488495392
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488495453
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488499764
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488511643
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488511809
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6,
                        "sbg:revisionNotes": "now using 4dn-hic docker image",
                        "sbg:modifiedOn": 1488525294
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1488529899
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 8,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1490716960
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 9,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496167357
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 10,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496168048
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 11,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496175693
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 12,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1496175978
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 13,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499354982
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 14,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499625090
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 15,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499625139
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 16,
                        "sbg:revisionNotes": "Mem 960GB",
                        "sbg:modifiedOn": 1499627281
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 17,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1499690249
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 18,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1500331793
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 19,
                        "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
                        "sbg:modifiedOn": 1501908398
                    }
                ],
                "successCodes": []
            },
            "id": "#cooler"
        }
    ],
    "sbg:canvas_x": 108,
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "inputs": [
        {
            "sbg:x": -44.285710918659674,
            "label": "chrsizes",
            "sbg:y": 365.8544025321941,
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": ".CHROM.SIZES",
            "id": "#chrsizes"
        },
        {
            "sbg:x": -32.85716799814047,
            "label": "input_pairs",
            "sbg:y": 138.56737856934552,
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "sbg:fileTypes": "PAIRS.GZ",
            "id": "#input_pairs"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "id": "#min_res",
            "sbg:toolDefaultValue": "5000"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "required": false,
            "id": "#ncores",
            "sbg:toolDefaultValue": "8"
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:includeInPorts": false,
            "required": false,
            "id": "#binsize",
            "sbg:stageInput": null
        }
    ],
    "sbg:revision": 38,
    "description": "",
    "sbg:validationErrors": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479144431
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479144466
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479146390
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479149385
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479149442
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479150047
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1479241950
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 7,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488530005
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 8,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488530109
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 9,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488530281
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 10,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488530836
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 11,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488530872
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 12,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1488531567
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 13,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496181927
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 14,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496181955
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 15,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496182121
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 16,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496188521
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 17,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496188582
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 18,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496188729
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 19,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496190149
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 20,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499355043
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 21,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499356869
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 22,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499363602
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 23,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499370019
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 24,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499460260
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 25,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499529552
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 26,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499625173
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 27,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499627303
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 28,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500331892
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 29,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501513539
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 30,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501514350
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 31,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501514405
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 32,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501689712
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 33,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501689823
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 34,
            "sbg:revisionNotes": "15G mem for pairs2hic",
            "sbg:modifiedOn": 1501707297
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 35,
            "sbg:revisionNotes": "r3.8xlarge for cooler",
            "sbg:modifiedOn": 1501765060
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 36,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501780788
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 37,
            "sbg:revisionNotes": "workflow pairs2hic maxmem set up 56g",
            "sbg:modifiedOn": 1501780943
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 38,
            "sbg:revisionNotes": "cooler 16G mem max_split parameter included as a default 2 (not modifiable)",
            "sbg:modifiedOn": 1501908603
        }
    ],
    "sbg:canvas_zoom": 0.6999999999999997,
    "sbg:project": "4dn-dcic/dev"
}