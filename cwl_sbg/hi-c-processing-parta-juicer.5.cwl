{
    "sbg:latestRevision": 27,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta-juicer/5.png",
    "sbg:canvas_y": -43,
    "sbg:project": "4dn-dcic/dev",
    "sbg:revision": 5,
    "sbg:modifiedOn": 1495833605,
    "steps": [
        {
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ],
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
            ],
            "id": "#juicer",
            "sbg:y": 349.42709947004937,
            "run": {
                "sbg:latestRevision": 6,
                "stdout": "",
                "sbg:image_url": null,
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:project": "4dn-dcic/dev",
                "sbg:revision": 6,
                "temporaryFailCodes": [],
                "sbg:modifiedOn": 1495813869,
                "y": 349.42709947004937,
                "sbg:createdBy": "4dn-dcic",
                "inputs": [
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 6
                        },
                        "required": false,
                        "id": "#restriction_file",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 4
                        },
                        "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
                        "required": false,
                        "id": "#reference_fasta",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:toolDefaultValue": "\".\"",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 7
                        },
                        "id": "#outdir",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "required": false,
                        "id": "#input_fastq2",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        },
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "required": false,
                        "id": "#input_fastq1",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 5
                        },
                        "required": false,
                        "id": "#chromsizes_file",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        },
                        "sbg:fileTypes": "BWAINDEX.TGZ",
                        "required": false,
                        "id": "#bwaIndex",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "id": "4dn-dcic/dev/juicer/6",
                "successCodes": [],
                "arguments": [],
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
                        "dockerPull": "duplexa/4dn-hic:v13",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:cmdPreview": "run-juicer.sh",
                "description": "",
                "sbg:sbgMaintained": false,
                "x": 381.6666833559674,
                "baseCommand": [
                    "run-juicer.sh"
                ],
                "sbg:job": {
                    "inputs": {
                        "reference_fasta": {
                            "path": "/path/to/reference_fasta.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "restriction_file": {
                            "path": "/path/to/restriction_file.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "chromsizes_file": {
                            "path": "/path/to/chromsizes_file.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "input_fastq2": {
                            "path": "/path/to/input_fastq2.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "input_fastq1": {
                            "path": "/path/to/input_fastq1.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "outdir": "outdir-string-value",
                        "bwaIndex": {
                            "path": "/path/to/bwaIndex.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 12000
                    }
                },
                "sbg:id": "4dn-dcic/dev/juicer/6",
                "sbg:validationErrors": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495727497
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495727990
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495730389
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495737299
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495811058
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495813279
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495813869
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "label": "juicer",
                "requirements": [],
                "sbg:createdOn": 1495727497,
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
                "sbg:projectName": "Dev",
                "class": "CommandLineTool",
                "cwlVersion": "sbg:draft-2",
                "stdin": ""
            },
            "sbg:x": 381.6666833559674
        },
        {
            "outputs": [
                {
                    "id": "#juicer2pairs.out_pairs_px"
                },
                {
                    "id": "#juicer2pairs.out_pairs"
                }
            ],
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
            ],
            "id": "#juicer2pairs",
            "sbg:y": 407.7604166666669,
            "run": {
                "sbg:latestRevision": 1,
                "stdout": "",
                "sbg:image_url": null,
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:project": "4dn-dcic/dev",
                "sbg:revision": 1,
                "temporaryFailCodes": [],
                "sbg:modifiedOn": 1495826456,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "y": 407.7604166666669,
                "sbg:createdBy": "4dn-dcic",
                "inputs": [
                    {
                        "sbg:toolDefaultValue": "out",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 4
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix",
                        "required": false
                    },
                    {
                        "sbg:toolDefaultValue": "100",
                        "id": "#nsplit",
                        "sbg:stageInput": null,
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "prefix": "-s",
                            "position": 1
                        },
                        "sbg:includeInPorts": false,
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "sbg:fileTypes": ".TXT",
                        "required": false,
                        "id": "#input_merged_nodups",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        },
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "required": false,
                        "id": "#chromsize",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "id": "4dn-dcic/dev/juicer2pairs/1",
                "successCodes": [],
                "arguments": [],
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
                        "dockerPull": "duplexa/4dn-hic:v13",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:cmdPreview": "merged_nodup2pairs.pl",
                "description": "",
                "sbg:sbgMaintained": false,
                "x": 665.0000000000003,
                "baseCommand": [
                    "merged_nodup2pairs.pl"
                ],
                "sbg:job": {
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "chromsize": {
                            "path": "/path/to/chromsize.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "input_merged_nodups": {
                            "path": "/path/to/input_merged_nodups.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "nsplit": 8
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "sbg:id": "4dn-dcic/dev/juicer2pairs/1",
                "sbg:validationErrors": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495826137
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495826456
                    }
                ],
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/juicer2pairs/1",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "label": "juicer2pairs",
                "requirements": [],
                "sbg:createdOn": 1495826137,
                "outputs": [
                    {
                        "sbg:fileTypes": ".PX2",
                        "id": "#out_pairs_px",
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz.px2"
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": ".PAIRS.GZ",
                        "id": "#out_pairs",
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz"
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:projectName": "Dev",
                "class": "CommandLineTool",
                "cwlVersion": "sbg:draft-2",
                "stdin": ""
            },
            "sbg:x": 665.0000000000003
        }
    ],
    "sbg:createdBy": "4dn-dcic",
    "inputs": [
        {
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "label": "fastq1",
            "id": "#fastq1",
            "sbg:x": -79.33332717418662,
            "sbg:y": 140.66383514128128,
            "type": [
                "File"
            ]
        },
        {
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "label": "fastq2",
            "id": "#fastq2",
            "sbg:x": 24.555563087816765,
            "sbg:y": 193.10828503403184,
            "type": [
                "File"
            ]
        },
        {
            "sbg:fileTypes": "BWAINDEX.TGZ",
            "label": "bwa_index",
            "id": "#bwa_index",
            "sbg:x": -11.111108400203499,
            "sbg:y": 462.3305623795146,
            "type": [
                "File"
            ]
        },
        {
            "sbg:fileTypes": ".CHROM.SIZES",
            "label": "chrsizes",
            "id": "#chrsizes",
            "sbg:x": -99.99998479419224,
            "sbg:y": 554.9952898421001,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
            "label": "reference_fasta",
            "id": "#reference_fasta",
            "sbg:x": -113.33335151937345,
            "sbg:y": 394.9952658280505,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 294.99526332484334,
            "id": "#restriction_file",
            "label": "restriction_file",
            "sbg:x": -35.00001758999382,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:toolDefaultValue": "100",
            "id": "#nsplit",
            "sbg:stageInput": null,
            "sbg:suggestedValue": 100,
            "required": false,
            "sbg:includeInPorts": false,
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta-juicer/5/raw/",
    "sbg:canvas_zoom": 0.5999999999999996,
    "sbg:canvas_x": 225,
    "hints": [],
    "class": "Workflow",
    "description": "",
    "sbg:sbgMaintained": false,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta-juicer/5",
    "sbg:validationErrors": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of 4dn-dcic/dev/hi-c-processing-parta/20",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495645271
        },
        {
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495645459
        },
        {
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833499
        },
        {
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833561
        },
        {
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833566
        },
        {
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833605
        },
        {
            "sbg:revision": 6,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495836706
        },
        {
            "sbg:revision": 7,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496170708
        },
        {
            "sbg:revision": 8,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496431004
        },
        {
            "sbg:revision": 9,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497473502
        },
        {
            "sbg:revision": 10,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497473555
        },
        {
            "sbg:revision": 11,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497538622
        },
        {
            "sbg:revision": 12,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497641679
        },
        {
            "sbg:revision": 13,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497643656
        },
        {
            "sbg:revision": 14,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497983491
        },
        {
            "sbg:revision": 15,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1498165262
        },
        {
            "sbg:revision": 16,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1498230882
        },
        {
            "sbg:revision": 17,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1498844973
        },
        {
            "sbg:revision": 18,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499287014
        },
        {
            "sbg:revision": 19,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499287106
        },
        {
            "sbg:revision": 20,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499967331
        },
        {
            "sbg:revision": 21,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499967351
        },
        {
            "sbg:revision": 22,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499976565
        },
        {
            "sbg:revision": 23,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054122
        },
        {
            "sbg:revision": 24,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054228
        },
        {
            "sbg:revision": 25,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054337
        },
        {
            "sbg:revision": 26,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054494
        },
        {
            "sbg:revision": 27,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054599
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "label": "Hi-C_processing_partA_Juicer",
    "requirements": [],
    "sbg:createdOn": 1495645271,
    "outputs": [
        {
            "sbg:fileTypes": ".PAIRS.GZ",
            "id": "#out_pairs",
            "label": "out_pairs",
            "required": false,
            "sbg:y": 433.94532003450297,
            "sbg:x": 1135.1589554743873,
            "source": [
                "#juicer2pairs.out_pairs"
            ],
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:fileTypes": ".PX2",
            "id": "#out_pairs_index",
            "label": "out_pairs_index",
            "required": false,
            "sbg:y": 230.81040345869056,
            "sbg:x": 1156.8454639320414,
            "source": [
                "#juicer2pairs.out_pairs_px"
            ],
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:projectName": "Dev",
    "cwlVersion": "sbg:draft-2"
}