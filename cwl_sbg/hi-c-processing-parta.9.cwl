{
    "sbg:latestRevision": 9,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta/9/raw/",
    "sbg:modifiedOn": 1481754095,
    "sbg:project": "4dn-dcic/dev",
    "sbg:canvas_y": 0,
    "sbg:createdOn": 1478223788,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta/9",
    "hints": [],
    "sbg:createdBy": "duplexa",
    "sbg:modifiedBy": "duplexa",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:revision": 9,
    "outputs": [
        {
            "sbg:includeInPorts": true,
            "id": "#out_sorted_bam",
            "sbg:y": 58.88573129685837,
            "source": [
                "#sort_bam.out_sorted_bam"
            ],
            "sbg:fileTypes": "BAM",
            "required": false,
            "sbg:x": 855.5554792557249,
            "label": "out_sorted_bam",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "id": "#out_sorted_bam_index",
            "sbg:y": 193.3301831352219,
            "source": [
                "#sort_bam.out_sorted_bam_index"
            ],
            "sbg:fileTypes": "BAI",
            "required": false,
            "sbg:x": 856.6666312335454,
            "label": "out_sorted_bam_index",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "id": "#out_pairs",
            "sbg:y": 300.8499890147402,
            "source": [
                "#bam2pairs.out_pairs"
            ],
            "sbg:fileTypes": "GZ",
            "required": false,
            "sbg:x": 1036.8253666408423,
            "label": "out_pairs",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "id": "#out_pairs_index",
            "sbg:y": 399.3817399246058,
            "source": [
                "#bam2pairs.out_pairs_index"
            ],
            "sbg:fileTypes": "PX2",
            "required": false,
            "sbg:x": 920.1785085371482,
            "label": "out_pairs_index",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "description": "",
    "class": "Workflow",
    "sbg:canvas_zoom": 0.6999999999999997,
    "label": "Hi-C_processing_partA",
    "requirements": [],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta/9.png",
    "inputs": [
        {
            "id": "#fastq1",
            "sbg:x": 64,
            "sbg:y": 68.99716186523438,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "type": [
                "File"
            ],
            "label": "fastq1"
        },
        {
            "id": "#fastq2",
            "sbg:x": 69.55555386013455,
            "sbg:y": 201.44160082612672,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "type": [
                "File"
            ],
            "label": "fastq2"
        },
        {
            "id": "#bwa_index",
            "sbg:x": 62.222220102945975,
            "sbg:y": 325.6638200813622,
            "sbg:fileTypes": "TGZ",
            "type": [
                "File"
            ],
            "label": "bwa_index"
        },
        {
            "id": "#nThreads",
            "sbg:y": 29.995937302708587,
            "sbg:includeInPorts": true,
            "sbg:x": 164.28570086615426,
            "label": "nThreads",
            "type": [
                "int"
            ]
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478223788,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478223860,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478224851,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478225009,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478232847,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 4
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478233263,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 5
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1478292951,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 6
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1481754043,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 7
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1481754058,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 8
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1481754095,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 9
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "steps": [
        {
            "sbg:y": 154.65625,
            "inputs": [
                {
                    "default": "out",
                    "id": "#bwa_mem.prefix"
                },
                {
                    "id": "#bwa_mem.nThreads",
                    "source": [
                        "#nThreads"
                    ]
                },
                {
                    "id": "#bwa_mem.fastq2",
                    "source": [
                        "#fastq2"
                    ]
                },
                {
                    "id": "#bwa_mem.fastq1",
                    "source": [
                        "#fastq1"
                    ]
                },
                {
                    "id": "#bwa_mem.bwa_index",
                    "source": [
                        "#bwa_index"
                    ]
                }
            ],
            "sbg:x": 231,
            "run": {
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 6000
                    },
                    "inputs": {
                        "bwa_index": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/bwa_index.ext"
                        },
                        "fastq1": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/fastq1.ext"
                        },
                        "fastq2": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/fastq2.ext"
                        },
                        "prefix": "prefix-string-value",
                        "nThreads": 9
                    }
                },
                "id": "4dn-dcic/dev/bwa-mem/8",
                "stdout": "",
                "sbg:latestRevision": 8,
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/bwa-mem/8",
                "stdin": "",
                "sbg:modifiedOn": 1478217741,
                "sbg:project": "4dn-dcic/dev",
                "y": 154.65625,
                "sbg:createdOn": 1478104724,
                "sbg:id": "4dn-dcic/dev/bwa-mem/8",
                "hints": [
                    {
                        "class": "sbg:MemRequirement",
                        "value": 6000
                    },
                    {
                        "dockerImageId": "",
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/bwa-mem:v1"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 4
                    }
                ],
                "sbg:createdBy": "duplexa",
                "sbg:modifiedBy": "duplexa",
                "x": 231,
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:revision": 8,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.bam"
                        },
                        "sbg:fileTypes": "BAM",
                        "id": "#out_bam",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:cmdPreview": "run.sh  /path/to/fastq1.ext  /path/to/fastq2.ext  /path/to/bwa_index.ext  9",
                "successCodes": [],
                "class": "CommandLineTool",
                "baseCommand": [
                    "run.sh"
                ],
                "label": "bwa-mem",
                "arguments": [],
                "description": "Alignment of a pair of fastq files with bwa mem for Hi-C data.",
                "requirements": [],
                "sbg:image_url": null,
                "inputs": [
                    {
                        "required": false,
                        "id": "#prefix",
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 4
                        }
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 5
                        },
                        "id": "#nThreads",
                        "sbg:includeInPorts": true,
                        "sbg:toolDefaultValue": "4",
                        "required": true,
                        "type": [
                            "int"
                        ]
                    },
                    {
                        "required": true,
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "id": "#fastq2",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        }
                    },
                    {
                        "required": true,
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "id": "#fastq1",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    },
                    {
                        "required": true,
                        "sbg:fileTypes": "TGZ",
                        "id": "#bwa_index",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        }
                    }
                ],
                "sbg:sbgMaintained": false,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1478104724,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1478105028,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1478105153,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1478105188,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1478110115,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1478110198,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 5
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1478110296,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1478111709,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1478217741,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 8
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
                "temporaryFailCodes": []
            },
            "id": "#bwa_mem",
            "outputs": [
                {
                    "id": "#bwa_mem.out_bam"
                }
            ]
        },
        {
            "sbg:y": 221.8402609631974,
            "inputs": [
                {
                    "default": "out",
                    "id": "#sort_bam.prefix"
                },
                {
                    "id": "#sort_bam.input_bam",
                    "source": [
                        "#bwa_mem.out_bam"
                    ]
                }
            ],
            "sbg:x": 401.11108336036625,
            "run": {
                "sbg:latestRevision": 3,
                "id": "4dn-dcic/dev/sort-bam/3",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 2,
                        "mem": 4000
                    },
                    "inputs": {
                        "input_bam": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_bam.ext"
                        },
                        "prefix": "prefix-string-value"
                    }
                },
                "stdout": "",
                "stdin": "",
                "sbg:modifiedOn": 1478225129,
                "sbg:project": "4dn-dcic/dev",
                "y": 221.8402609631974,
                "sbg:createdOn": 1478224605,
                "sbg:id": "4dn-dcic/dev/sort-bam/3",
                "hints": [
                    {
                        "class": "sbg:CPURequirement",
                        "value": 2
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 4000
                    },
                    {
                        "dockerImageId": "",
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/sort-bam:v1"
                    }
                ],
                "sbg:createdBy": "duplexa",
                "sbg:modifiedBy": "duplexa",
                "x": 401.11108336036625,
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:revision": 3,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.sorted.bam.bai"
                        },
                        "sbg:fileTypes": "BAI",
                        "id": "#out_sorted_bam_index",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": "*.sorted.bam"
                        },
                        "sbg:fileTypes": "BAM",
                        "id": "#out_sorted_bam",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:cmdPreview": "run.sh",
                "successCodes": [],
                "class": "CommandLineTool",
                "baseCommand": [
                    "run.sh"
                ],
                "label": "sort-bam",
                "arguments": [],
                "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
                "requirements": [],
                "sbg:image_url": null,
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "id": "#prefix",
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "required": false,
                        "sbg:fileTypes": "BAM",
                        "id": "#input_bam",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    }
                ],
                "sbg:sbgMaintained": false,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1478224605,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1478224740,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1478224969,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1478225129,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
                "temporaryFailCodes": []
            },
            "id": "#sort_bam",
            "outputs": [
                {
                    "id": "#sort_bam.out_sorted_bam_index"
                },
                {
                    "id": "#sort_bam.out_sorted_bam"
                }
            ]
        },
        {
            "sbg:y": 317.3958651267355,
            "inputs": [
                {
                    "default": "out",
                    "id": "#bam2pairs.out_prefix"
                },
                {
                    "id": "#bam2pairs.input_bam",
                    "source": [
                        "#sort_bam.out_sorted_bam"
                    ]
                }
            ],
            "sbg:x": 676.0912355562949,
            "run": {
                "sbg:latestRevision": 2,
                "id": "4dn-dcic/dev/bam2pairs/2",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "input_bam": {
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_bam.ext"
                        },
                        "out_prefix": "out_prefix-string-value"
                    }
                },
                "stdout": "",
                "stdin": "",
                "sbg:modifiedOn": 1478233222,
                "sbg:project": "4dn-dcic/dev",
                "y": 317.3958651267355,
                "sbg:createdOn": 1478232564,
                "sbg:id": "4dn-dcic/dev/bam2pairs/2",
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
                        "dockerImageId": "",
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/bam2pairs:v1"
                    }
                ],
                "sbg:createdBy": "duplexa",
                "sbg:modifiedBy": "duplexa",
                "x": 676.0912355562949,
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:revision": 2,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz.px2"
                        },
                        "sbg:fileTypes": "PX2",
                        "id": "#out_pairs_index",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz"
                        },
                        "sbg:fileTypes": "GZ",
                        "id": "#out_pairs",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
                "successCodes": [],
                "class": "CommandLineTool",
                "baseCommand": [
                    "run.sh"
                ],
                "label": "bam2pairs",
                "arguments": [],
                "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
                "requirements": [],
                "sbg:image_url": null,
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "id": "#out_prefix",
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "required": true,
                        "sbg:fileTypes": "BAM",
                        "id": "#input_bam",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    }
                ],
                "sbg:sbgMaintained": false,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1478232564,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1478232733,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1478233222,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
                "temporaryFailCodes": []
            },
            "id": "#bam2pairs",
            "outputs": [
                {
                    "id": "#bam2pairs.out_pairs_index"
                },
                {
                    "id": "#bam2pairs.out_pairs"
                }
            ]
        }
    ],
    "sbg:canvas_x": 0,
    "sbg:validationErrors": []
}