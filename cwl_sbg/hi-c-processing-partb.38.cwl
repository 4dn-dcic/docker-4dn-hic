{
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-partb/38/raw/",
    "sbg:createdOn": 1479144431,
    "sbg:revision": 38,
    "class": "Workflow",
    "inputs": [
        {
            "sbg:y": 365.8544025321941,
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes",
            "sbg:x": -44.285710918659674,
            "label": "chrsizes",
            "sbg:fileTypes": ".CHROM.SIZES"
        },
        {
            "sbg:y": 138.56737856934552,
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "id": "#input_pairs",
            "sbg:x": -32.85716799814047,
            "label": "input_pairs",
            "sbg:fileTypes": "PAIRS.GZ"
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
            "required": false,
            "type": [
                "null",
                "int"
            ],
            "id": "#ncores",
            "sbg:toolDefaultValue": "8"
        },
        {
            "required": false,
            "sbg:includeInPorts": false,
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "id": "#binsize"
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144431,
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479144466,
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479146390,
            "sbg:revision": 2
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149385,
            "sbg:revision": 3
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479149442,
            "sbg:revision": 4
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1479150047,
            "sbg:revision": 5
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1479241950,
            "sbg:revision": 6
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530005,
            "sbg:revision": 7
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530109,
            "sbg:revision": 8
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530281,
            "sbg:revision": 9
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530836,
            "sbg:revision": 10
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488530872,
            "sbg:revision": 11
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1488531567,
            "sbg:revision": 12
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496181927,
            "sbg:revision": 13
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496181955,
            "sbg:revision": 14
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496182121,
            "sbg:revision": 15
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496188521,
            "sbg:revision": 16
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496188582,
            "sbg:revision": 17
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496188729,
            "sbg:revision": 18
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496190149,
            "sbg:revision": 19
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499355043,
            "sbg:revision": 20
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499356869,
            "sbg:revision": 21
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499363602,
            "sbg:revision": 22
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499370019,
            "sbg:revision": 23
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499460260,
            "sbg:revision": 24
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499529552,
            "sbg:revision": 25
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499625173,
            "sbg:revision": 26
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499627303,
            "sbg:revision": 27
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500331892,
            "sbg:revision": 28
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501513539,
            "sbg:revision": 29
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501514350,
            "sbg:revision": 30
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501514405,
            "sbg:revision": 31
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689712,
            "sbg:revision": 32
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501689823,
            "sbg:revision": 33
        },
        {
            "sbg:revisionNotes": "15G mem for pairs2hic",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501707297,
            "sbg:revision": 34
        },
        {
            "sbg:revisionNotes": "r3.8xlarge for cooler",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501765060,
            "sbg:revision": 35
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501780788,
            "sbg:revision": 36
        },
        {
            "sbg:revisionNotes": "workflow pairs2hic maxmem set up 56g",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501780943,
            "sbg:revision": 37
        },
        {
            "sbg:revisionNotes": "cooler 16G mem max_split parameter included as a default 2 (not modifiable)",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1501908603,
            "sbg:revision": 38
        }
    ],
    "requirements": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedBy": "4dn-dcic",
    "hints": [],
    "sbg:sbgMaintained": false,
    "sbg:canvas_zoom": 0.6999999999999997,
    "sbg:createdBy": "duplexa",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:canvas_y": 43,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-partb/38",
    "sbg:validationErrors": [],
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
            "sbg:x": 385.57145629610346,
            "run": {
                "stdin": "",
                "sbg:job": {
                    "inputs": {
                        "input_pairs": [
                            {
                                "class": "File",
                                "secondaryFiles": [],
                                "size": 0,
                                "path": "/path/to/input_pairs-1.ext"
                            },
                            {
                                "class": "File",
                                "secondaryFiles": [],
                                "size": 0,
                                "path": "/path/to/input_pairs-2.ext"
                            }
                        ],
                        "outprefix": "outprefix-string-value"
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 4000
                    }
                },
                "id": "4dn-dcic/dev/merge-pairs/25",
                "sbg:createdOn": 1479143121,
                "sbg:revision": 25,
                "class": "CommandLineTool",
                "inputs": [
                    {
                        "required": false,
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out"
                    },
                    {
                        "inputBinding": {
                            "itemSeparator": " ",
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "File"
                            }
                        ],
                        "sbg:stageInput": "copy",
                        "id": "#input_pairs",
                        "required": false,
                        "sbg:fileTypes": "PAIRS.GZ"
                    }
                ],
                "sbg:cmdPreview": "run-merge-pairs.sh",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143121,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143406,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143659,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143834,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479143945,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144065,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144200,
                        "sbg:revision": 6
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144240,
                        "sbg:revision": 7
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479144301,
                        "sbg:revision": 8
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149340,
                        "sbg:revision": 9
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149428,
                        "sbg:revision": 10
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479149963,
                        "sbg:revision": 11
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1479155094,
                        "sbg:revision": 12
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1479241188,
                        "sbg:revision": 13
                    },
                    {
                        "sbg:revisionNotes": "now using 4dn-hic docker image",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488524515,
                        "sbg:revision": 14
                    },
                    {
                        "sbg:revisionNotes": "pairs and index are copied not links, so that they go together.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488524641,
                        "sbg:revision": 15
                    },
                    {
                        "sbg:revisionNotes": "removed blank secondary file requirement",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488524868,
                        "sbg:revision": 16
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488525221,
                        "sbg:revision": 17
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488529667,
                        "sbg:revision": 18
                    },
                    {
                        "sbg:revisionNotes": "removed outdir in the output glob",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488531529,
                        "sbg:revision": 19
                    },
                    {
                        "sbg:revisionNotes": "fixed output file name",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488567441,
                        "sbg:revision": 20
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1490716980,
                        "sbg:revision": 21
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496166568,
                        "sbg:revision": 22
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496188642,
                        "sbg:revision": 23
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499356728,
                        "sbg:revision": 24
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1500331813,
                        "sbg:revision": 25
                    }
                ],
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
                "cwlVersion": "sbg:draft-2",
                "arguments": [],
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/merge-pairs/25",
                "sbg:modifiedOn": 1500331813,
                "sbg:sbgMaintained": false,
                "successCodes": [],
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
                "sbg:createdBy": "duplexa",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "baseCommand": [
                    "run-merge-pairs.sh"
                ],
                "sbg:id": "4dn-dcic/dev/merge-pairs/25",
                "x": 385.57145629610346,
                "stdout": "",
                "sbg:validationErrors": [],
                "temporaryFailCodes": [],
                "sbg:image_url": null,
                "sbg:modifiedBy": "4dn-dcic",
                "description": "",
                "sbg:project": "4dn-dcic/dev",
                "sbg:links": [],
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "outputs": [
                    {
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
                        "id": "#output_pairs_index",
                        "sbg:fileTypes": "PX2"
                    },
                    {
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
                        "id": "#output_pairs",
                        "sbg:fileTypes": "PAIRS.GZ"
                    }
                ],
                "sbg:projectName": "Dev",
                "y": 192.94197236852995,
                "sbg:latestRevision": 25,
                "label": "merge-pairs"
            },
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
            "sbg:x": 698.5716418246949,
            "run": {
                "stdin": "",
                "sbg:job": {
                    "inputs": {
                        "higlass": "higlass-string-value",
                        "chromsizes_file": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/chromsizes_file.ext"
                        },
                        "output_prefix": "output_prefix-string-value",
                        "input_pairs": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_pairs.ext"
                        },
                        "min_res": 4,
                        "maxmem": "maxmem-string-value"
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 58000
                    }
                },
                "id": "4dn-dcic/dev/pairs2hic/15",
                "sbg:createdOn": 1496168605,
                "sbg:revision": 15,
                "class": "CommandLineTool",
                "inputs": [
                    {
                        "required": false,
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#output_prefix",
                        "sbg:toolDefaultValue": "out"
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
                        "sbg:stageInput": null,
                        "id": "#min_res",
                        "required": false,
                        "sbg:toolDefaultValue": "5000"
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "position": 6,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#maxmem",
                        "sbg:toolDefaultValue": "14g"
                    },
                    {
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
                        "id": "#input_pairs",
                        "sbg:fileTypes": ".PAIRS.GZ"
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
                        "sbg:stageInput": null,
                        "id": "#higlass",
                        "required": false,
                        "sbg:toolDefaultValue": "1"
                    },
                    {
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
                        "id": "#chromsizes_file",
                        "sbg:fileTypes": ".CHROM.SIZES"
                    }
                ],
                "sbg:cmdPreview": "run-juicebox-pre.sh",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496168605,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496168842,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496168924,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496172319,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496176108,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496178546,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1500331857,
                        "sbg:revision": 6
                    },
                    {
                        "sbg:revisionNotes": "added java maxmem as parameter",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501513062,
                        "sbg:revision": 7
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501595773,
                        "sbg:revision": 8
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501605274,
                        "sbg:revision": 9
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501637382,
                        "sbg:revision": 10
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501689608,
                        "sbg:revision": 11
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501689663,
                        "sbg:revision": 12
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501689805,
                        "sbg:revision": 13
                    },
                    {
                        "sbg:revisionNotes": "15GB mem",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501707253,
                        "sbg:revision": 14
                    },
                    {
                        "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501780759,
                        "sbg:revision": 15
                    }
                ],
                "requirements": [],
                "cwlVersion": "sbg:draft-2",
                "arguments": [],
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/pairs2hic/15",
                "sbg:modifiedOn": 1501780759,
                "sbg:revisionNotes": "modified from rev13. resource requirement : mem 58G, instance type requirement removed.",
                "sbg:sbgMaintained": false,
                "successCodes": [],
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
                        "dockerImageId": "",
                        "diskSize": null,
                        "dockerPull": "duplexa/4dn-hic:v30"
                    }
                ],
                "sbg:createdBy": "4dn-dcic",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "baseCommand": [
                    "run-juicebox-pre.sh"
                ],
                "sbg:id": "4dn-dcic/dev/pairs2hic/15",
                "x": 698.5716418246949,
                "stdout": "",
                "sbg:validationErrors": [],
                "temporaryFailCodes": [],
                "sbg:image_url": null,
                "sbg:modifiedBy": "4dn-dcic",
                "description": "",
                "sbg:project": "4dn-dcic/dev",
                "sbg:contributors": [
                    "4dn-dcic"
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
                "sbg:projectName": "Dev",
                "y": 440.9375780899948,
                "sbg:latestRevision": 15,
                "label": "pairs2hic"
            },
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
                    "default": "56g",
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
            "sbg:x": 658.4286107335774,
            "run": {
                "stdin": "",
                "sbg:modifiedOn": 1501908398,
                "sbg:createdOn": 1488495202,
                "sbg:revision": 19,
                "sbg:job": {
                    "inputs": {
                        "max_split": 0,
                        "outprefix": "outprefix-string-value",
                        "ncores": 5,
                        "pairs": {
                            "class": "File",
                            "secondaryFiles": [
                                {
                                    "path": "$job.inputs.pairs + '.px2'"
                                }
                            ],
                            "size": 0,
                            "path": "/path/to/pairs.ext"
                        },
                        "chrsizes": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/chrsize.ext"
                        },
                        "pairs_index": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/pairs_index.ext"
                        },
                        "binsize": 4
                    },
                    "allocatedResources": {
                        "cpu": 2,
                        "mem": 16000
                    }
                },
                "inputs": [
                    {
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
                        "id": "#pairs",
                        "sbg:fileTypes": "PAIRS.GZ"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:stageInput": "copy",
                        "id": "#pairs_index",
                        "sbg:fileTypes": "PX2"
                    },
                    {
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#chrsizes",
                        "sbg:fileTypes": "SIZES"
                    },
                    {
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null,
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
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out"
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
                        "id": "#ncores",
                        "sbg:toolDefaultValue": "8"
                    },
                    {
                        "inputBinding": {
                            "position": 6,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null,
                        "id": "#max_split",
                        "sbg:toolDefaultValue": "2"
                    }
                ],
                "sbg:cmdPreview": "run-cooler.sh",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488495202,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488495392,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488495453,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488499764,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488511643,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488511809,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:revisionNotes": "now using 4dn-hic docker image",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488525294,
                        "sbg:revision": 6
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1488529899,
                        "sbg:revision": 7
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1490716960,
                        "sbg:revision": 8
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496167357,
                        "sbg:revision": 9
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496168048,
                        "sbg:revision": 10
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496175693,
                        "sbg:revision": 11
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1496175978,
                        "sbg:revision": 12
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499354982,
                        "sbg:revision": 13
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499625090,
                        "sbg:revision": 14
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499625139,
                        "sbg:revision": 15
                    },
                    {
                        "sbg:revisionNotes": "Mem 960GB",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499627281,
                        "sbg:revision": 16
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1499690249,
                        "sbg:revision": 17
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1500331793,
                        "sbg:revision": 18
                    },
                    {
                        "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1501908398,
                        "sbg:revision": 19
                    }
                ],
                "requirements": [],
                "cwlVersion": "sbg:draft-2",
                "temporaryFailCodes": [],
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/cooler/19/raw/",
                "sbg:revisionNotes": "docker duplexa/4dn-hic:v31, added max_split as 6th parameter. Mem requirement 16GB, CPU 2. No instance requirement.",
                "sbg:sbgMaintained": false,
                "successCodes": [],
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
                "sbg:createdBy": "duplexa",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "baseCommand": [
                    "run-cooler.sh"
                ],
                "sbg:id": "4dn-dcic/dev/cooler/19",
                "sbg:project": "4dn-dcic/dev",
                "stdout": "",
                "sbg:validationErrors": [],
                "arguments": [],
                "sbg:image_url": null,
                "sbg:modifiedBy": "4dn-dcic",
                "description": "",
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
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
                "sbg:projectName": "Dev",
                "sbg:latestRevision": 19,
                "label": "cooler"
            },
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
            ]
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-partb/38.png",
    "sbg:canvas_x": 108,
    "description": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "outputs": [
        {
            "required": false,
            "sbg:y": -0.7171201026670033,
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs_index",
            "sbg:x": 578.2857636043005,
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "PX2",
            "source": [
                "#merge_pairs.output_pairs_index"
            ],
            "label": "output_pairs_index"
        },
        {
            "required": false,
            "sbg:y": 139.7114601133321,
            "type": [
                "null",
                "File"
            ],
            "id": "#output_pairs",
            "sbg:x": 814.5714787074501,
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "PAIRS.GZ",
            "source": [
                "#merge_pairs.output_pairs"
            ],
            "label": "output_pairs"
        },
        {
            "sbg:y": 294.56866071643174,
            "type": [
                "null",
                "File"
            ],
            "id": "#out_cool",
            "sbg:x": 787.2858953184084,
            "sbg:includeInPorts": true,
            "required": false,
            "source": [
                "#cooler.out_cool"
            ],
            "label": "out_cool"
        },
        {
            "sbg:y": 524.2816587756744,
            "type": [
                "null",
                "File"
            ],
            "id": "#output_hic",
            "sbg:x": 910.0000171272096,
            "sbg:includeInPorts": true,
            "required": false,
            "source": [
                "#pairs2hic.output_hic"
            ],
            "label": "output_hic"
        }
    ],
    "sbg:revisionNotes": "cooler 16G mem max_split parameter included as a default 2 (not modifiable)",
    "label": "Hi-C_processing_partB",
    "sbg:latestRevision": 38,
    "sbg:modifiedOn": 1501908603,
    "sbg:projectName": "Dev"
}