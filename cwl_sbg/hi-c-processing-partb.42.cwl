{
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
            "sbg:x": 814.5714787074501,
            "required": false,
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 139.7114601133321,
            "sbg:fileTypes": "PAIRS.GZ",
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "label": "output_pairs",
            "id": "#output_pairs"
        },
        {
            "sbg:x": 787.2858953184084,
            "required": false,
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 294.56866071643174,
            "source": [
                "#cooler.out_cool"
            ],
            "label": "out_cool",
            "id": "#out_cool"
        },
        {
            "sbg:x": 910.0000171272096,
            "required": false,
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 524.2816587756744,
            "source": [
                "#pairs2hic.output_hic"
            ],
            "label": "output_hic",
            "id": "#output_hic"
        }
    ],
    "class": "Workflow",
    "sbg:createdOn": 1479144431,
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:revisionNotes": "cooler self.path -> self.base, pairs2hic using v33 (all of the steps are using the same docker image to avoid multiple pull)",
    "inputs": [
        {
            "sbg:x": -44.285710918659674,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 365.8544025321941,
            "sbg:fileTypes": "SIZES",
            "label": "chrsizes",
            "id": "#chrsizes"
        },
        {
            "sbg:x": -32.85716799814047,
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "sbg:y": 138.56737856934552,
            "sbg:fileTypes": "PAIRS.GZ",
            "label": "input_pairs",
            "id": "#input_pairs"
        },
        {
            "sbg:toolDefaultValue": "8",
            "type": [
                "null",
                "int"
            ],
            "required": false,
            "id": "#ncores"
        },
        {
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "required": false,
            "sbg:includeInPorts": false,
            "id": "#binsize"
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
            "sbg:suggestedValue": "14g",
            "sbg:toolDefaultValue": "14g",
            "type": [
                "null",
                "string"
            ],
            "required": false,
            "id": "#maxmem"
        }
    ],
    "requirements": [],
    "hints": [],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:createdBy": "duplexa",
    "sbg:canvas_zoom": 0.6999999999999997,
    "sbg:revision": 42,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partb/42.png",
    "sbg:validationErrors": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "label": "Hi-C_processing_partB",
    "sbg:canvas_x": 108,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partb/42",
    "sbg:modifiedOn": 1502843523,
    "sbg:sbgMaintained": false,
    "sbg:latestRevision": 42,
    "sbg:canvas_y": 43,
    "description": "",
    "sbg:projectName": "Dev",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1479144431,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1479144466,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1479146390,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1479149385,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1479149442,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1479150047,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedOn": 1479241950,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedOn": 1488530005,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedOn": 1488530109,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedOn": 1488530281,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedOn": 1488530836,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 11,
            "sbg:modifiedOn": 1488530872,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 12,
            "sbg:modifiedOn": 1488531567,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 13,
            "sbg:modifiedOn": 1496181927,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 14,
            "sbg:modifiedOn": 1496181955,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 15,
            "sbg:modifiedOn": 1496182121,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 16,
            "sbg:modifiedOn": 1496188521,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 17,
            "sbg:modifiedOn": 1496188582,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 18,
            "sbg:modifiedOn": 1496188729,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 19,
            "sbg:modifiedOn": 1496190149,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 20,
            "sbg:modifiedOn": 1499355043,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 21,
            "sbg:modifiedOn": 1499356869,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 22,
            "sbg:modifiedOn": 1499363602,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 23,
            "sbg:modifiedOn": 1499370019,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 24,
            "sbg:modifiedOn": 1499460260,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 25,
            "sbg:modifiedOn": 1499529552,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 26,
            "sbg:modifiedOn": 1499625173,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 27,
            "sbg:modifiedOn": 1499627303,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 28,
            "sbg:modifiedOn": 1500331892,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 29,
            "sbg:modifiedOn": 1501513539,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 30,
            "sbg:modifiedOn": 1501514350,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 31,
            "sbg:modifiedOn": 1501514405,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 32,
            "sbg:modifiedOn": 1501689712,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 33,
            "sbg:modifiedOn": 1501689823,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 34,
            "sbg:modifiedOn": 1501707297,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "15G mem for pairs2hic"
        },
        {
            "sbg:revision": 35,
            "sbg:modifiedOn": 1501765060,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "r3.8xlarge for cooler"
        },
        {
            "sbg:revision": 36,
            "sbg:modifiedOn": 1501780788,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 37,
            "sbg:modifiedOn": 1501780943,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "workflow pairs2hic maxmem set up 56g"
        },
        {
            "sbg:revision": 38,
            "sbg:modifiedOn": 1501908603,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "cooler 16G mem max_split parameter included as a default 2 (not modifiable)"
        },
        {
            "sbg:revision": 39,
            "sbg:modifiedOn": 1502485439,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 40,
            "sbg:modifiedOn": 1502834643,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "secondary file handling"
        },
        {
            "sbg:revision": 41,
            "sbg:modifiedOn": 1502839047,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "removed orphan pairs index output"
        },
        {
            "sbg:revision": 42,
            "sbg:modifiedOn": 1502843523,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "cooler self.path -> self.base, pairs2hic using v33 (all of the steps are using the same docker image to avoid multiple pull)"
        }
    ],
    "steps": [
        {
            "run": {
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
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
                        ],
                        "outprefix": "outprefix-string-value"
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 4000
                    }
                },
                "sbg:modifiedOn": 1502834121,
                "outputs": [
                    {
                        "sbg:fileTypes": "PAIRS.GZ",
                        "outputBinding": {
                            "secondaryFiles": [
                                ".px2"
                            ],
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
                "arguments": [],
                "sbg:createdOn": 1479143121,
                "sbg:contributors": [
                    "4dn-dcic",
                    "duplexa"
                ],
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionNotes": "output secondary file now just '.px2'",
                "inputs": [
                    {
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
                        "id": "#outprefix"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "position": 2
                        },
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "File"
                            }
                        ],
                        "required": false,
                        "sbg:stageInput": "copy",
                        "sbg:fileTypes": "PAIRS.GZ",
                        "id": "#input_pairs"
                    }
                ],
                "stdin": "",
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
                "x": 385.57145629610346,
                "successCodes": [],
                "sbg:modifiedBy": "4dn-dcic",
                "baseCommand": [
                    "run-merge-pairs.sh"
                ],
                "sbg:links": [],
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
                        "dockerPull": "duplexa/4dn-hic:v33"
                    },
                    {
                        "class": "ExpressionEngineRequirement",
                        "value": ""
                    }
                ],
                "class": "CommandLineTool",
                "sbg:createdBy": "duplexa",
                "stdout": "",
                "sbg:id": "4dn-dcic/dev/merge-pairs/28",
                "sbg:image_url": null,
                "y": 192.94197236852995,
                "sbg:validationErrors": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "label": "merge-pairs",
                "sbg:revision": 28,
                "temporaryFailCodes": [],
                "sbg:sbgMaintained": false,
                "sbg:latestRevision": 28,
                "sbg:cmdPreview": "run-merge-pairs.sh",
                "description": "",
                "sbg:projectName": "Dev",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1479143121,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1479143406,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1479143659,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1479143834,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1479143945,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1479144065,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1479144200,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1479144240,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1479144301,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1479149340,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1479149428,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1479149963,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1479155094,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1479241188,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1488524515,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "now using 4dn-hic docker image"
                    },
                    {
                        "sbg:revision": 15,
                        "sbg:modifiedOn": 1488524641,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "pairs and index are copied not links, so that they go together."
                    },
                    {
                        "sbg:revision": 16,
                        "sbg:modifiedOn": 1488524868,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "removed blank secondary file requirement"
                    },
                    {
                        "sbg:revision": 17,
                        "sbg:modifiedOn": 1488525221,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 18,
                        "sbg:modifiedOn": 1488529667,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 19,
                        "sbg:modifiedOn": 1488531529,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "removed outdir in the output glob"
                    },
                    {
                        "sbg:revision": 20,
                        "sbg:modifiedOn": 1488567441,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "fixed output file name"
                    },
                    {
                        "sbg:revision": 21,
                        "sbg:modifiedOn": 1490716980,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 22,
                        "sbg:modifiedOn": 1496166568,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 23,
                        "sbg:modifiedOn": 1496188642,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 24,
                        "sbg:modifiedOn": 1499356728,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 25,
                        "sbg:modifiedOn": 1500331813,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 26,
                        "sbg:modifiedOn": 1502829840,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "pairs index as a secondary file to pairs output instead of a separate output item."
                    },
                    {
                        "sbg:revision": 27,
                        "sbg:modifiedOn": 1502830223,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "modified expression for secondary output file for pairs index"
                    },
                    {
                        "sbg:revision": 28,
                        "sbg:modifiedOn": 1502834121,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "output secondary file now just '.px2'"
                    }
                ],
                "id": "4dn-dcic/dev/merge-pairs/28"
            },
            "sbg:x": 385.57145629610346,
            "outputs": [
                {
                    "id": "#merge_pairs.output_pairs"
                }
            ],
            "sbg:y": 192.94197236852995,
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
            "run": {
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
                        "binsize": 4,
                        "max_split": 0,
                        "pairs": {
                            "path": "/path/to/pairs.ext",
                            "size": 0,
                            "secondaryFiles": [
                                {
                                    "path": {
                                        "class": "Expression",
                                        "engine": "#cwl-js-engine",
                                        "script": "self.basename + '.px2'"
                                    }
                                }
                            ],
                            "class": "File"
                        },
                        "ncores": 5,
                        "outprefix": "outprefix-string-value",
                        "chrsizes": {
                            "path": "/path/to/chrsize.ext",
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
                "sbg:modifiedOn": 1502843400,
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
                "arguments": [],
                "sbg:createdOn": 1488495202,
                "sbg:contributors": [
                    "4dn-dcic",
                    "duplexa"
                ],
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionNotes": "self.path -> self.basename for secondary file (pairs index)",
                "inputs": [
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "secondaryFiles": [
                                {
                                    "class": "Expression",
                                    "engine": "#cwl-js-engine",
                                    "script": "self.basename + '.px2'"
                                }
                            ],
                            "position": 1
                        },
                        "sbg:stageInput": "copy",
                        "sbg:fileTypes": "PAIRS.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#pairs"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "sbg:fileTypes": "SIZES",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#chrsizes"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
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
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 5
                        },
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 4
                        },
                        "sbg:toolDefaultValue": "8",
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#ncores"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 6
                        },
                        "sbg:stageInput": null,
                        "sbg:toolDefaultValue": "2",
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#max_split"
                    }
                ],
                "stdin": "",
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
                        "dockerPull": "duplexa/4dn-hic:v33"
                    }
                ],
                "successCodes": [],
                "sbg:modifiedBy": "4dn-dcic",
                "baseCommand": [
                    "run-cooler.sh"
                ],
                "class": "CommandLineTool",
                "sbg:createdBy": "duplexa",
                "stdout": "",
                "sbg:id": "4dn-dcic/dev/cooler/22",
                "sbg:image_url": null,
                "sbg:validationErrors": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "label": "cooler",
                "sbg:revision": 22,
                "temporaryFailCodes": [],
                "sbg:sbgMaintained": false,
                "sbg:latestRevision": 22,
                "sbg:cmdPreview": "run-cooler.sh",
                "description": "",
                "sbg:projectName": "Dev",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1488495202,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1488495392,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1488495453,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1488499764,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1488511643,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1488511809,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1488525294,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "now using 4dn-hic docker image"
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1488529899,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1490716960,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1496167357,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1496168048,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1496175693,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1496175978,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1499354982,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1499625090,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 15,
                        "sbg:modifiedOn": 1499625139,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 16,
                        "sbg:modifiedOn": 1499627281,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "Mem 960GB"
                    },
                    {
                        "sbg:revision": 17,
                        "sbg:modifiedOn": 1499690249,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 18,
                        "sbg:modifiedOn": 1500331793,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 19,
                        "sbg:modifiedOn": 1501908398,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement."
                    },
                    {
                        "sbg:revision": 20,
                        "sbg:modifiedOn": 1502829691,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "pairs index as a secondary file to pairs instead of a separate input item"
                    },
                    {
                        "sbg:revision": 21,
                        "sbg:modifiedOn": 1502833432,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "pairs secondary file expression -> job.self.path"
                    },
                    {
                        "sbg:revision": 22,
                        "sbg:modifiedOn": 1502843400,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "self.path -> self.basename for secondary file (pairs index)"
                    }
                ],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/22/raw/"
            },
            "sbg:x": 658.4286107335774,
            "outputs": [
                {
                    "id": "#cooler.out_cool"
                }
            ],
            "sbg:y": 238.94198231399068,
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
            "id": "#cooler"
        },
        {
            "run": {
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
                        "chromsizes_file": {
                            "path": "/path/to/chromsizes_file.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "min_res": 4,
                        "maxmem": "maxmem-string-value",
                        "input_pairs": {
                            "path": "/path/to/input_pairs.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "higlass": "higlass-string-value",
                        "output_prefix": "output_prefix-string-value"
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 58000
                    }
                },
                "sbg:modifiedOn": 1502843453,
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
                "arguments": [],
                "sbg:createdOn": 1496168605,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:project": "4dn-dcic/dev",
                "sbg:revisionNotes": "docker v33",
                "inputs": [
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        },
                        "sbg:fileTypes": ".PAIRS.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_pairs"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#chromsizes_file"
                    },
                    {
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
                        "id": "#output_prefix"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 4
                        },
                        "sbg:stageInput": null,
                        "sbg:toolDefaultValue": "5000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#min_res"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 5
                        },
                        "sbg:stageInput": null,
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#higlass"
                    },
                    {
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
                        "id": "#maxmem"
                    }
                ],
                "stdin": "",
                "requirements": [],
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
                        "dockerPull": "duplexa/4dn-hic:v33"
                    }
                ],
                "successCodes": [],
                "sbg:modifiedBy": "4dn-dcic",
                "baseCommand": [
                    "run-juicebox-pre.sh"
                ],
                "class": "CommandLineTool",
                "sbg:createdBy": "4dn-dcic",
                "stdout": "",
                "sbg:id": "4dn-dcic/dev/pairs2hic/16",
                "sbg:image_url": null,
                "sbg:validationErrors": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "label": "pairs2hic",
                "sbg:revision": 16,
                "temporaryFailCodes": [],
                "sbg:sbgMaintained": false,
                "sbg:latestRevision": 16,
                "sbg:cmdPreview": "run-juicebox-pre.sh",
                "description": "",
                "sbg:projectName": "Dev",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1496168605,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1496168842,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1496168924,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1496172319,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1496176108,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1496178546,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1500331857,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1501513062,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "added java maxmem as parameter"
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1501595773,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1501605274,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1501637382,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1501689608,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1501689663,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1501689805,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1501707253,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "15GB mem"
                    },
                    {
                        "sbg:revision": 15,
                        "sbg:modifiedOn": 1501780759,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed."
                    },
                    {
                        "sbg:revision": 16,
                        "sbg:modifiedOn": 1502843453,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": "docker v33"
                    }
                ],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/pairs2hic/16/raw/"
            },
            "sbg:x": 698.5716418246949,
            "outputs": [
                {
                    "id": "#pairs2hic.output_hic"
                }
            ],
            "sbg:y": 440.9375780899948,
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
            "id": "#pairs2hic"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partb/42/raw/"
}