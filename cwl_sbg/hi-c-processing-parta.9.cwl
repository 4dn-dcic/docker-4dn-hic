{
    "label": "Hi-C_processing_partA",
    "sbg:sbgMaintained": false,
    "requirements": [],
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta/9",
    "sbg:modifiedBy": "duplexa",
    "description": "",
    "sbg:canvas_y": 0,
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1478223788,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1478223860,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1478224851,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1478225009,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1478232847,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1478233263,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedOn": 1478292951,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedOn": 1481754043,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedOn": 1481754058,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedOn": 1481754095,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta/9/raw/",
    "sbg:latestRevision": 9,
    "cwlVersion": "sbg:draft-2",
    "sbg:project": "4dn-dcic/dev",
    "hints": [],
    "steps": [
        {
            "sbg:x": 231,
            "sbg:y": 154.65625,
            "id": "#bwa_mem",
            "run": {
                "stdout": "",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/bwa-mem/8",
                "sbg:sbgMaintained": false,
                "requirements": [],
                "sbg:id": "4dn-dcic/dev/bwa-mem/8",
                "sbg:modifiedBy": "duplexa",
                "description": "Alignment of a pair of fastq files with bwa mem for Hi-C data.",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 6000
                    },
                    "inputs": {
                        "bwa_index": {
                            "secondaryFiles": [],
                            "path": "/path/to/bwa_index.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "fastq1": {
                            "secondaryFiles": [],
                            "path": "/path/to/fastq1.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "fastq2": {
                            "secondaryFiles": [],
                            "path": "/path/to/fastq2.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "nThreads": 9,
                        "prefix": "prefix-string-value"
                    }
                },
                "stdin": "",
                "sbg:revision": 8,
                "sbg:cmdPreview": "run.sh  /path/to/fastq1.ext  /path/to/fastq2.ext  /path/to/bwa_index.ext  9",
                "sbg:contributors": [
                    "duplexa"
                ],
                "id": "4dn-dcic/dev/bwa-mem/8",
                "y": 154.65625,
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:latestRevision": 8,
                "cwlVersion": "sbg:draft-2",
                "temporaryFailCodes": [],
                "sbg:project": "4dn-dcic/dev",
                "hints": [
                    {
                        "value": 6000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "dockerPull": "duplexa/bwa-mem:v1",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    },
                    {
                        "value": 4,
                        "class": "sbg:CPURequirement"
                    }
                ],
                "sbg:validationErrors": [],
                "x": 231,
                "successCodes": [],
                "sbg:createdBy": "duplexa",
                "sbg:modifiedOn": 1478217741,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.bam"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#out_bam",
                        "sbg:fileTypes": "BAM"
                    }
                ],
                "arguments": [],
                "sbg:image_url": null,
                "label": "bwa-mem",
                "sbg:createdOn": 1478104724,
                "class": "CommandLineTool",
                "inputs": [
                    {
                        "id": "#prefix",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 4
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "required": false,
                        "sbg:toolDefaultValue": "out"
                    },
                    {
                        "type": [
                            "int"
                        ],
                        "id": "#nThreads",
                        "sbg:toolDefaultValue": "4",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 5
                        },
                        "required": true,
                        "sbg:includeInPorts": true
                    },
                    {
                        "id": "#fastq2",
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        }
                    },
                    {
                        "id": "#fastq1",
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    },
                    {
                        "id": "#bwa_index",
                        "sbg:fileTypes": "TGZ",
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        }
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1478104724,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1478105028,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1478105153,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1478105188,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1478110115,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1478110198,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1478110296,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1478111709,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1478217741,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    }
                ]
            },
            "inputs": [
                {
                    "default": "out",
                    "id": "#bwa_mem.prefix"
                },
                {
                    "source": [
                        "#nThreads"
                    ],
                    "id": "#bwa_mem.nThreads"
                },
                {
                    "source": [
                        "#fastq2"
                    ],
                    "id": "#bwa_mem.fastq2"
                },
                {
                    "source": [
                        "#fastq1"
                    ],
                    "id": "#bwa_mem.fastq1"
                },
                {
                    "source": [
                        "#bwa_index"
                    ],
                    "id": "#bwa_mem.bwa_index"
                }
            ],
            "outputs": [
                {
                    "id": "#bwa_mem.out_bam"
                }
            ]
        },
        {
            "sbg:x": 401.11108336036625,
            "sbg:y": 221.8402609631974,
            "id": "#sort_bam",
            "run": {
                "sbg:project": "4dn-dcic/dev",
                "sbg:sbgMaintained": false,
                "requirements": [],
                "sbg:id": "4dn-dcic/dev/sort-bam/3",
                "sbg:modifiedBy": "duplexa",
                "description": "Produces a coordinate-sorted bam file and its index, using samtools 1.2.",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 2,
                        "mem": 4000
                    },
                    "inputs": {
                        "input_bam": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_bam.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "prefix": "prefix-string-value"
                    }
                },
                "stdin": "",
                "stdout": "",
                "sbg:cmdPreview": "run.sh",
                "sbg:contributors": [
                    "duplexa"
                ],
                "id": "4dn-dcic/dev/sort-bam/3",
                "y": 221.8402609631974,
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:latestRevision": 3,
                "cwlVersion": "sbg:draft-2",
                "temporaryFailCodes": [],
                "label": "sort-bam",
                "hints": [
                    {
                        "value": 2,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": 4000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "dockerPull": "duplexa/sort-bam:v1",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:validationErrors": [],
                "x": 401.11108336036625,
                "successCodes": [],
                "sbg:createdBy": "duplexa",
                "sbg:modifiedOn": 1478225129,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.sorted.bam.bai"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#out_sorted_bam_index",
                        "sbg:fileTypes": "BAI"
                    },
                    {
                        "outputBinding": {
                            "glob": "*.sorted.bam"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#out_sorted_bam",
                        "sbg:fileTypes": "BAM"
                    }
                ],
                "arguments": [],
                "sbg:image_url": null,
                "sbg:revision": 3,
                "sbg:createdOn": 1478224605,
                "class": "CommandLineTool",
                "inputs": [
                    {
                        "id": "#prefix",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out"
                    },
                    {
                        "id": "#input_bam",
                        "sbg:fileTypes": "BAM",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1478224605,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1478224740,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1478224969,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1478225129,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    }
                ]
            },
            "inputs": [
                {
                    "default": "out",
                    "id": "#sort_bam.prefix"
                },
                {
                    "source": [
                        "#bwa_mem.out_bam"
                    ],
                    "id": "#sort_bam.input_bam"
                }
            ],
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
            "sbg:x": 676.0912355562949,
            "sbg:y": 317.3958651267355,
            "id": "#bam2pairs",
            "run": {
                "sbg:project": "4dn-dcic/dev",
                "sbg:sbgMaintained": false,
                "requirements": [],
                "sbg:id": "4dn-dcic/dev/bam2pairs/2",
                "sbg:modifiedBy": "duplexa",
                "description": "Direct conversion of bam to an Upper-triangular, chromosome-block-sorted (Uc) pairs file, gzipped and pairix-indexed.",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "input_bam": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_bam.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "out_prefix": "out_prefix-string-value"
                    }
                },
                "stdin": "",
                "stdout": "",
                "sbg:cmdPreview": "run.sh  /path/to/input_bam.ext",
                "sbg:contributors": [
                    "duplexa"
                ],
                "id": "4dn-dcic/dev/bam2pairs/2",
                "y": 317.3958651267355,
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:latestRevision": 2,
                "cwlVersion": "sbg:draft-2",
                "temporaryFailCodes": [],
                "label": "bam2pairs",
                "hints": [
                    {
                        "value": 1,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": 1000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "dockerPull": "duplexa/bam2pairs:v1",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:validationErrors": [],
                "x": 676.0912355562949,
                "successCodes": [],
                "sbg:createdBy": "duplexa",
                "sbg:modifiedOn": 1478233222,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz.px2"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#out_pairs_index",
                        "sbg:fileTypes": "PX2"
                    },
                    {
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#out_pairs",
                        "sbg:fileTypes": "GZ"
                    }
                ],
                "arguments": [],
                "sbg:image_url": null,
                "sbg:revision": 2,
                "sbg:createdOn": 1478232564,
                "class": "CommandLineTool",
                "inputs": [
                    {
                        "id": "#out_prefix",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out"
                    },
                    {
                        "id": "#input_bam",
                        "sbg:fileTypes": "BAM",
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1478232564,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1478232733,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1478233222,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    }
                ]
            },
            "inputs": [
                {
                    "default": "out",
                    "id": "#bam2pairs.out_prefix"
                },
                {
                    "source": [
                        "#sort_bam.out_sorted_bam"
                    ],
                    "id": "#bam2pairs.input_bam"
                }
            ],
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
    "sbg:validationErrors": [],
    "sbg:canvas_x": 0,
    "sbg:createdBy": "duplexa",
    "sbg:createdOn": 1478223788,
    "outputs": [
        {
            "label": "out_sorted_bam",
            "source": [
                "#sort_bam.out_sorted_bam"
            ],
            "sbg:x": 855.5554792557249,
            "sbg:y": 58.88573129685837,
            "id": "#out_sorted_bam",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "BAM",
            "ff:format": "bam"
        },
        {
            "label": "out_sorted_bam_index",
            "source": [
                "#sort_bam.out_sorted_bam_index"
            ],
            "sbg:x": 856.6666312335454,
            "sbg:y": 193.3301831352219,
            "id": "#out_sorted_bam_index",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "BAI",
            "ff:format": "bai"
        },
        {
            "label": "out_pairs",
            "source": [
                "#bam2pairs.out_pairs"
            ],
            "sbg:x": 1036.8253666408423,
            "sbg:y": 300.8499890147402,
            "id": "#out_pairs",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "GZ",
            "ff:format": "pairs"
        },
        {
            "label": "out_pairs_index",
            "source": [
                "#bam2pairs.out_pairs_index"
            ],
            "sbg:x": 920.1785085371482,
            "sbg:y": 399.3817399246058,
            "id": "#out_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "PX2",
            "ff:format": "pairs_px2"
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta/9.png",
    "sbg:revision": 9,
    "sbg:modifiedOn": 1481754095,
    "inputs": [
        {
            "label": "fastq1",
            "sbg:x": 64,
            "sbg:y": 68.99716186523438,
            "id": "#fastq1",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "ff:format": "fastq"
        },
        {
            "label": "fastq2",
            "sbg:x": 69.55555386013455,
            "sbg:y": 201.44160082612672,
            "id": "#fastq2",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "ff:format": "fastq"
        },
        {
            "label": "bwa_index",
            "sbg:x": 62.222220102945975,
            "sbg:y": 325.6638200813622,
            "id": "#bwa_index",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "TGZ",
            "ff:format": "bwaIndex"
        },
        {
            "label": "nThreads",
            "sbg:x": 164.28570086615426,
            "sbg:y": 29.995937302708587,
            "id": "#nThreads",
            "type": [
                "int"
            ],
            "sbg:includeInPorts": true
        }
    ],
    "sbg:canvas_zoom": 0.6999999999999997,
    "class": "Workflow"
}
