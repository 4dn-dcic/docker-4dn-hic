{
    "description": "",
    "requirements": [],
    "sbg:canvas_x": 225,
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_y": -43,
    "label": "Hi-C_processing_partA_Juicer",
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta-juicer/5",
    "sbg:modifiedBy": "4dn-dcic",
    "steps": [
        {
            "sbg:x": 381.6666833559674,
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
            "sbg:y": 349.42709947004937,
            "id": "#juicer",
            "run": {
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 12000,
                        "cpu": 8
                    },
                    "inputs": {
                        "input_fastq1": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_fastq1.ext",
                            "secondaryFiles": []
                        },
                        "input_fastq2": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_fastq2.ext",
                            "secondaryFiles": []
                        },
                        "restriction_file": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/restriction_file.ext",
                            "secondaryFiles": []
                        },
                        "outdir": "outdir-string-value",
                        "chromsizes_file": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/chromsizes_file.ext",
                            "secondaryFiles": []
                        },
                        "bwaIndex": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/bwaIndex.ext",
                            "secondaryFiles": []
                        },
                        "reference_fasta": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/reference_fasta.ext",
                            "secondaryFiles": []
                        }
                    }
                },
                "arguments": [],
                "sbg:modifiedBy": "4dn-dcic",
                "cwlVersion": "sbg:draft-2",
                "sbg:project": "4dn-dcic/dev",
                "successCodes": [],
                "sbg:revision": 6,
                "label": "juicer",
                "sbg:id": "4dn-dcic/dev/juicer/6",
                "x": 381.6666833559674,
                "temporaryFailCodes": [],
                "id": "4dn-dcic/dev/juicer/6",
                "description": "",
                "stdin": "",
                "sbg:validationErrors": [],
                "sbg:createdBy": "4dn-dcic",
                "inputs": [
                    {
                        "required": false,
                        "id": "#restriction_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "position": 6,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "required": false,
                        "id": "#reference_fasta",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
                        "inputBinding": {
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "\".\"",
                        "id": "#outdir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "position": 7,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "required": false,
                        "id": "#input_fastq2",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "required": false,
                        "id": "#input_fastq1",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "required": false,
                        "id": "#chromsizes_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "position": 5,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "required": false,
                        "id": "#bwaIndex",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "BWAINDEX.TGZ",
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    }
                ],
                "class": "CommandLineTool",
                "sbg:modifiedOn": 1495813869,
                "sbg:createdOn": 1495727497,
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
                "baseCommand": [
                    "run-juicer.sh"
                ],
                "sbg:sbgMaintained": false,
                "sbg:cmdPreview": "run-juicer.sh",
                "sbg:projectName": "Dev",
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "merged_nodups.txt"
                        },
                        "id": "#merged_nodups",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "requirements": [],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
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
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v13"
                    }
                ],
                "stdout": "",
                "sbg:image_url": null,
                "y": 349.42709947004937,
                "sbg:latestRevision": 6
            }
        },
        {
            "sbg:x": 665.0000000000003,
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
            "sbg:y": 407.7604166666669,
            "id": "#juicer2pairs",
            "run": {
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    },
                    "inputs": {
                        "chromsize": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/chromsize.ext",
                            "secondaryFiles": []
                        },
                        "outprefix": "outprefix-string-value",
                        "input_merged_nodups": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_merged_nodups.ext",
                            "secondaryFiles": []
                        },
                        "nsplit": 8
                    }
                },
                "arguments": [],
                "sbg:modifiedBy": "4dn-dcic",
                "cwlVersion": "sbg:draft-2",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/juicer2pairs/1",
                "sbg:project": "4dn-dcic/dev",
                "successCodes": [],
                "sbg:revision": 1,
                "label": "juicer2pairs",
                "sbg:id": "4dn-dcic/dev/juicer2pairs/1",
                "x": 665.0000000000003,
                "temporaryFailCodes": [],
                "id": "4dn-dcic/dev/juicer2pairs/1",
                "description": "",
                "stdin": "",
                "sbg:validationErrors": [],
                "sbg:createdBy": "4dn-dcic",
                "inputs": [
                    {
                        "sbg:toolDefaultValue": "out",
                        "id": "#outprefix",
                        "required": false,
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "100",
                        "required": false,
                        "sbg:includeInPorts": false,
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "prefix": "-s"
                        },
                        "id": "#nsplit",
                        "sbg:stageInput": null,
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "required": false,
                        "id": "#input_merged_nodups",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".TXT",
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    },
                    {
                        "required": false,
                        "id": "#chromsize",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        }
                    }
                ],
                "class": "CommandLineTool",
                "sbg:modifiedOn": 1495826456,
                "sbg:createdOn": 1495826137,
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
                "baseCommand": [
                    "merged_nodup2pairs.pl"
                ],
                "sbg:sbgMaintained": false,
                "sbg:cmdPreview": "merged_nodup2pairs.pl",
                "sbg:projectName": "Dev",
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz.px2"
                        },
                        "id": "#out_pairs_px",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".PX2"
                    },
                    {
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz"
                        },
                        "id": "#out_pairs",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".PAIRS.GZ"
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "requirements": [],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
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
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v13"
                    }
                ],
                "stdout": "",
                "sbg:image_url": null,
                "y": 407.7604166666669,
                "sbg:latestRevision": 1
            }
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta-juicer/5/raw/",
    "sbg:project": "4dn-dcic/dev",
    "sbg:validationErrors": [],
    "sbg:createdBy": "4dn-dcic",
    "hints": [],
    "inputs": [
        {
            "sbg:x": -79.33332717418662,
            "label": "fastq1",
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "sbg:y": 140.66383514128128,
            "id": "#fastq1",
            "type": [
                "File"
            ]
        },
        {
            "sbg:x": 24.555563087816765,
            "label": "fastq2",
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "sbg:y": 193.10828503403184,
            "id": "#fastq2",
            "type": [
                "File"
            ]
        },
        {
            "sbg:x": -11.111108400203499,
            "label": "bwa_index",
            "sbg:fileTypes": "BWAINDEX.TGZ",
            "sbg:y": 462.3305623795146,
            "id": "#bwa_index",
            "type": [
                "File"
            ]
        },
        {
            "sbg:x": -99.99998479419224,
            "label": "chrsizes",
            "sbg:fileTypes": ".CHROM.SIZES",
            "sbg:y": 554.9952898421001,
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:x": -113.33335151937345,
            "label": "reference_fasta",
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
            "sbg:y": 394.9952658280505,
            "id": "#reference_fasta",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 294.99526332484334,
            "id": "#restriction_file",
            "label": "restriction_file",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": -35.00001758999382
        },
        {
            "sbg:toolDefaultValue": "100",
            "sbg:suggestedValue": 100,
            "sbg:includeInPorts": false,
            "required": false,
            "id": "#nsplit",
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:modifiedOn": 1495833605,
    "sbg:createdOn": 1495645271,
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
    "sbg:sbgMaintained": false,
    "sbg:projectName": "Dev",
    "outputs": [
        {
            "required": false,
            "label": "out_pairs",
            "sbg:includeInPorts": true,
            "sbg:fileTypes": ".PAIRS.GZ",
            "sbg:x": 1135.1589554743873,
            "sbg:y": 433.94532003450297,
            "id": "#out_pairs",
            "source": [
                "#juicer2pairs.out_pairs"
            ],
            "type": [
                "null",
                "File"
            ]
        },
        {
            "required": false,
            "label": "out_pairs_index",
            "sbg:includeInPorts": true,
            "sbg:fileTypes": ".PX2",
            "sbg:x": 1156.8454639320414,
            "sbg:y": 230.81040345869056,
            "id": "#out_pairs_index",
            "source": [
                "#juicer2pairs.out_pairs_px"
            ],
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:canvas_zoom": 0.5999999999999996,
    "class": "Workflow",
    "sbg:revision": 5,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta-juicer/5.png",
    "sbg:latestRevision": 27
}