{
    "sbg:modifiedBy": "4dn-dcic",
    "label": "Hi-C_processing_partA_Juicer",
    "sbg:canvas_zoom": 0.5999999999999996,
    "sbg:projectName": "Dev",
    "sbg:validationErrors": [],
    "sbg:revision": 5,
    "description": "",
    "sbg:latestRevision": 27,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta-juicer/5",
    "class": "Workflow",
    "sbg:createdBy": "4dn-dcic",
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "label": "fastq1",
            "id": "#fastq1",
            "sbg:x": -79.33332717418662,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "type": [
                "File"
            ],
            "sbg:y": 140.66383514128128
        },
        {
            "label": "fastq2",
            "id": "#fastq2",
            "sbg:x": 24.555563087816765,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "type": [
                "File"
            ],
            "sbg:y": 193.10828503403184
        },
        {
            "label": "bwa_index",
            "id": "#bwa_index",
            "sbg:x": -11.111108400203499,
            "sbg:fileTypes": "BWAINDEX.TGZ",
            "type": [
                "File"
            ],
            "sbg:y": 462.3305623795146
        },
        {
            "label": "chrsizes",
            "id": "#chrsizes",
            "sbg:x": -99.99998479419224,
            "sbg:fileTypes": ".CHROM.SIZES",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 554.9952898421001
        },
        {
            "label": "reference_fasta",
            "id": "#reference_fasta",
            "sbg:x": -113.33335151937345,
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 394.9952658280505
        },
        {
            "label": "restriction_file",
            "id": "#restriction_file",
            "sbg:x": -35.00001758999382,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 294.99526332484334
        },
        {
            "required": false,
            "id": "#nsplit",
            "sbg:suggestedValue": 100,
            "sbg:includeInPorts": false,
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "100",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta-juicer/5/raw/",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495645271,
            "sbg:revisionNotes": "Copy of 4dn-dcic/dev/hi-c-processing-parta/20",
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495645459,
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833499,
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833561,
            "sbg:revisionNotes": null,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833566,
            "sbg:revisionNotes": null,
            "sbg:revision": 4
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833605,
            "sbg:revisionNotes": null,
            "sbg:revision": 5
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495836706,
            "sbg:revisionNotes": null,
            "sbg:revision": 6
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496170708,
            "sbg:revisionNotes": null,
            "sbg:revision": 7
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496431004,
            "sbg:revisionNotes": null,
            "sbg:revision": 8
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497473502,
            "sbg:revisionNotes": null,
            "sbg:revision": 9
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497473555,
            "sbg:revisionNotes": null,
            "sbg:revision": 10
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497538622,
            "sbg:revisionNotes": null,
            "sbg:revision": 11
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497641679,
            "sbg:revisionNotes": null,
            "sbg:revision": 12
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497643656,
            "sbg:revisionNotes": null,
            "sbg:revision": 13
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497983491,
            "sbg:revisionNotes": null,
            "sbg:revision": 14
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1498165262,
            "sbg:revisionNotes": null,
            "sbg:revision": 15
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1498230882,
            "sbg:revisionNotes": null,
            "sbg:revision": 16
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1498844973,
            "sbg:revisionNotes": null,
            "sbg:revision": 17
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499287014,
            "sbg:revisionNotes": null,
            "sbg:revision": 18
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499287106,
            "sbg:revisionNotes": null,
            "sbg:revision": 19
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499967331,
            "sbg:revisionNotes": null,
            "sbg:revision": 20
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499967351,
            "sbg:revisionNotes": null,
            "sbg:revision": 21
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499976565,
            "sbg:revisionNotes": null,
            "sbg:revision": 22
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054122,
            "sbg:revisionNotes": null,
            "sbg:revision": 23
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054228,
            "sbg:revisionNotes": null,
            "sbg:revision": 24
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054337,
            "sbg:revisionNotes": null,
            "sbg:revision": 25
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054494,
            "sbg:revisionNotes": null,
            "sbg:revision": 26
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054599,
            "sbg:revisionNotes": null,
            "sbg:revision": 27
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "hints": [],
    "sbg:canvas_x": 225,
    "sbg:createdOn": 1495645271,
    "requirements": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedOn": 1495833605,
    "steps": [
        {
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ],
            "run": {
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495727497,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495727990,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495730389,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495737299,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495811058,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495813279,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495813869,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6
                    }
                ],
                "label": "juicer",
                "sbg:validationErrors": [],
                "requirements": [],
                "sbg:projectName": "Dev",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:revision": 6,
                "successCodes": [],
                "description": "",
                "sbg:latestRevision": 6,
                "id": "4dn-dcic/dev/juicer/6",
                "class": "CommandLineTool",
                "sbg:createdBy": "4dn-dcic",
                "sbg:id": "4dn-dcic/dev/juicer/6",
                "stdin": "",
                "inputs": [
                    {
                        "required": false,
                        "id": "#restriction_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 6
                        }
                    },
                    {
                        "required": false,
                        "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
                        "id": "#reference_fasta",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 4
                        }
                    },
                    {
                        "id": "#outdir",
                        "sbg:toolDefaultValue": "\".\"",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 7
                        }
                    },
                    {
                        "required": false,
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "id": "#input_fastq2",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        }
                    },
                    {
                        "required": false,
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "id": "#input_fastq1",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
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
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 5
                        }
                    },
                    {
                        "required": false,
                        "sbg:fileTypes": "BWAINDEX.TGZ",
                        "id": "#bwaIndex",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        }
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:project": "4dn-dcic/dev",
                "sbg:sbgMaintained": false,
                "x": 381.6666833559674,
                "stdout": "",
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
                        "dockerImageId": "",
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v13"
                    }
                ],
                "sbg:image_url": null,
                "arguments": [],
                "y": 349.42709947004937,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:cmdPreview": "run-juicer.sh",
                "sbg:modifiedOn": 1495813869,
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
                "sbg:job": {
                    "inputs": {
                        "outdir": "outdir-string-value",
                        "reference_fasta": {
                            "size": 0,
                            "path": "/path/to/reference_fasta.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "restriction_file": {
                            "size": 0,
                            "path": "/path/to/restriction_file.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "chromsizes_file": {
                            "size": 0,
                            "path": "/path/to/chromsizes_file.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "input_fastq1": {
                            "size": 0,
                            "path": "/path/to/input_fastq1.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "input_fastq2": {
                            "size": 0,
                            "path": "/path/to/input_fastq2.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "bwaIndex": {
                            "size": 0,
                            "path": "/path/to/bwaIndex.ext",
                            "class": "File",
                            "secondaryFiles": []
                        }
                    },
                    "allocatedResources": {
                        "mem": 12000,
                        "cpu": 8
                    }
                },
                "temporaryFailCodes": [],
                "baseCommand": [
                    "run-juicer.sh"
                ]
            },
            "id": "#juicer",
            "sbg:y": 349.42709947004937,
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
            "run": {
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495826137,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495826456,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1
                    }
                ],
                "label": "juicer2pairs",
                "sbg:validationErrors": [],
                "requirements": [],
                "sbg:projectName": "Dev",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:revision": 1,
                "temporaryFailCodes": [],
                "sbg:job": {
                    "inputs": {
                        "input_merged_nodups": {
                            "size": 0,
                            "path": "/path/to/input_merged_nodups.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "outprefix": "outprefix-string-value",
                        "chromsize": {
                            "size": 0,
                            "path": "/path/to/chromsize.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "nsplit": 8
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
                "description": "",
                "sbg:latestRevision": 1,
                "id": "4dn-dcic/dev/juicer2pairs/1",
                "class": "CommandLineTool",
                "sbg:createdBy": "4dn-dcic",
                "sbg:id": "4dn-dcic/dev/juicer2pairs/1",
                "stdin": "",
                "inputs": [
                    {
                        "required": false,
                        "id": "#outprefix",
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
                        "required": false,
                        "id": "#nsplit",
                        "sbg:includeInPorts": false,
                        "sbg:stageInput": null,
                        "sbg:toolDefaultValue": "100",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "prefix": "-s",
                            "position": 1
                        },
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "required": false,
                        "sbg:fileTypes": ".TXT",
                        "id": "#input_merged_nodups",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        }
                    },
                    {
                        "required": false,
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "id": "#chromsize",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        }
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:project": "4dn-dcic/dev",
                "sbg:sbgMaintained": false,
                "x": 665.0000000000003,
                "stdout": "",
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
                        "dockerPull": "duplexa/4dn-hic:v13"
                    }
                ],
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/juicer2pairs/1",
                "sbg:image_url": null,
                "arguments": [],
                "y": 407.7604166666669,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:cmdPreview": "merged_nodup2pairs.pl",
                "sbg:modifiedOn": 1495826456,
                "sbg:createdOn": 1495826137,
                "sbg:modifiedBy": "4dn-dcic",
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
                "successCodes": [],
                "baseCommand": [
                    "merged_nodup2pairs.pl"
                ]
            },
            "id": "#juicer2pairs",
            "sbg:y": 407.7604166666669,
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
            "sbg:x": 665.0000000000003
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta-juicer/5.png",
    "outputs": [
        {
            "required": false,
            "label": "out_pairs",
            "id": "#out_pairs",
            "sbg:includeInPorts": true,
            "sbg:y": 433.94532003450297,
            "source": [
                "#juicer2pairs.out_pairs"
            ],
            "sbg:fileTypes": ".PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 1135.1589554743873
        },
        {
            "required": false,
            "label": "out_pairs_index",
            "id": "#out_pairs_index",
            "sbg:includeInPorts": true,
            "sbg:y": 230.81040345869056,
            "source": [
                "#juicer2pairs.out_pairs_px"
            ],
            "sbg:fileTypes": ".PX2",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 1156.8454639320414
        }
    ],
    "sbg:canvas_y": -43
}