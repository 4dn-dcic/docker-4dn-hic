{
    "sbg:modifiedOn": 1495833605,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta-juicer/5/raw/",
    "hints": [],
    "sbg:canvas_y": -43,
    "sbg:createdBy": "4dn-dcic",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:validationErrors": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:latestRevision": 27,
    "class": "Workflow",
    "requirements": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta-juicer/5",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta-juicer/5.png",
    "sbg:canvas_zoom": 0.5999999999999996,
    "sbg:canvas_x": 225,
    "inputs": [
        {
            "id": "#fastq1",
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "type": [
                "File"
            ],
            "sbg:y": 140.66383514128128,
            "sbg:x": -79.33332717418662,
            "label": "fastq1"
        },
        {
            "id": "#fastq2",
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "type": [
                "File"
            ],
            "sbg:y": 193.10828503403184,
            "sbg:x": 24.555563087816765,
            "label": "fastq2"
        },
        {
            "id": "#bwa_index",
            "sbg:fileTypes": "BWAINDEX.TGZ",
            "type": [
                "File"
            ],
            "sbg:y": 462.3305623795146,
            "sbg:x": -11.111108400203499,
            "label": "bwa_index"
        },
        {
            "id": "#chrsizes",
            "sbg:fileTypes": ".CHROM.SIZES",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 554.9952898421001,
            "sbg:x": -99.99998479419224,
            "label": "chrsizes"
        },
        {
            "id": "#reference_fasta",
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 394.9952658280505,
            "sbg:x": -113.33335151937345,
            "label": "reference_fasta"
        },
        {
            "sbg:y": 294.99526332484334,
            "id": "#restriction_file",
            "sbg:x": -35.00001758999382,
            "label": "restriction_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#nsplit",
            "sbg:toolDefaultValue": "100",
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "required": false,
            "sbg:includeInPorts": false,
            "sbg:suggestedValue": 100
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1495645271,
            "sbg:revisionNotes": "Copy of 4dn-dcic/dev/hi-c-processing-parta/20"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1495645459,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1495833499,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1495833561,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1495833566,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1495833605,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1495836706,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1496170708,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1496431004,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 9,
            "sbg:modifiedOn": 1497473502,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 10,
            "sbg:modifiedOn": 1497473555,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 11,
            "sbg:modifiedOn": 1497538622,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 12,
            "sbg:modifiedOn": 1497641679,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 13,
            "sbg:modifiedOn": 1497643656,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 14,
            "sbg:modifiedOn": 1497983491,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 15,
            "sbg:modifiedOn": 1498165262,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 16,
            "sbg:modifiedOn": 1498230882,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 17,
            "sbg:modifiedOn": 1498844973,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 18,
            "sbg:modifiedOn": 1499287014,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 19,
            "sbg:modifiedOn": 1499287106,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 20,
            "sbg:modifiedOn": 1499967331,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 21,
            "sbg:modifiedOn": 1499967351,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 22,
            "sbg:modifiedOn": 1499976565,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 23,
            "sbg:modifiedOn": 1500054122,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 24,
            "sbg:modifiedOn": 1500054228,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 25,
            "sbg:modifiedOn": 1500054337,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 26,
            "sbg:modifiedOn": 1500054494,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 27,
            "sbg:modifiedOn": 1500054599,
            "sbg:revisionNotes": null
        }
    ],
    "steps": [
        {
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
                    "default": ".",
                    "id": "#juicer.outdir"
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
            ],
            "id": "#juicer",
            "sbg:y": 349.42709947004937,
            "run": {
                "baseCommand": [
                    "run-juicer.sh"
                ],
                "sbg:modifiedOn": 1495813869,
                "id": "4dn-dcic/dev/juicer/6",
                "sbg:cmdPreview": "run-juicer.sh",
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
                "sbg:job": {
                    "inputs": {
                        "outdir": "outdir-string-value",
                        "bwaIndex": {
                            "path": "/path/to/bwaIndex.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "reference_fasta": {
                            "path": "/path/to/reference_fasta.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "restriction_file": {
                            "path": "/path/to/restriction_file.ext",
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
                        "input_fastq1": {
                            "path": "/path/to/input_fastq1.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "input_fastq2": {
                            "path": "/path/to/input_fastq2.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 12000
                    }
                },
                "inputs": [
                    {
                        "id": "#restriction_file",
                        "required": false,
                        "inputBinding": {
                            "position": 6,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#reference_fasta",
                        "required": false,
                        "inputBinding": {
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#outdir",
                        "sbg:toolDefaultValue": "\".\"",
                        "inputBinding": {
                            "position": 7,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#input_fastq2",
                        "required": false,
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#input_fastq1",
                        "required": false,
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#chromsizes_file",
                        "required": false,
                        "inputBinding": {
                            "position": 5,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#bwaIndex",
                        "required": false,
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": "BWAINDEX.TGZ",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:validationErrors": [],
                "stdin": "",
                "cwlVersion": "sbg:draft-2",
                "sbg:latestRevision": 6,
                "class": "CommandLineTool",
                "requirements": [],
                "x": 381.6666833559674,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:id": "4dn-dcic/dev/juicer/6",
                "sbg:image_url": null,
                "arguments": [],
                "sbg:createdBy": "4dn-dcic",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495727497,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495727990,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495730389,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495737299,
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495811058,
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495813279,
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495813869,
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null
                    }
                ],
                "successCodes": [],
                "sbg:projectName": "Dev",
                "sbg:createdOn": 1495727497,
                "sbg:modifiedBy": "4dn-dcic",
                "outputs": [
                    {
                        "id": "#merged_nodups",
                        "outputBinding": {
                            "glob": "merged_nodups.txt"
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "temporaryFailCodes": [],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "label": "juicer",
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "sbg:revision": 6,
                "description": "",
                "stdout": "",
                "y": 349.42709947004937
            },
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ],
            "sbg:x": 381.6666833559674
        },
        {
            "inputs": [
                {
                    "default": "out",
                    "id": "#juicer2pairs.outprefix"
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
            ],
            "id": "#juicer2pairs",
            "sbg:y": 407.7604166666669,
            "run": {
                "baseCommand": [
                    "merged_nodup2pairs.pl"
                ],
                "sbg:modifiedOn": 1495826456,
                "id": "4dn-dcic/dev/juicer2pairs/1",
                "sbg:cmdPreview": "merged_nodup2pairs.pl",
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
                "sbg:job": {
                    "inputs": {
                        "chromsize": {
                            "path": "/path/to/chromsize.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "input_merged_nodups": {
                            "path": "/path/to/input_merged_nodups.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "nsplit": 8,
                        "outprefix": "outprefix-string-value"
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "inputs": [
                    {
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out",
                        "required": false,
                        "inputBinding": {
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#nsplit",
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "prefix": "-s"
                        },
                        "sbg:toolDefaultValue": "100",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null,
                        "required": false,
                        "sbg:includeInPorts": false
                    },
                    {
                        "id": "#input_merged_nodups",
                        "required": false,
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": ".TXT",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#chromsize",
                        "required": false,
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:validationErrors": [],
                "stdin": "",
                "cwlVersion": "sbg:draft-2",
                "sbg:latestRevision": 1,
                "class": "CommandLineTool",
                "requirements": [],
                "x": 665.0000000000003,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:id": "4dn-dcic/dev/juicer2pairs/1",
                "sbg:image_url": null,
                "arguments": [],
                "sbg:createdBy": "4dn-dcic",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495826137,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495826456,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    }
                ],
                "successCodes": [],
                "sbg:projectName": "Dev",
                "sbg:createdOn": 1495826137,
                "sbg:modifiedBy": "4dn-dcic",
                "outputs": [
                    {
                        "id": "#out_pairs_px",
                        "sbg:fileTypes": ".PX2",
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz.px2"
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#out_pairs",
                        "sbg:fileTypes": ".PAIRS.GZ",
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz"
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "temporaryFailCodes": [],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/juicer2pairs/1",
                "label": "juicer2pairs",
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "sbg:revision": 1,
                "description": "",
                "stdout": "",
                "y": 407.7604166666669
            },
            "outputs": [
                {
                    "id": "#juicer2pairs.out_pairs_px"
                },
                {
                    "id": "#juicer2pairs.out_pairs"
                }
            ],
            "sbg:x": 665.0000000000003
        }
    ],
    "sbg:createdOn": 1495645271,
    "sbg:modifiedBy": "4dn-dcic",
    "outputs": [
        {
            "id": "#out_pairs",
            "sbg:fileTypes": ".PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 433.94532003450297,
            "required": false,
            "sbg:includeInPorts": true,
            "source": [
                "#juicer2pairs.out_pairs"
            ],
            "label": "out_pairs",
            "sbg:x": 1135.1589554743873
        },
        {
            "id": "#out_pairs_index",
            "sbg:fileTypes": ".PX2",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 230.81040345869056,
            "required": false,
            "sbg:includeInPorts": true,
            "source": [
                "#juicer2pairs.out_pairs_px"
            ],
            "label": "out_pairs_index",
            "sbg:x": 1156.8454639320414
        }
    ],
    "sbg:projectName": "Dev",
    "label": "Hi-C_processing_partA_Juicer",
    "sbg:revision": 5,
    "description": "",
    "sbg:sbgMaintained": false
}