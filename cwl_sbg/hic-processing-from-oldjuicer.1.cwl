{
    "sbg:revision": 1,
    "sbg:projectName": "Dev",
    "sbg:latestRevision": 1,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hic-processing-from-oldjuicer/1.png",
    "class": "Workflow",
    "sbg:createdBy": "4dn-dcic",
    "sbg:validationErrors": [],
    "sbg:modifiedOn": 1501758558,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hic-processing-from-oldjuicer/1/raw/",
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 94,
            "sbg:fileTypes": ".TXT",
            "id": "#input_merged_nodups",
            "label": "input_merged_nodups",
            "sbg:x": 87
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 289,
            "sbg:fileTypes": ".CHROM.SIZES",
            "id": "#chromsize",
            "label": "chromsize",
            "sbg:x": 56
        }
    ],
    "sbg:canvas_zoom": 1,
    "sbg:sbgMaintained": false,
    "sbg:id": "4dn-dcic/dev/hic-processing-from-oldjuicer/1",
    "description": "",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501758497
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501758558
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "label": "hic_processing_from_oldjuicer",
    "sbg:project": "4dn-dcic/dev",
    "requirements": [],
    "hints": [],
    "sbg:createdOn": 1501758497,
    "sbg:canvas_x": 0,
    "steps": [
        {
            "sbg:y": 160,
            "outputs": [
                {
                    "id": "#oldjuicer2pairs.out_pairs"
                },
                {
                    "id": "#oldjuicer2pairs.out_pairs_px"
                }
            ],
            "id": "#oldjuicer2pairs",
            "run": {
                "sbg:revision": 1,
                "sbg:projectName": "Dev",
                "sbg:latestRevision": 1,
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "successCodes": [],
                "baseCommand": [
                    "old_merged_nodup2pairs.pl"
                ],
                "sbg:createdBy": "4dn-dcic",
                "sbg:cmdPreview": "old_merged_nodup2pairs.pl",
                "arguments": [],
                "sbg:validationErrors": [],
                "sbg:modifiedOn": 1501735074,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/oldjuicer2pairs/1/raw/",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_merged_nodups",
                        "sbg:fileTypes": ".TXT",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": true
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#chromsize",
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 4,
                            "separate": true
                        }
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#nsplit",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true,
                            "prefix": "-s"
                        },
                        "sbg:toolDefaultValue": "100"
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 5,
                            "separate": true
                        },
                        "sbg:toolDefaultValue": "out"
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#max_remove_mapq",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": true,
                            "prefix": "-m"
                        }
                    }
                ],
                "stdout": "",
                "description": "",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": "Copy of 4dn-dcic/dev/juicer2pairs/8",
                        "sbg:modifiedOn": 1501734996
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1501735074
                    }
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 12000
                    },
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "max_remove_mapq": 2,
                        "nsplit": 8,
                        "input_merged_nodups": {
                            "class": "File",
                            "path": "/path/to/input_merged_nodups.ext",
                            "size": 0,
                            "secondaryFiles": []
                        },
                        "chromsize": {
                            "class": "File",
                            "path": "/path/to/chromsize.ext",
                            "size": 0,
                            "secondaryFiles": []
                        }
                    }
                },
                "sbg:modifiedBy": "4dn-dcic",
                "label": "oldjuicer2pairs",
                "sbg:project": "4dn-dcic/dev",
                "requirements": [],
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
                        "dockerPull": "duplexa/4dn-hic:v31",
                        "class": "DockerRequirement",
                        "dockerImageId": ""
                    }
                ],
                "sbg:createdOn": 1501734996,
                "sbg:sbgMaintained": false,
                "stdin": "",
                "cwlVersion": "sbg:draft-2",
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".PAIRS.GZ",
                        "id": "#out_pairs"
                    },
                    {
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz.px2"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".PX2",
                        "id": "#out_pairs_px"
                    }
                ],
                "sbg:id": "4dn-dcic/dev/oldjuicer2pairs/1",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "temporaryFailCodes": []
            },
            "sbg:x": 368,
            "inputs": [
                {
                    "id": "#oldjuicer2pairs.input_merged_nodups",
                    "source": [
                        "#input_merged_nodups"
                    ]
                },
                {
                    "id": "#oldjuicer2pairs.chromsize",
                    "source": [
                        "#chromsize"
                    ]
                },
                {
                    "id": "#oldjuicer2pairs.nsplit"
                },
                {
                    "id": "#oldjuicer2pairs.outprefix"
                },
                {
                    "id": "#oldjuicer2pairs.max_remove_mapq"
                }
            ]
        },
        {
            "sbg:y": 167,
            "outputs": [
                {
                    "id": "#hic_pairs_to_end.output_pairs"
                },
                {
                    "id": "#hic_pairs_to_end.output_mcool"
                },
                {
                    "id": "#hic_pairs_to_end.output_normvector"
                },
                {
                    "id": "#hic_pairs_to_end.output_hic"
                },
                {
                    "id": "#hic_pairs_to_end.output_pairs_index"
                }
            ],
            "id": "#hic_pairs_to_end",
            "run": {
                "sbg:revision": 2,
                "sbg:projectName": "Dev",
                "sbg:latestRevision": 2,
                "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hic-pairs-to-end/2.png",
                "class": "Workflow",
                "sbg:createdBy": "4dn-dcic",
                "sbg:validationErrors": [],
                "sbg:modifiedOn": 1501734950,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hic-pairs-to-end/2/raw/",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:y": 258.7500103712082,
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "id": "#chrsizes",
                        "label": "chrsizes",
                        "sbg:x": 116.25001728534694
                    },
                    {
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "sbg:y": 103.75000751018521,
                        "sbg:fileTypes": "PAIRS.GZ",
                        "id": "#input_pairs",
                        "label": "input_pairs",
                        "sbg:x": 96.25001728534694
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "required": false,
                        "sbg:toolDefaultValue": "8",
                        "id": "#ncores"
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#min_res",
                        "sbg:toolDefaultValue": "5000",
                        "sbg:stageInput": null
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "required": false,
                        "id": "#binsize",
                        "sbg:includeInPorts": false,
                        "sbg:stageInput": null
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#ncores_1",
                        "sbg:toolDefaultValue": "4",
                        "sbg:stageInput": null
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#nres",
                        "sbg:toolDefaultValue": "13",
                        "sbg:suggestedValue": null,
                        "sbg:stageInput": null
                    }
                ],
                "sbg:canvas_zoom": 0.7999999999999998,
                "sbg:sbgMaintained": false,
                "sbg:id": "4dn-dcic/dev/hic-pairs-to-end/2",
                "description": "",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1501734696
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1501734891
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1501734950
                    }
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "label": "hic_pairs_to_end",
                "sbg:project": "4dn-dcic/dev",
                "requirements": [],
                "hints": [],
                "sbg:createdOn": 1501734696,
                "sbg:canvas_x": -17,
                "steps": [
                    {
                        "sbg:y": 151,
                        "outputs": [
                            {
                                "id": "#Hi_C_processing_partB.output_pairs_index"
                            },
                            {
                                "id": "#Hi_C_processing_partB.output_pairs"
                            },
                            {
                                "id": "#Hi_C_processing_partB.output_hic"
                            },
                            {
                                "id": "#Hi_C_processing_partB.out_cool"
                            }
                        ],
                        "id": "#Hi_C_processing_partB",
                        "run": {
                            "sbg:revision": 34,
                            "sbg:projectName": "Dev",
                            "sbg:latestRevision": 34,
                            "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partb/34.png",
                            "class": "Workflow",
                            "sbg:createdBy": "duplexa",
                            "sbg:revisionNotes": "15G mem for pairs2hic",
                            "sbg:validationErrors": [],
                            "sbg:modifiedOn": 1501707297,
                            "id": "4dn-dcic/dev/hi-c-processing-partb/34",
                            "x": 332,
                            "inputs": [
                                {
                                    "type": [
                                        "null",
                                        "int"
                                    ],
                                    "required": false,
                                    "sbg:toolDefaultValue": "8",
                                    "id": "#ncores"
                                },
                                {
                                    "type": [
                                        "null",
                                        "int"
                                    ],
                                    "id": "#min_res",
                                    "sbg:toolDefaultValue": "5000",
                                    "sbg:stageInput": null
                                },
                                {
                                    "type": [
                                        "null",
                                        {
                                            "items": "File",
                                            "type": "array"
                                        }
                                    ],
                                    "sbg:y": 138.56737856934552,
                                    "sbg:fileTypes": "PAIRS.GZ",
                                    "required": false,
                                    "id": "#input_pairs",
                                    "label": "input_pairs",
                                    "sbg:x": -32.85716799814047
                                },
                                {
                                    "type": [
                                        "null",
                                        "File"
                                    ],
                                    "sbg:y": 365.8544025321941,
                                    "sbg:fileTypes": ".CHROM.SIZES",
                                    "required": false,
                                    "id": "#chrsizes",
                                    "label": "chrsizes",
                                    "sbg:x": -44.285710918659674
                                },
                                {
                                    "type": [
                                        "null",
                                        "int"
                                    ],
                                    "required": false,
                                    "id": "#binsize",
                                    "sbg:includeInPorts": false,
                                    "sbg:stageInput": null
                                }
                            ],
                            "sbg:canvas_zoom": 0.6999999999999997,
                            "sbg:sbgMaintained": false,
                            "sbg:id": "4dn-dcic/dev/hi-c-processing-partb/34",
                            "y": 151,
                            "description": "",
                            "sbg:contributors": [
                                "duplexa",
                                "4dn-dcic"
                            ],
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
                                }
                            ],
                            "sbg:modifiedBy": "4dn-dcic",
                            "label": "Hi-C_processing_partB",
                            "sbg:project": "4dn-dcic/dev",
                            "requirements": [],
                            "hints": [],
                            "sbg:createdOn": 1479144431,
                            "sbg:canvas_x": 108,
                            "steps": [
                                {
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
                                    "run": {
                                        "sbg:revision": 25,
                                        "sbg:projectName": "Dev",
                                        "sbg:cmdPreview": "run-merge-pairs.sh",
                                        "sbg:image_url": null,
                                        "class": "CommandLineTool",
                                        "sbg:latestRevision": 25,
                                        "successCodes": [],
                                        "baseCommand": [
                                            "run-merge-pairs.sh"
                                        ],
                                        "sbg:createdBy": "duplexa",
                                        "sbg:id": "4dn-dcic/dev/merge-pairs/25",
                                        "arguments": [],
                                        "sbg:validationErrors": [],
                                        "sbg:modifiedOn": 1500331813,
                                        "id": "4dn-dcic/dev/merge-pairs/25",
                                        "x": 385.57145629610346,
                                        "inputs": [
                                            {
                                                "type": [
                                                    "null",
                                                    "string"
                                                ],
                                                "id": "#outprefix",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 1,
                                                    "separate": true
                                                },
                                                "sbg:toolDefaultValue": "out"
                                            },
                                            {
                                                "type": [
                                                    "null",
                                                    {
                                                        "items": "File",
                                                        "type": "array"
                                                    }
                                                ],
                                                "required": false,
                                                "sbg:fileTypes": "PAIRS.GZ",
                                                "sbg:stageInput": "copy",
                                                "id": "#input_pairs",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 2,
                                                    "separate": true,
                                                    "itemSeparator": " "
                                                }
                                            }
                                        ],
                                        "stdout": "",
                                        "y": 192.94197236852995,
                                        "description": "",
                                        "sbg:contributors": [
                                            "duplexa",
                                            "4dn-dcic"
                                        ],
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
                                        "sbg:job": {
                                            "allocatedResources": {
                                                "cpu": 1,
                                                "mem": 4000
                                            },
                                            "inputs": {
                                                "outprefix": "outprefix-string-value",
                                                "input_pairs": [
                                                    {
                                                        "class": "File",
                                                        "path": "/path/to/input_pairs-1.ext",
                                                        "size": 0,
                                                        "secondaryFiles": []
                                                    },
                                                    {
                                                        "class": "File",
                                                        "path": "/path/to/input_pairs-2.ext",
                                                        "size": 0,
                                                        "secondaryFiles": []
                                                    }
                                                ]
                                            }
                                        },
                                        "sbg:modifiedBy": "4dn-dcic",
                                        "label": "merge-pairs",
                                        "sbg:project": "4dn-dcic/dev",
                                        "requirements": [
                                            {
                                                "class": "ExpressionEngineRequirement",
                                                "id": "#cwl-js-engine",
                                                "requirements": [
                                                    {
                                                        "dockerPull": "rabix/js-engine",
                                                        "class": "DockerRequirement"
                                                    }
                                                ]
                                            }
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
                                                "dockerPull": "duplexa/4dn-hic:v26",
                                                "class": "DockerRequirement",
                                                "dockerImageId": ""
                                            },
                                            {
                                                "class": "ExpressionEngineRequirement",
                                                "value": ""
                                            }
                                        ],
                                        "sbg:createdOn": 1479143121,
                                        "sbg:sbgMaintained": false,
                                        "stdin": "",
                                        "cwlVersion": "sbg:draft-2",
                                        "outputs": [
                                            {
                                                "outputBinding": {
                                                    "glob": {
                                                        "script": "$job.inputs.outprefix + '.pairs.gz.px2'",
                                                        "class": "Expression",
                                                        "engine": "#cwl-js-engine"
                                                    }
                                                },
                                                "type": [
                                                    "null",
                                                    "File"
                                                ],
                                                "sbg:fileTypes": "PX2",
                                                "id": "#output_pairs_index"
                                            },
                                            {
                                                "outputBinding": {
                                                    "glob": {
                                                        "script": "$job.inputs.outprefix + '.pairs.gz'",
                                                        "class": "Expression",
                                                        "engine": "#cwl-js-engine"
                                                    }
                                                },
                                                "type": [
                                                    "null",
                                                    "File"
                                                ],
                                                "sbg:fileTypes": "PAIRS.GZ",
                                                "id": "#output_pairs"
                                            }
                                        ],
                                        "temporaryFailCodes": [],
                                        "sbg:appVersion": [
                                            "sbg:draft-2"
                                        ],
                                        "sbg:links": []
                                    },
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
                                    ]
                                },
                                {
                                    "sbg:y": 238.94198231399068,
                                    "outputs": [
                                        {
                                            "id": "#cooler.out_cool"
                                        }
                                    ],
                                    "id": "#cooler",
                                    "run": {
                                        "sbg:revision": 18,
                                        "sbg:projectName": "Dev",
                                        "sbg:cmdPreview": "run-cooler.sh",
                                        "sbg:image_url": null,
                                        "class": "CommandLineTool",
                                        "sbg:latestRevision": 18,
                                        "successCodes": [],
                                        "baseCommand": [
                                            "run-cooler.sh"
                                        ],
                                        "sbg:createdBy": "duplexa",
                                        "arguments": [],
                                        "sbg:validationErrors": [],
                                        "sbg:modifiedOn": 1500331793,
                                        "id": "4dn-dcic/dev/cooler/18",
                                        "x": 658.4286107335774,
                                        "inputs": [
                                            {
                                                "type": [
                                                    "null",
                                                    "File"
                                                ],
                                                "id": "#pairs_index",
                                                "required": false,
                                                "sbg:fileTypes": "PX2",
                                                "sbg:stageInput": "copy"
                                            },
                                            {
                                                "type": [
                                                    "null",
                                                    "File"
                                                ],
                                                "required": false,
                                                "sbg:fileTypes": "PAIRS.GZ",
                                                "sbg:stageInput": "copy",
                                                "id": "#pairs",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 1,
                                                    "separate": true
                                                }
                                            },
                                            {
                                                "type": [
                                                    "null",
                                                    "string"
                                                ],
                                                "id": "#outprefix",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 5,
                                                    "separate": true
                                                },
                                                "sbg:toolDefaultValue": "out"
                                            },
                                            {
                                                "type": [
                                                    "null",
                                                    "int"
                                                ],
                                                "id": "#ncores",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 4,
                                                    "separate": true
                                                },
                                                "sbg:toolDefaultValue": "8"
                                            },
                                            {
                                                "type": [
                                                    "null",
                                                    "File"
                                                ],
                                                "required": false,
                                                "sbg:fileTypes": "SIZES",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 2,
                                                    "separate": true
                                                },
                                                "id": "#chrsizes"
                                            },
                                            {
                                                "type": [
                                                    "null",
                                                    "int"
                                                ],
                                                "id": "#binsize",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 3,
                                                    "separate": true
                                                },
                                                "sbg:stageInput": null
                                            }
                                        ],
                                        "stdout": "",
                                        "y": 238.94198231399068,
                                        "description": "",
                                        "sbg:contributors": [
                                            "duplexa",
                                            "4dn-dcic"
                                        ],
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
                                            }
                                        ],
                                        "sbg:job": {
                                            "allocatedResources": {
                                                "cpu": 32,
                                                "mem": 200000
                                            },
                                            "inputs": {
                                                "ncores": 5,
                                                "outprefix": "outprefix-string-value",
                                                "chrsizes": {
                                                    "class": "File",
                                                    "path": "/path/to/chrsize.ext",
                                                    "size": 0,
                                                    "secondaryFiles": []
                                                },
                                                "binsize": 4,
                                                "pairs": {
                                                    "class": "File",
                                                    "path": "/path/to/pairs.ext",
                                                    "size": 0,
                                                    "secondaryFiles": [
                                                        {
                                                            "path": "$job.inputs.pairs + '.px2'"
                                                        }
                                                    ]
                                                },
                                                "pairs_index": {
                                                    "class": "File",
                                                    "path": "/path/to/pairs_index.ext",
                                                    "size": 0,
                                                    "secondaryFiles": []
                                                }
                                            }
                                        },
                                        "sbg:modifiedBy": "4dn-dcic",
                                        "label": "cooler",
                                        "sbg:project": "4dn-dcic/dev",
                                        "requirements": [],
                                        "hints": [
                                            {
                                                "class": "sbg:CPURequirement",
                                                "value": 32
                                            },
                                            {
                                                "class": "sbg:MemRequirement",
                                                "value": 200000
                                            },
                                            {
                                                "dockerPull": "duplexa/4dn-hic:v26",
                                                "class": "DockerRequirement",
                                                "dockerImageId": ""
                                            }
                                        ],
                                        "sbg:createdOn": 1488495202,
                                        "sbg:sbgMaintained": false,
                                        "stdin": "",
                                        "cwlVersion": "sbg:draft-2",
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
                                        "sbg:id": "4dn-dcic/dev/cooler/18",
                                        "sbg:appVersion": [
                                            "sbg:draft-2"
                                        ],
                                        "temporaryFailCodes": []
                                    },
                                    "sbg:x": 658.4286107335774,
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
                                    ]
                                },
                                {
                                    "sbg:y": 440.9375780899948,
                                    "outputs": [
                                        {
                                            "id": "#pairs2hic.output_hic"
                                        }
                                    ],
                                    "id": "#pairs2hic",
                                    "run": {
                                        "sbg:revision": 14,
                                        "sbg:projectName": "Dev",
                                        "sbg:cmdPreview": "run-juicebox-pre.sh",
                                        "sbg:image_url": null,
                                        "class": "CommandLineTool",
                                        "sbg:latestRevision": 14,
                                        "successCodes": [],
                                        "baseCommand": [
                                            "run-juicebox-pre.sh"
                                        ],
                                        "sbg:createdBy": "4dn-dcic",
                                        "sbg:revisionNotes": "15GB mem",
                                        "arguments": [],
                                        "sbg:validationErrors": [],
                                        "sbg:modifiedOn": 1501707253,
                                        "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/14/raw/",
                                        "inputs": [
                                            {
                                                "type": [
                                                    "null",
                                                    "File"
                                                ],
                                                "id": "#input_pairs",
                                                "sbg:fileTypes": ".PAIRS.GZ",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 1,
                                                    "separate": true
                                                }
                                            },
                                            {
                                                "type": [
                                                    "null",
                                                    "File"
                                                ],
                                                "id": "#chromsizes_file",
                                                "sbg:fileTypes": ".CHROM.SIZES",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 2,
                                                    "separate": true
                                                }
                                            },
                                            {
                                                "type": [
                                                    "null",
                                                    "string"
                                                ],
                                                "id": "#output_prefix",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 3,
                                                    "separate": true
                                                },
                                                "sbg:toolDefaultValue": "out"
                                            },
                                            {
                                                "type": [
                                                    "null",
                                                    "int"
                                                ],
                                                "id": "#min_res",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 4,
                                                    "separate": true
                                                },
                                                "sbg:toolDefaultValue": "5000",
                                                "sbg:stageInput": null
                                            },
                                            {
                                                "type": [
                                                    "null",
                                                    "string"
                                                ],
                                                "id": "#higlass",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 5,
                                                    "separate": true
                                                },
                                                "sbg:toolDefaultValue": "1",
                                                "sbg:stageInput": null
                                            },
                                            {
                                                "type": [
                                                    "null",
                                                    "string"
                                                ],
                                                "id": "#maxmem",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 6,
                                                    "separate": true
                                                },
                                                "sbg:toolDefaultValue": "14g"
                                            }
                                        ],
                                        "stdout": "",
                                        "description": "",
                                        "sbg:contributors": [
                                            "4dn-dcic"
                                        ],
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
                                            }
                                        ],
                                        "sbg:job": {
                                            "allocatedResources": {
                                                "cpu": 1,
                                                "mem": 15000
                                            },
                                            "inputs": {
                                                "maxmem": "maxmem-string-value",
                                                "higlass": "higlass-string-value",
                                                "min_res": 4,
                                                "chromsizes_file": {
                                                    "class": "File",
                                                    "path": "/path/to/chromsizes_file.ext",
                                                    "size": 0,
                                                    "secondaryFiles": []
                                                },
                                                "output_prefix": "output_prefix-string-value",
                                                "input_pairs": {
                                                    "class": "File",
                                                    "path": "/path/to/input_pairs.ext",
                                                    "size": 0,
                                                    "secondaryFiles": []
                                                }
                                            }
                                        },
                                        "sbg:modifiedBy": "4dn-dcic",
                                        "label": "pairs2hic",
                                        "sbg:project": "4dn-dcic/dev",
                                        "requirements": [],
                                        "hints": [
                                            {
                                                "class": "sbg:CPURequirement",
                                                "value": 1,
                                                "diskSize": null
                                            },
                                            {
                                                "class": "sbg:MemRequirement",
                                                "value": 15000,
                                                "diskSize": null
                                            },
                                            {
                                                "class": "DockerRequirement",
                                                "dockerPull": "duplexa/4dn-hic:v30",
                                                "dockerImageId": "",
                                                "diskSize": null
                                            },
                                            {
                                                "class": "sbg:AWSInstanceType",
                                                "value": "m2.2xlarge",
                                                "diskSize": null
                                            }
                                        ],
                                        "sbg:createdOn": 1496168605,
                                        "sbg:sbgMaintained": false,
                                        "stdin": "",
                                        "cwlVersion": "sbg:draft-2",
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
                                        "sbg:id": "4dn-dcic/dev/pairs2hic/14",
                                        "sbg:appVersion": [
                                            "sbg:draft-2"
                                        ],
                                        "temporaryFailCodes": []
                                    },
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
                                            "default": "14g"
                                        }
                                    ]
                                }
                            ],
                            "cwlVersion": "sbg:draft-2",
                            "sbg:canvas_y": 43,
                            "outputs": [
                                {
                                    "type": [
                                        "null",
                                        "File"
                                    ],
                                    "sbg:y": -0.7171201026670033,
                                    "sbg:fileTypes": "PX2",
                                    "source": [
                                        "#merge_pairs.output_pairs_index"
                                    ],
                                    "required": false,
                                    "id": "#output_pairs_index",
                                    "label": "output_pairs_index",
                                    "sbg:x": 578.2857636043005,
                                    "sbg:includeInPorts": true
                                },
                                {
                                    "type": [
                                        "null",
                                        "File"
                                    ],
                                    "sbg:y": 139.7114601133321,
                                    "sbg:fileTypes": "PAIRS.GZ",
                                    "source": [
                                        "#merge_pairs.output_pairs"
                                    ],
                                    "required": false,
                                    "id": "#output_pairs",
                                    "label": "output_pairs",
                                    "sbg:x": 814.5714787074501,
                                    "sbg:includeInPorts": true
                                },
                                {
                                    "type": [
                                        "null",
                                        "File"
                                    ],
                                    "sbg:y": 524.2816587756744,
                                    "source": [
                                        "#pairs2hic.output_hic"
                                    ],
                                    "required": false,
                                    "id": "#output_hic",
                                    "label": "output_hic",
                                    "sbg:x": 910.0000171272096,
                                    "sbg:includeInPorts": true
                                },
                                {
                                    "type": [
                                        "null",
                                        "File"
                                    ],
                                    "sbg:y": 294.56866071643174,
                                    "source": [
                                        "#cooler.out_cool"
                                    ],
                                    "required": false,
                                    "id": "#out_cool",
                                    "label": "out_cool",
                                    "sbg:x": 787.2858953184084,
                                    "sbg:includeInPorts": true
                                }
                            ],
                            "sbg:appVersion": [
                                "sbg:draft-2"
                            ]
                        },
                        "sbg:x": 332,
                        "inputs": [
                            {
                                "id": "#Hi_C_processing_partB.ncores",
                                "source": [
                                    "#ncores"
                                ]
                            },
                            {
                                "id": "#Hi_C_processing_partB.min_res",
                                "source": [
                                    "#min_res"
                                ]
                            },
                            {
                                "id": "#Hi_C_processing_partB.input_pairs",
                                "source": [
                                    "#input_pairs"
                                ]
                            },
                            {
                                "id": "#Hi_C_processing_partB.chrsizes",
                                "source": [
                                    "#chrsizes"
                                ]
                            },
                            {
                                "id": "#Hi_C_processing_partB.binsize",
                                "source": [
                                    "#binsize"
                                ]
                            }
                        ]
                    },
                    {
                        "sbg:y": 283.9999875426293,
                        "outputs": [
                            {
                                "id": "#Hi_C_processing_partC.output_mcool"
                            }
                        ],
                        "id": "#Hi_C_processing_partC",
                        "run": {
                            "sbg:revision": 3,
                            "sbg:projectName": "Dev",
                            "sbg:latestRevision": 3,
                            "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partc/3.png",
                            "class": "Workflow",
                            "sbg:createdBy": "4dn-dcic",
                            "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)",
                            "sbg:validationErrors": [],
                            "sbg:modifiedOn": 1499683283,
                            "id": "4dn-dcic/dev/hi-c-processing-partc/3",
                            "x": 473.2499685883523,
                            "inputs": [
                                {
                                    "type": [
                                        "null",
                                        "int"
                                    ],
                                    "id": "#ncores",
                                    "sbg:toolDefaultValue": "4",
                                    "sbg:stageInput": null
                                },
                                {
                                    "type": [
                                        "null",
                                        "File"
                                    ],
                                    "sbg:y": 182.99716186523438,
                                    "sbg:fileTypes": ".COOL",
                                    "required": false,
                                    "id": "#input_cool",
                                    "label": "input_cool",
                                    "sbg:x": 87
                                }
                            ],
                            "sbg:canvas_zoom": 1,
                            "sbg:sbgMaintained": false,
                            "sbg:id": "4dn-dcic/dev/hi-c-processing-partc/3",
                            "y": 283.9999875426293,
                            "description": "",
                            "sbg:contributors": [
                                "4dn-dcic"
                            ],
                            "sbg:revisionsInfo": [
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 0,
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedOn": 1496182175
                                },
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 1,
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedOn": 1496182242
                                },
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 2,
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedOn": 1496190458
                                },
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 3,
                                    "sbg:revisionNotes": "r3.8xlarge (244GB mem, 32 cores)",
                                    "sbg:modifiedOn": 1499683283
                                }
                            ],
                            "sbg:modifiedBy": "4dn-dcic",
                            "label": "Hi-C_processing_partC",
                            "sbg:project": "4dn-dcic/dev",
                            "requirements": [],
                            "hints": [
                                {
                                    "class": "sbg:AWSInstanceType",
                                    "value": "r3.8xlarge;ebs-gp2;2048"
                                }
                            ],
                            "sbg:createdOn": 1496182175,
                            "sbg:canvas_x": 0,
                            "steps": [
                                {
                                    "sbg:y": 205.65625,
                                    "outputs": [
                                        {
                                            "id": "#cool2mcool.output_mcool"
                                        }
                                    ],
                                    "id": "#cool2mcool",
                                    "run": {
                                        "sbg:revision": 2,
                                        "sbg:projectName": "Dev",
                                        "sbg:latestRevision": 2,
                                        "sbg:image_url": null,
                                        "class": "CommandLineTool",
                                        "successCodes": [],
                                        "baseCommand": [
                                            "run-cool2multirescool.sh"
                                        ],
                                        "sbg:createdBy": "4dn-dcic",
                                        "sbg:cmdPreview": "run-cool2multirescool.sh",
                                        "arguments": [],
                                        "sbg:validationErrors": [],
                                        "sbg:modifiedOn": 1496181675,
                                        "id": "4dn-dcic/dev/cool2mcool/2",
                                        "x": 542,
                                        "inputs": [
                                            {
                                                "type": [
                                                    "null",
                                                    "string"
                                                ],
                                                "id": "#outprefix",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 3,
                                                    "separate": true
                                                },
                                                "sbg:toolDefaultValue": "out"
                                            },
                                            {
                                                "type": [
                                                    "null",
                                                    "int"
                                                ],
                                                "id": "#ncores",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 2,
                                                    "separate": true
                                                },
                                                "sbg:toolDefaultValue": "4",
                                                "sbg:stageInput": null
                                            },
                                            {
                                                "type": [
                                                    "null",
                                                    "File"
                                                ],
                                                "required": false,
                                                "sbg:fileTypes": ".COOL",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 1,
                                                    "separate": true
                                                },
                                                "id": "#input_cool"
                                            }
                                        ],
                                        "stdout": "",
                                        "y": 205.65625,
                                        "description": "",
                                        "sbg:contributors": [
                                            "4dn-dcic"
                                        ],
                                        "sbg:revisionsInfo": [
                                            {
                                                "sbg:modifiedBy": "4dn-dcic",
                                                "sbg:revision": 0,
                                                "sbg:revisionNotes": null,
                                                "sbg:modifiedOn": 1496166920
                                            },
                                            {
                                                "sbg:modifiedBy": "4dn-dcic",
                                                "sbg:revision": 1,
                                                "sbg:revisionNotes": null,
                                                "sbg:modifiedOn": 1496167248
                                            },
                                            {
                                                "sbg:modifiedBy": "4dn-dcic",
                                                "sbg:revision": 2,
                                                "sbg:revisionNotes": null,
                                                "sbg:modifiedOn": 1496181675
                                            }
                                        ],
                                        "sbg:job": {
                                            "allocatedResources": {
                                                "cpu": 1,
                                                "mem": 1000
                                            },
                                            "inputs": {
                                                "outprefix": "outprefix-string-value",
                                                "ncores": 9,
                                                "input_cool": {
                                                    "class": "File",
                                                    "path": "/path/to/input_cool.ext",
                                                    "size": 0,
                                                    "secondaryFiles": []
                                                }
                                            }
                                        },
                                        "sbg:modifiedBy": "4dn-dcic",
                                        "label": "cool2mcool",
                                        "sbg:project": "4dn-dcic/dev",
                                        "requirements": [],
                                        "hints": [
                                            {
                                                "class": "sbg:CPURequirement",
                                                "value": 1
                                            },
                                            {
                                                "class": "sbg:MemRequirement",
                                                "value": 1000
                                            },
                                            {
                                                "dockerPull": "duplexa/4dn-hic:v17",
                                                "class": "DockerRequirement",
                                                "dockerImageId": ""
                                            }
                                        ],
                                        "sbg:createdOn": 1496166920,
                                        "sbg:sbgMaintained": false,
                                        "stdin": "",
                                        "cwlVersion": "sbg:draft-2",
                                        "outputs": [
                                            {
                                                "outputBinding": {
                                                    "glob": "*.multires.cool"
                                                },
                                                "type": [
                                                    "null",
                                                    "File"
                                                ],
                                                "sbg:fileTypes": ".COOL",
                                                "id": "#output_mcool"
                                            }
                                        ],
                                        "sbg:id": "4dn-dcic/dev/cool2mcool/2",
                                        "sbg:appVersion": [
                                            "sbg:draft-2"
                                        ],
                                        "temporaryFailCodes": []
                                    },
                                    "sbg:x": 542,
                                    "inputs": [
                                        {
                                            "id": "#cool2mcool.outprefix",
                                            "default": "out"
                                        },
                                        {
                                            "id": "#cool2mcool.ncores",
                                            "source": [
                                                "#ncores"
                                            ]
                                        },
                                        {
                                            "id": "#cool2mcool.input_cool",
                                            "source": [
                                                "#coolerbalance.out_cool"
                                            ]
                                        }
                                    ]
                                },
                                {
                                    "sbg:y": 197.65625,
                                    "outputs": [
                                        {
                                            "id": "#coolerbalance.out_cool"
                                        }
                                    ],
                                    "id": "#coolerbalance",
                                    "run": {
                                        "sbg:revision": 3,
                                        "sbg:projectName": "Dev",
                                        "sbg:latestRevision": 3,
                                        "sbg:image_url": null,
                                        "class": "CommandLineTool",
                                        "successCodes": [],
                                        "baseCommand": [
                                            "run-cooler-balance.sh"
                                        ],
                                        "sbg:createdBy": "4dn-dcic",
                                        "sbg:cmdPreview": "run-cooler-balance.sh",
                                        "arguments": [],
                                        "sbg:validationErrors": [],
                                        "sbg:modifiedOn": 1496190427,
                                        "id": "4dn-dcic/dev/coolerbalance/3",
                                        "x": 270,
                                        "inputs": [
                                            {
                                                "type": [
                                                    "null",
                                                    "string"
                                                ],
                                                "id": "#outprefix",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 3,
                                                    "separate": true
                                                },
                                                "sbg:toolDefaultValue": "out"
                                            },
                                            {
                                                "type": [
                                                    "null",
                                                    "int"
                                                ],
                                                "id": "#max_iter",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 2,
                                                    "separate": true
                                                },
                                                "sbg:toolDefaultValue": "5000",
                                                "sbg:stageInput": null
                                            },
                                            {
                                                "type": [
                                                    "null",
                                                    "File"
                                                ],
                                                "required": false,
                                                "sbg:fileTypes": ".COOL",
                                                "inputBinding": {
                                                    "sbg:cmdInclude": true,
                                                    "position": 1,
                                                    "separate": true
                                                },
                                                "id": "#input_cool"
                                            }
                                        ],
                                        "stdout": "",
                                        "y": 197.65625,
                                        "description": "",
                                        "sbg:contributors": [
                                            "4dn-dcic"
                                        ],
                                        "sbg:revisionsInfo": [
                                            {
                                                "sbg:modifiedBy": "4dn-dcic",
                                                "sbg:revision": 0,
                                                "sbg:revisionNotes": null,
                                                "sbg:modifiedOn": 1496180027
                                            },
                                            {
                                                "sbg:modifiedBy": "4dn-dcic",
                                                "sbg:revision": 1,
                                                "sbg:revisionNotes": null,
                                                "sbg:modifiedOn": 1496180123
                                            },
                                            {
                                                "sbg:modifiedBy": "4dn-dcic",
                                                "sbg:revision": 2,
                                                "sbg:revisionNotes": null,
                                                "sbg:modifiedOn": 1496180208
                                            },
                                            {
                                                "sbg:modifiedBy": "4dn-dcic",
                                                "sbg:revision": 3,
                                                "sbg:revisionNotes": null,
                                                "sbg:modifiedOn": 1496190427
                                            }
                                        ],
                                        "sbg:job": {
                                            "allocatedResources": {
                                                "cpu": 8,
                                                "mem": 8000
                                            },
                                            "inputs": {
                                                "outprefix": "outprefix-string-value",
                                                "max_iter": 4,
                                                "input_cool": {
                                                    "class": "File",
                                                    "path": "/path/to/input_cool.ext",
                                                    "size": 0,
                                                    "secondaryFiles": []
                                                }
                                            }
                                        },
                                        "sbg:modifiedBy": "4dn-dcic",
                                        "label": "coolerbalance",
                                        "sbg:project": "4dn-dcic/dev",
                                        "requirements": [
                                            {
                                                "class": "ExpressionEngineRequirement",
                                                "id": "#cwl-js-engine",
                                                "requirements": [
                                                    {
                                                        "dockerPull": "rabix/js-engine",
                                                        "class": "DockerRequirement"
                                                    }
                                                ]
                                            }
                                        ],
                                        "hints": [
                                            {
                                                "class": "sbg:MemRequirement",
                                                "value": 8000
                                            },
                                            {
                                                "dockerPull": "duplexa/4dn-hic:v17",
                                                "class": "DockerRequirement",
                                                "dockerImageId": ""
                                            },
                                            {
                                                "class": "sbg:CPURequirement",
                                                "value": 8
                                            }
                                        ],
                                        "sbg:createdOn": 1496180027,
                                        "sbg:sbgMaintained": false,
                                        "stdin": "",
                                        "cwlVersion": "sbg:draft-2",
                                        "outputs": [
                                            {
                                                "outputBinding": {
                                                    "glob": {
                                                        "script": "$job.inputs.outprefix + '.cool'",
                                                        "class": "Expression",
                                                        "engine": "#cwl-js-engine"
                                                    }
                                                },
                                                "type": [
                                                    "null",
                                                    "File"
                                                ],
                                                "id": "#out_cool"
                                            }
                                        ],
                                        "sbg:id": "4dn-dcic/dev/coolerbalance/3",
                                        "sbg:appVersion": [
                                            "sbg:draft-2"
                                        ],
                                        "temporaryFailCodes": []
                                    },
                                    "sbg:x": 270,
                                    "inputs": [
                                        {
                                            "id": "#coolerbalance.outprefix",
                                            "default": "out"
                                        },
                                        {
                                            "id": "#coolerbalance.max_iter",
                                            "default": 5000
                                        },
                                        {
                                            "id": "#coolerbalance.input_cool",
                                            "source": [
                                                "#input_cool"
                                            ]
                                        }
                                    ]
                                }
                            ],
                            "cwlVersion": "sbg:draft-2",
                            "sbg:canvas_y": 0,
                            "outputs": [
                                {
                                    "type": [
                                        "null",
                                        "File"
                                    ],
                                    "sbg:y": 188.99716186523438,
                                    "sbg:fileTypes": ".COOL",
                                    "source": [
                                        "#cool2mcool.output_mcool"
                                    ],
                                    "required": false,
                                    "id": "#output_mcool",
                                    "label": "output_mcool",
                                    "sbg:x": 738,
                                    "sbg:includeInPorts": true
                                }
                            ],
                            "sbg:appVersion": [
                                "sbg:draft-2"
                            ]
                        },
                        "sbg:x": 473.2499685883523,
                        "inputs": [
                            {
                                "id": "#Hi_C_processing_partC.ncores",
                                "source": [
                                    "#ncores_1"
                                ]
                            },
                            {
                                "id": "#Hi_C_processing_partC.input_cool",
                                "source": [
                                    "#Hi_C_processing_partB.out_cool"
                                ]
                            }
                        ]
                    },
                    {
                        "sbg:y": 351,
                        "outputs": [
                            {
                                "id": "#extract_mcool_normvector_for_juicebox.output_normvector"
                            }
                        ],
                        "id": "#extract_mcool_normvector_for_juicebox",
                        "run": {
                            "sbg:revision": 4,
                            "sbg:projectName": "Dev",
                            "sbg:cmdPreview": "run-mcool2hic.sh",
                            "sbg:image_url": null,
                            "class": "CommandLineTool",
                            "sbg:latestRevision": 4,
                            "successCodes": [],
                            "baseCommand": [
                                "run-mcool2hic.sh"
                            ],
                            "sbg:createdBy": "4dn-dcic",
                            "arguments": [],
                            "sbg:validationErrors": [],
                            "sbg:modifiedOn": 1499705191,
                            "id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/4",
                            "x": 700,
                            "inputs": [
                                {
                                    "type": [
                                        "null",
                                        "string"
                                    ],
                                    "id": "#output_prefix",
                                    "inputBinding": {
                                        "sbg:cmdInclude": true,
                                        "position": 3,
                                        "valueFrom": {
                                            "script": "\"out\"",
                                            "class": "Expression",
                                            "engine": "#cwl-js-engine"
                                        },
                                        "separate": true
                                    },
                                    "sbg:toolDefaultValue": "out"
                                },
                                {
                                    "type": [
                                        "null",
                                        "string"
                                    ],
                                    "id": "#outdir",
                                    "inputBinding": {
                                        "sbg:cmdInclude": true,
                                        "position": 2,
                                        "valueFrom": {
                                            "script": "\".\"",
                                            "class": "Expression",
                                            "engine": "#cwl-js-engine"
                                        },
                                        "separate": true
                                    },
                                    "sbg:toolDefaultValue": "."
                                },
                                {
                                    "type": [
                                        "null",
                                        "int"
                                    ],
                                    "id": "#nres",
                                    "inputBinding": {
                                        "sbg:cmdInclude": true,
                                        "position": 4,
                                        "separate": true
                                    },
                                    "sbg:toolDefaultValue": "13",
                                    "sbg:stageInput": null
                                },
                                {
                                    "type": [
                                        "null",
                                        "File"
                                    ],
                                    "required": false,
                                    "sbg:fileTypes": "MCOOL",
                                    "inputBinding": {
                                        "sbg:cmdInclude": true,
                                        "position": 1,
                                        "separate": true
                                    },
                                    "id": "#input_mcool"
                                }
                            ],
                            "stdout": "",
                            "y": 351,
                            "description": "",
                            "sbg:contributors": [
                                "4dn-dcic"
                            ],
                            "sbg:revisionsInfo": [
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 0,
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedOn": 1499701567
                                },
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 1,
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedOn": 1499701784
                                },
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 2,
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedOn": 1499703640
                                },
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 3,
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedOn": 1499704766
                                },
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 4,
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedOn": 1499705191
                                }
                            ],
                            "sbg:job": {
                                "allocatedResources": {
                                    "cpu": 8,
                                    "mem": 8000
                                },
                                "inputs": {
                                    "input_mcool": {
                                        "class": "File",
                                        "path": "/path/to/input_mcool.ext",
                                        "size": 0,
                                        "secondaryFiles": []
                                    },
                                    "output_prefix": "output_prefix-string-value",
                                    "outdir": "outdir-string-value",
                                    "nres": 7
                                }
                            },
                            "sbg:modifiedBy": "4dn-dcic",
                            "label": "extract-mcool-normvector-for-juicebox",
                            "sbg:project": "4dn-dcic/dev",
                            "requirements": [
                                {
                                    "class": "ExpressionEngineRequirement",
                                    "id": "#cwl-js-engine",
                                    "requirements": [
                                        {
                                            "dockerPull": "rabix/js-engine",
                                            "class": "DockerRequirement"
                                        }
                                    ]
                                }
                            ],
                            "hints": [
                                {
                                    "class": "sbg:CPURequirement",
                                    "value": 8
                                },
                                {
                                    "class": "sbg:MemRequirement",
                                    "value": 8000
                                },
                                {
                                    "dockerPull": "duplexa/4dn-hic:v24",
                                    "class": "DockerRequirement",
                                    "dockerImageId": ""
                                }
                            ],
                            "sbg:createdOn": 1499701567,
                            "sbg:sbgMaintained": false,
                            "stdin": "",
                            "cwlVersion": "sbg:draft-2",
                            "outputs": [
                                {
                                    "outputBinding": {
                                        "glob": "'*.juicerformat.gz'"
                                    },
                                    "type": [
                                        "null",
                                        "File"
                                    ],
                                    "sbg:fileTypes": "GZ",
                                    "id": "#output_normvector"
                                }
                            ],
                            "sbg:id": "4dn-dcic/dev/extract-mcool-normvector-for-juicebox/4",
                            "sbg:appVersion": [
                                "sbg:draft-2"
                            ],
                            "temporaryFailCodes": []
                        },
                        "sbg:x": 700,
                        "inputs": [
                            {
                                "id": "#extract_mcool_normvector_for_juicebox.output_prefix",
                                "default": "out"
                            },
                            {
                                "id": "#extract_mcool_normvector_for_juicebox.outdir",
                                "default": "."
                            },
                            {
                                "id": "#extract_mcool_normvector_for_juicebox.nres",
                                "source": [
                                    "#nres"
                                ]
                            },
                            {
                                "id": "#extract_mcool_normvector_for_juicebox.input_mcool",
                                "source": [
                                    "#Hi_C_processing_partC.output_mcool"
                                ]
                            }
                        ]
                    },
                    {
                        "sbg:y": 211,
                        "outputs": [
                            {
                                "id": "#add_hic_normvector_to_mcool.output_mcool"
                            }
                        ],
                        "id": "#add_hic_normvector_to_mcool",
                        "run": {
                            "sbg:revision": 3,
                            "sbg:projectName": "Dev",
                            "sbg:cmdPreview": "run-add-hicnormvector-to-mcool.sh",
                            "sbg:image_url": null,
                            "class": "CommandLineTool",
                            "sbg:latestRevision": 3,
                            "successCodes": [],
                            "baseCommand": [
                                "run-add-hicnormvector-to-mcool.sh"
                            ],
                            "sbg:createdBy": "4dn-dcic",
                            "arguments": [],
                            "sbg:validationErrors": [],
                            "sbg:modifiedOn": 1499701134,
                            "id": "4dn-dcic/dev/add-hic-normvector-to-mcool/3",
                            "x": 782,
                            "inputs": [
                                {
                                    "type": [
                                        "null",
                                        "string"
                                    ],
                                    "id": "#outdir",
                                    "inputBinding": {
                                        "sbg:cmdInclude": true,
                                        "position": 3,
                                        "valueFrom": {
                                            "script": "\".\"",
                                            "class": "Expression",
                                            "engine": "#cwl-js-engine"
                                        },
                                        "separate": true
                                    },
                                    "sbg:toolDefaultValue": "."
                                },
                                {
                                    "type": [
                                        "null",
                                        "File"
                                    ],
                                    "required": false,
                                    "sbg:fileTypes": ".MCOOL",
                                    "inputBinding": {
                                        "sbg:cmdInclude": true,
                                        "position": 2,
                                        "separate": true
                                    },
                                    "id": "#input_mcool"
                                },
                                {
                                    "type": [
                                        "null",
                                        "File"
                                    ],
                                    "required": false,
                                    "sbg:fileTypes": ".HIC",
                                    "inputBinding": {
                                        "sbg:cmdInclude": true,
                                        "position": 1,
                                        "separate": true
                                    },
                                    "id": "#input_hic"
                                }
                            ],
                            "stdout": "",
                            "y": 211,
                            "description": "",
                            "sbg:contributors": [
                                "4dn-dcic"
                            ],
                            "sbg:revisionsInfo": [
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 0,
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedOn": 1499653917
                                },
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 1,
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedOn": 1499654479
                                },
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 2,
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedOn": 1499659501
                                },
                                {
                                    "sbg:modifiedBy": "4dn-dcic",
                                    "sbg:revision": 3,
                                    "sbg:revisionNotes": null,
                                    "sbg:modifiedOn": 1499701134
                                }
                            ],
                            "sbg:job": {
                                "allocatedResources": {
                                    "cpu": 4,
                                    "mem": 8000
                                },
                                "inputs": {
                                    "input_hic": {
                                        "class": "File",
                                        "path": "/path/to/input_hic.ext",
                                        "size": 0,
                                        "secondaryFiles": []
                                    },
                                    "input_mcool": {
                                        "class": "File",
                                        "path": "/path/to/input_mcool.ext",
                                        "size": 0,
                                        "secondaryFiles": []
                                    },
                                    "outdir": "outdir-string-value"
                                }
                            },
                            "sbg:modifiedBy": "4dn-dcic",
                            "label": "add_hic_normvector_to_mcool",
                            "sbg:project": "4dn-dcic/dev",
                            "requirements": [],
                            "hints": [
                                {
                                    "class": "sbg:MemRequirement",
                                    "value": 8000
                                },
                                {
                                    "dockerPull": "duplexa/4dn-hic:v24",
                                    "class": "DockerRequirement",
                                    "dockerImageId": ""
                                },
                                {
                                    "class": "sbg:CPURequirement",
                                    "value": 4
                                }
                            ],
                            "sbg:createdOn": 1499653917,
                            "sbg:sbgMaintained": false,
                            "stdin": "",
                            "cwlVersion": "sbg:draft-2",
                            "outputs": [
                                {
                                    "outputBinding": {
                                        "glob": "$job.inputs.outdir + '*.mcool'"
                                    },
                                    "type": [
                                        "null",
                                        "File"
                                    ],
                                    "id": "#output_mcool"
                                }
                            ],
                            "sbg:id": "4dn-dcic/dev/add-hic-normvector-to-mcool/3",
                            "sbg:appVersion": [
                                "sbg:draft-2"
                            ],
                            "temporaryFailCodes": []
                        },
                        "sbg:x": 782,
                        "inputs": [
                            {
                                "id": "#add_hic_normvector_to_mcool.outdir",
                                "default": "."
                            },
                            {
                                "id": "#add_hic_normvector_to_mcool.input_mcool",
                                "source": [
                                    "#Hi_C_processing_partC.output_mcool"
                                ]
                            },
                            {
                                "id": "#add_hic_normvector_to_mcool.input_hic",
                                "source": [
                                    "#Hi_C_processing_partB.output_hic"
                                ]
                            }
                        ]
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:canvas_y": 127,
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:y": -89.0000002914005,
                        "sbg:fileTypes": "PAIRS.GZ",
                        "source": [
                            "#Hi_C_processing_partB.output_pairs"
                        ],
                        "required": false,
                        "id": "#output_pairs",
                        "label": "output_pairs",
                        "sbg:x": 1073.555529912313,
                        "sbg:includeInPorts": true
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:y": 212.24998563528067,
                        "source": [
                            "#add_hic_normvector_to_mcool.output_mcool"
                        ],
                        "required": false,
                        "id": "#output_mcool",
                        "label": "output_mcool",
                        "sbg:x": 1063.7499377131464,
                        "sbg:includeInPorts": true
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:y": 360.4999780654908,
                        "sbg:fileTypes": "GZ",
                        "source": [
                            "#extract_mcool_normvector_for_juicebox.output_normvector"
                        ],
                        "required": false,
                        "id": "#output_normvector",
                        "label": "output_normvector",
                        "sbg:x": 1059.4999384880068,
                        "sbg:includeInPorts": true
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:y": 142.24999338388446,
                        "source": [
                            "#Hi_C_processing_partB.output_hic"
                        ],
                        "required": false,
                        "id": "#output_hic",
                        "label": "output_hic",
                        "sbg:x": 1193.4999361634257,
                        "sbg:includeInPorts": true
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:y": 51.99999898672105,
                        "sbg:fileTypes": "PX2",
                        "source": [
                            "#Hi_C_processing_partB.output_pairs_index"
                        ],
                        "required": false,
                        "id": "#output_pairs_index",
                        "label": "output_pairs_index",
                        "sbg:x": 1032.7499365806582,
                        "sbg:includeInPorts": true
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ]
            },
            "sbg:x": 567,
            "inputs": [
                {
                    "id": "#hic_pairs_to_end.chrsizes",
                    "source": [
                        "#oldjuicer2pairs.out_pairs"
                    ]
                },
                {
                    "id": "#hic_pairs_to_end.input_pairs",
                    "source": [
                        "#oldjuicer2pairs.out_pairs_px"
                    ]
                },
                {
                    "id": "#hic_pairs_to_end.ncores"
                },
                {
                    "id": "#hic_pairs_to_end.min_res"
                },
                {
                    "id": "#hic_pairs_to_end.binsize"
                },
                {
                    "id": "#hic_pairs_to_end.ncores_1"
                },
                {
                    "id": "#hic_pairs_to_end.nres"
                }
            ]
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_y": 0,
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 89,
            "source": [
                "#hic_pairs_to_end.output_pairs_index"
            ],
            "id": "#output_pairs_index",
            "label": "output_pairs_index",
            "sbg:x": 1019,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 178,
            "source": [
                "#hic_pairs_to_end.output_pairs"
            ],
            "id": "#output_pairs",
            "label": "output_pairs",
            "sbg:x": 942,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 273,
            "source": [
                "#hic_pairs_to_end.output_normvector"
            ],
            "id": "#output_normvector",
            "label": "output_normvector",
            "sbg:x": 914,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 365,
            "source": [
                "#hic_pairs_to_end.output_mcool"
            ],
            "id": "#output_mcool",
            "label": "output_mcool",
            "sbg:x": 969,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 470,
            "source": [
                "#hic_pairs_to_end.output_hic"
            ],
            "id": "#output_hic",
            "label": "output_hic",
            "sbg:x": 903,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 7,
            "source": [
                "#oldjuicer2pairs.out_pairs_px"
            ],
            "id": "#out_pairs_px",
            "label": "out_pairs_px",
            "sbg:x": 933,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 285,
            "source": [
                "#oldjuicer2pairs.out_pairs"
            ],
            "id": "#out_pairs",
            "label": "out_pairs",
            "sbg:x": 995,
            "sbg:includeInPorts": true
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ]
}