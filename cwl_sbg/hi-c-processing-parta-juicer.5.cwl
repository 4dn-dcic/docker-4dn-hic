{
    "sbg:modifiedOn": 1495833605,
    "sbg:createdOn": 1495645271,
    "steps": [
        {
            "id": "#juicer",
            "sbg:y": 349.42709947004937,
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ],
            "sbg:x": 381.6666833559674,
            "run": {
                "sbg:modifiedOn": 1495813869,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "cwlVersion": "sbg:draft-2",
                "successCodes": [],
                "class": "CommandLineTool",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 12000
                    },
                    "inputs": {
                        "bwaIndex": {
                            "path": "/path/to/bwaIndex.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "chromsizes_file": {
                            "path": "/path/to/chromsizes_file.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "reference_fasta": {
                            "path": "/path/to/reference_fasta.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "outdir": "outdir-string-value",
                        "restriction_file": {
                            "path": "/path/to/restriction_file.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "input_fastq2": {
                            "path": "/path/to/input_fastq2.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "input_fastq1": {
                            "path": "/path/to/input_fastq1.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        }
                    }
                },
                "outputs": [
                    {
                        "id": "#merged_nodups",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "merged_nodups.txt"
                        }
                    }
                ],
                "stdin": "",
                "sbg:cmdPreview": "run-juicer.sh",
                "sbg:image_url": null,
                "label": "juicer",
                "baseCommand": [
                    "run-juicer.sh"
                ],
                "hints": [
                    {
                        "value": 8,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": 12000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v13",
                        "class": "DockerRequirement"
                    }
                ],
                "y": 349.42709947004937,
                "sbg:id": "4dn-dcic/dev/juicer/6",
                "sbg:revision": 6,
                "description": "",
                "sbg:latestRevision": 6,
                "arguments": [],
                "temporaryFailCodes": [],
                "id": "4dn-dcic/dev/juicer/6",
                "sbg:projectName": "Dev",
                "sbg:modifiedBy": "4dn-dcic",
                "requirements": [],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1495727497,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:modifiedOn": 1495727990,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:modifiedOn": 1495730389,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:modifiedOn": 1495737299,
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:modifiedOn": 1495811058,
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:modifiedOn": 1495813279,
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:modifiedOn": 1495813869,
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "sbg:sbgMaintained": false,
                "sbg:createdBy": "4dn-dcic",
                "sbg:project": "4dn-dcic/dev",
                "sbg:createdOn": 1495727497,
                "x": 381.6666833559674,
                "stdout": "",
                "sbg:validationErrors": [],
                "inputs": [
                    {
                        "id": "#restriction_file",
                        "inputBinding": {
                            "position": 6,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#reference_fasta",
                        "inputBinding": {
                            "position": 4,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#outdir",
                        "inputBinding": {
                            "position": 7,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "\".\"",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#input_fastq2",
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#input_fastq1",
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#chromsizes_file",
                        "inputBinding": {
                            "position": 5,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#bwaIndex",
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "sbg:fileTypes": "BWAINDEX.TGZ",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ]
            },
            "inputs": [
                {
                    "id": "#juicer.restriction_file",
                    "source": [
                        "#restriction_file"
                    ]
                },
                {
                    "id": "#juicer.reference_fasta",
                    "source": [
                        "#reference_fasta"
                    ]
                },
                {
                    "id": "#juicer.outdir",
                    "default": "."
                },
                {
                    "id": "#juicer.input_fastq2",
                    "source": [
                        "#fastq2"
                    ]
                },
                {
                    "id": "#juicer.input_fastq1",
                    "source": [
                        "#fastq1"
                    ]
                },
                {
                    "id": "#juicer.chromsizes_file",
                    "source": [
                        "#chrsizes"
                    ]
                },
                {
                    "id": "#juicer.bwaIndex",
                    "source": [
                        "#bwa_index"
                    ]
                }
            ]
        },
        {
            "id": "#juicer2pairs",
            "sbg:y": 407.7604166666669,
            "outputs": [
                {
                    "id": "#juicer2pairs.out_pairs_px"
                },
                {
                    "id": "#juicer2pairs.out_pairs"
                }
            ],
            "sbg:x": 665.0000000000003,
            "run": {
                "sbg:modifiedOn": 1495826456,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "cwlVersion": "sbg:draft-2",
                "successCodes": [],
                "class": "CommandLineTool",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "chromsize": {
                            "path": "/path/to/chromsize.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "input_merged_nodups": {
                            "path": "/path/to/input_merged_nodups.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "nsplit": 8
                    }
                },
                "y": 407.7604166666669,
                "stdin": "",
                "sbg:cmdPreview": "merged_nodup2pairs.pl",
                "sbg:image_url": null,
                "label": "juicer2pairs",
                "baseCommand": [
                    "merged_nodup2pairs.pl"
                ],
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v13",
                        "class": "DockerRequirement"
                    }
                ],
                "outputs": [
                    {
                        "id": "#out_pairs_px",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".PX2",
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz.px2"
                        }
                    },
                    {
                        "id": "#out_pairs",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".PAIRS.GZ",
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz"
                        }
                    }
                ],
                "sbg:id": "4dn-dcic/dev/juicer2pairs/1",
                "sbg:revision": 1,
                "description": "",
                "sbg:latestRevision": 1,
                "arguments": [],
                "temporaryFailCodes": [],
                "id": "4dn-dcic/dev/juicer2pairs/1",
                "sbg:projectName": "Dev",
                "sbg:modifiedBy": "4dn-dcic",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/juicer2pairs/1",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1495826137,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:modifiedOn": 1495826456,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "sbg:sbgMaintained": false,
                "sbg:createdBy": "4dn-dcic",
                "sbg:project": "4dn-dcic/dev",
                "requirements": [],
                "sbg:createdOn": 1495826137,
                "x": 665.0000000000003,
                "stdout": "",
                "sbg:validationErrors": [],
                "inputs": [
                    {
                        "id": "#outprefix",
                        "inputBinding": {
                            "position": 4,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "out",
                        "required": false,
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#nsplit",
                        "sbg:includeInPorts": false,
                        "sbg:stageInput": null,
                        "type": [
                            "null",
                            "int"
                        ],
                        "required": false,
                        "inputBinding": {
                            "prefix": "-s",
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "100"
                    },
                    {
                        "id": "#input_merged_nodups",
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "sbg:fileTypes": ".TXT",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#chromsize",
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ]
            },
            "inputs": [
                {
                    "id": "#juicer2pairs.outprefix",
                    "default": "out"
                },
                {
                    "id": "#juicer2pairs.nsplit",
                    "source": [
                        "#nsplit"
                    ]
                },
                {
                    "id": "#juicer2pairs.input_merged_nodups",
                    "source": [
                        "#juicer.merged_nodups"
                    ]
                },
                {
                    "id": "#juicer2pairs.chromsize",
                    "source": [
                        "#chrsizes"
                    ]
                }
            ]
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "class": "Workflow",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta-juicer/5/raw/",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta-juicer/5.png",
    "sbg:canvas_x": 225,
    "label": "Hi-C_processing_partA_Juicer",
    "hints": [],
    "outputs": [
        {
            "id": "#out_pairs",
            "label": "out_pairs",
            "sbg:includeInPorts": true,
            "sbg:y": 433.94532003450297,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 1135.1589554743873,
            "source": [
                "#juicer2pairs.out_pairs"
            ],
            "required": false,
            "sbg:fileTypes": ".PAIRS.GZ"
        },
        {
            "id": "#out_pairs_index",
            "label": "out_pairs_index",
            "sbg:includeInPorts": true,
            "sbg:y": 230.81040345869056,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 1156.8454639320414,
            "source": [
                "#juicer2pairs.out_pairs_px"
            ],
            "required": false,
            "sbg:fileTypes": ".PX2"
        }
    ],
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta-juicer/5",
    "sbg:revision": 5,
    "description": "",
    "sbg:latestRevision": 27,
    "sbg:canvas_y": -43,
    "sbg:modifiedBy": "4dn-dcic",
    "requirements": [],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:canvas_zoom": 0.5999999999999996,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1495645271,
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of 4dn-dcic/dev/hi-c-processing-parta/20",
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1495645459,
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1495833499,
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1495833561,
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1495833566,
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1495833605,
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1495836706,
            "sbg:revision": 6,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1496170708,
            "sbg:revision": 7,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1496431004,
            "sbg:revision": 8,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1497473502,
            "sbg:revision": 9,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1497473555,
            "sbg:revision": 10,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1497538622,
            "sbg:revision": 11,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1497641679,
            "sbg:revision": 12,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1497643656,
            "sbg:revision": 13,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1497983491,
            "sbg:revision": 14,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1498165262,
            "sbg:revision": 15,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1498230882,
            "sbg:revision": 16,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1498844973,
            "sbg:revision": 17,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1499287014,
            "sbg:revision": 18,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1499287106,
            "sbg:revision": 19,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1499967331,
            "sbg:revision": 20,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1499967351,
            "sbg:revision": 21,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1499976565,
            "sbg:revision": 22,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1500054122,
            "sbg:revision": 23,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1500054228,
            "sbg:revision": 24,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1500054337,
            "sbg:revision": 25,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1500054494,
            "sbg:revision": 26,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1500054599,
            "sbg:revision": 27,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:createdBy": "4dn-dcic",
    "sbg:project": "4dn-dcic/dev",
    "sbg:projectName": "Dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:validationErrors": [],
    "inputs": [
        {
            "id": "#fastq1",
            "label": "fastq1",
            "sbg:y": 140.66383514128128,
            "type": [
                "File"
            ],
            "sbg:x": -79.33332717418662,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ"
        },
        {
            "id": "#fastq2",
            "label": "fastq2",
            "sbg:y": 193.10828503403184,
            "type": [
                "File"
            ],
            "sbg:x": 24.555563087816765,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ"
        },
        {
            "id": "#bwa_index",
            "label": "bwa_index",
            "sbg:y": 462.3305623795146,
            "type": [
                "File"
            ],
            "sbg:x": -11.111108400203499,
            "sbg:fileTypes": "BWAINDEX.TGZ"
        },
        {
            "id": "#chrsizes",
            "label": "chrsizes",
            "sbg:y": 554.9952898421001,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": -99.99998479419224,
            "sbg:fileTypes": ".CHROM.SIZES"
        },
        {
            "id": "#reference_fasta",
            "label": "reference_fasta",
            "sbg:y": 394.9952658280505,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": -113.33335151937345,
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ"
        },
        {
            "label": "restriction_file",
            "id": "#restriction_file",
            "sbg:x": -35.00001758999382,
            "sbg:y": 294.99526332484334,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#nsplit",
            "sbg:includeInPorts": false,
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "required": false,
            "sbg:suggestedValue": 100,
            "sbg:toolDefaultValue": "100"
        }
    ]
}