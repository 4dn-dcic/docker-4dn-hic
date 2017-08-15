{
    "label": "Hi-C_processing_partA_Juicer",
    "sbg:canvas_y": -43,
    "sbg:canvas_zoom": 0.5999999999999996,
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:validationErrors": [],
    "steps": [
        {
            "run": {
                "label": "juicer",
                "successCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "id": "4dn-dcic/dev/juicer/6",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:image_url": null,
                "sbg:createdBy": "4dn-dcic",
                "class": "CommandLineTool",
                "sbg:latestRevision": 6,
                "temporaryFailCodes": [],
                "arguments": [],
                "sbg:cmdPreview": "run-juicer.sh",
                "sbg:modifiedBy": "4dn-dcic",
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#merged_nodups",
                        "outputBinding": {
                            "glob": "merged_nodups.txt"
                        }
                    }
                ],
                "requirements": [],
                "baseCommand": [
                    "run-juicer.sh"
                ],
                "sbg:project": "4dn-dcic/dev",
                "inputs": [
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 6
                        },
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#restriction_file"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 4
                        },
                        "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#reference_fasta",
                        "required": false
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 7
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outdir",
                        "sbg:toolDefaultValue": "\".\""
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_fastq2",
                        "required": false
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        },
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_fastq1",
                        "required": false
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 5
                        },
                        "required": false,
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
                        "sbg:fileTypes": "BWAINDEX.TGZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#bwaIndex",
                        "required": false
                    }
                ],
                "sbg:createdOn": 1495727497,
                "x": 381.6666833559674,
                "sbg:modifiedOn": 1495813869,
                "stdin": "",
                "description": "",
                "sbg:validationErrors": [],
                "sbg:projectName": "Dev",
                "stdout": "",
                "y": 349.42709947004937,
                "sbg:revision": 6,
                "cwlVersion": "sbg:draft-2",
                "sbg:sbgMaintained": false,
                "sbg:id": "4dn-dcic/dev/juicer/6",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 12000
                    },
                    "inputs": {
                        "reference_fasta": {
                            "path": "/path/to/reference_fasta.ext",
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": []
                        },
                        "outdir": "outdir-string-value",
                        "bwaIndex": {
                            "path": "/path/to/bwaIndex.ext",
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": []
                        },
                        "input_fastq1": {
                            "path": "/path/to/input_fastq1.ext",
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": []
                        },
                        "chromsizes_file": {
                            "path": "/path/to/chromsizes_file.ext",
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": []
                        },
                        "input_fastq2": {
                            "path": "/path/to/input_fastq2.ext",
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": []
                        },
                        "restriction_file": {
                            "path": "/path/to/restriction_file.ext",
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": []
                        }
                    }
                },
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
            "sbg:y": 349.42709947004937,
            "sbg:x": 381.6666833559674,
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ],
            "id": "#juicer"
        },
        {
            "run": {
                "label": "juicer2pairs",
                "successCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:sbgMaintained": false,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:image_url": null,
                "sbg:createdBy": "4dn-dcic",
                "class": "CommandLineTool",
                "sbg:latestRevision": 1,
                "temporaryFailCodes": [],
                "arguments": [],
                "sbg:cmdPreview": "merged_nodup2pairs.pl",
                "sbg:modifiedBy": "4dn-dcic",
                "outputs": [
                    {
                        "sbg:fileTypes": ".PX2",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#out_pairs_px",
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz.px2"
                        }
                    },
                    {
                        "sbg:fileTypes": ".PAIRS.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#out_pairs",
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz"
                        }
                    }
                ],
                "id": "4dn-dcic/dev/juicer2pairs/1",
                "baseCommand": [
                    "merged_nodup2pairs.pl"
                ],
                "sbg:project": "4dn-dcic/dev",
                "inputs": [
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 4
                        },
                        "required": false,
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 1,
                            "prefix": "-s"
                        },
                        "required": false,
                        "sbg:includeInPorts": false,
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null,
                        "id": "#nsplit",
                        "sbg:toolDefaultValue": "100"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "sbg:fileTypes": ".TXT",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_merged_nodups",
                        "required": false
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        },
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#chromsize",
                        "required": false
                    }
                ],
                "sbg:createdOn": 1495826137,
                "x": 665.0000000000003,
                "sbg:modifiedOn": 1495826456,
                "stdin": "",
                "description": "",
                "sbg:validationErrors": [],
                "sbg:projectName": "Dev",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/juicer2pairs/1",
                "stdout": "",
                "y": 407.7604166666669,
                "sbg:revision": 1,
                "cwlVersion": "sbg:draft-2",
                "requirements": [],
                "sbg:id": "4dn-dcic/dev/juicer2pairs/1",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "input_merged_nodups": {
                            "path": "/path/to/input_merged_nodups.ext",
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": []
                        },
                        "nsplit": 8,
                        "chromsize": {
                            "path": "/path/to/chromsize.ext",
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": []
                        }
                    }
                },
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
                ]
            },
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
            "sbg:y": 407.7604166666669,
            "sbg:x": 665.0000000000003,
            "outputs": [
                {
                    "id": "#juicer2pairs.out_pairs_px"
                },
                {
                    "id": "#juicer2pairs.out_pairs"
                }
            ],
            "id": "#juicer2pairs"
        }
    ],
    "sbg:latestRevision": 27,
    "sbg:canvas_x": 225,
    "sbg:createdBy": "4dn-dcic",
    "sbg:modifiedBy": "4dn-dcic",
    "class": "Workflow",
    "outputs": [
        {
            "required": false,
            "label": "out_pairs",
            "sbg:includeInPorts": true,
            "sbg:y": 433.94532003450297,
            "sbg:x": 1135.1589554743873,
            "sbg:fileTypes": ".PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs",
            "source": [
                "#juicer2pairs.out_pairs"
            ]
        },
        {
            "required": false,
            "label": "out_pairs_index",
            "sbg:includeInPorts": true,
            "sbg:y": 230.81040345869056,
            "sbg:x": 1156.8454639320414,
            "sbg:fileTypes": ".PX2",
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs_index",
            "source": [
                "#juicer2pairs.out_pairs_px"
            ]
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "inputs": [
        {
            "label": "fastq1",
            "sbg:y": 140.66383514128128,
            "sbg:x": -79.33332717418662,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "type": [
                "File"
            ],
            "id": "#fastq1"
        },
        {
            "label": "fastq2",
            "sbg:y": 193.10828503403184,
            "sbg:x": 24.555563087816765,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "type": [
                "File"
            ],
            "id": "#fastq2"
        },
        {
            "label": "bwa_index",
            "sbg:y": 462.3305623795146,
            "sbg:x": -11.111108400203499,
            "sbg:fileTypes": "BWAINDEX.TGZ",
            "type": [
                "File"
            ],
            "id": "#bwa_index"
        },
        {
            "label": "chrsizes",
            "sbg:y": 554.9952898421001,
            "sbg:x": -99.99998479419224,
            "sbg:fileTypes": ".CHROM.SIZES",
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes"
        },
        {
            "label": "reference_fasta",
            "sbg:y": 394.9952658280505,
            "sbg:x": -113.33335151937345,
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
            "type": [
                "null",
                "File"
            ],
            "id": "#reference_fasta"
        },
        {
            "label": "restriction_file",
            "type": [
                "null",
                "File"
            ],
            "id": "#restriction_file",
            "sbg:x": -35.00001758999382,
            "sbg:y": 294.99526332484334
        },
        {
            "required": false,
            "sbg:includeInPorts": false,
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "id": "#nsplit",
            "sbg:suggestedValue": 100,
            "sbg:toolDefaultValue": "100"
        }
    ],
    "sbg:createdOn": 1495645271,
    "sbg:modifiedOn": 1495833605,
    "description": "",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495645271,
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of 4dn-dcic/dev/hi-c-processing-parta/20"
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495645459,
            "sbg:revision": 1,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833499,
            "sbg:revision": 2,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833561,
            "sbg:revision": 3,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833566,
            "sbg:revision": 4,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833605,
            "sbg:revision": 5,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495836706,
            "sbg:revision": 6,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496170708,
            "sbg:revision": 7,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496431004,
            "sbg:revision": 8,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497473502,
            "sbg:revision": 9,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497473555,
            "sbg:revision": 10,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497538622,
            "sbg:revision": 11,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497641679,
            "sbg:revision": 12,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497643656,
            "sbg:revision": 13,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497983491,
            "sbg:revision": 14,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1498165262,
            "sbg:revision": 15,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1498230882,
            "sbg:revision": 16,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1498844973,
            "sbg:revision": 17,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499287014,
            "sbg:revision": 18,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499287106,
            "sbg:revision": 19,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499967331,
            "sbg:revision": 20,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499967351,
            "sbg:revision": 21,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499976565,
            "sbg:revision": 22,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054122,
            "sbg:revision": 23,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054228,
            "sbg:revision": 24,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054337,
            "sbg:revision": 25,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054494,
            "sbg:revision": 26,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054599,
            "sbg:revision": 27,
            "sbg:revisionNotes": null
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "hints": [],
    "sbg:revision": 5,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta-juicer/5.png",
    "cwlVersion": "sbg:draft-2",
    "requirements": [],
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta-juicer/5",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta-juicer/5/raw/",
    "sbg:projectName": "Dev"
}