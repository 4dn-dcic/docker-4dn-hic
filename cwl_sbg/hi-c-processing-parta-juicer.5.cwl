{
    "inputs": [
        {
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "sbg:x": -79.33332717418662,
            "label": "fastq1",
            "id": "#fastq1",
            "sbg:y": 140.66383514128128,
            "type": [
                "File"
            ]
        },
        {
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "sbg:x": 24.555563087816765,
            "label": "fastq2",
            "id": "#fastq2",
            "sbg:y": 193.10828503403184,
            "type": [
                "File"
            ]
        },
        {
            "sbg:fileTypes": "BWAINDEX.TGZ",
            "sbg:x": -11.111108400203499,
            "label": "bwa_index",
            "id": "#bwa_index",
            "sbg:y": 462.3305623795146,
            "type": [
                "File"
            ]
        },
        {
            "sbg:fileTypes": ".CHROM.SIZES",
            "sbg:x": -99.99998479419224,
            "label": "chrsizes",
            "id": "#chrsizes",
            "sbg:y": 554.9952898421001,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
            "sbg:x": -113.33335151937345,
            "label": "reference_fasta",
            "id": "#reference_fasta",
            "sbg:y": 394.9952658280505,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#restriction_file",
            "sbg:x": -35.00001758999382,
            "sbg:y": 294.99526332484334,
            "type": [
                "null",
                "File"
            ],
            "label": "restriction_file"
        },
        {
            "sbg:suggestedValue": 100,
            "sbg:includeInPorts": false,
            "required": false,
            "id": "#nsplit",
            "sbg:toolDefaultValue": "100",
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null
        }
    ],
    "sbg:latestRevision": 27,
    "sbg:validationErrors": [],
    "sbg:canvas_y": -43,
    "sbg:sbgMaintained": false,
    "hints": [],
    "sbg:canvas_x": 225,
    "label": "Hi-C_processing_partA_Juicer",
    "sbg:modifiedOn": 1495833605,
    "requirements": [],
    "outputs": [
        {
            "sbg:fileTypes": ".PAIRS.GZ",
            "sbg:includeInPorts": true,
            "label": "out_pairs",
            "required": false,
            "id": "#out_pairs",
            "sbg:x": 1135.1589554743873,
            "sbg:y": 433.94532003450297,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#juicer2pairs.out_pairs"
            ]
        },
        {
            "sbg:fileTypes": ".PX2",
            "sbg:includeInPorts": true,
            "label": "out_pairs_index",
            "required": false,
            "id": "#out_pairs_index",
            "sbg:x": 1156.8454639320414,
            "sbg:y": 230.81040345869056,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#juicer2pairs.out_pairs_px"
            ]
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1495645271,
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
            "sbg:x": 381.6666833559674,
            "run": {
                "inputs": [
                    {
                        "id": "#restriction_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "position": 6,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    },
                    {
                        "id": "#reference_fasta",
                        "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "position": 4,
                            "sbg:cmdInclude": true
                        },
                        "required": false
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
                            "position": 7,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "id": "#input_fastq2",
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    },
                    {
                        "id": "#input_fastq1",
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    },
                    {
                        "id": "#chromsizes_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "position": 5,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    },
                    {
                        "id": "#bwaIndex",
                        "sbg:fileTypes": "BWAINDEX.TGZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    }
                ],
                "sbg:latestRevision": 6,
                "sbg:validationErrors": [],
                "arguments": [],
                "baseCommand": [
                    "run-juicer.sh"
                ],
                "successCodes": [],
                "sbg:sbgMaintained": false,
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
                "label": "juicer",
                "sbg:modifiedOn": 1495813869,
                "requirements": [],
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
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:cmdPreview": "run-juicer.sh",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1495727497,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1495727990,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1495730389,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1495737299,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1495811058,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1495813279,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1495813869,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null
                    }
                ],
                "sbg:createdOn": 1495727497,
                "stdout": "",
                "y": 349.42709947004937,
                "sbg:revision": 6,
                "id": "4dn-dcic/dev/juicer/6",
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:job": {
                    "inputs": {
                        "bwaIndex": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/bwaIndex.ext",
                            "secondaryFiles": []
                        },
                        "input_fastq1": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_fastq1.ext",
                            "secondaryFiles": []
                        },
                        "chromsizes_file": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/chromsizes_file.ext",
                            "secondaryFiles": []
                        },
                        "reference_fasta": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/reference_fasta.ext",
                            "secondaryFiles": []
                        },
                        "input_fastq2": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_fastq2.ext",
                            "secondaryFiles": []
                        },
                        "outdir": "outdir-string-value",
                        "restriction_file": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/restriction_file.ext",
                            "secondaryFiles": []
                        }
                    },
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 12000
                    }
                },
                "sbg:project": "4dn-dcic/dev",
                "class": "CommandLineTool",
                "x": 381.6666833559674,
                "sbg:id": "4dn-dcic/dev/juicer/6",
                "sbg:projectName": "Dev",
                "sbg:image_url": null,
                "description": "",
                "temporaryFailCodes": [],
                "sbg:createdBy": "4dn-dcic",
                "stdin": "",
                "sbg:modifiedBy": "4dn-dcic"
            },
            "id": "#juicer",
            "sbg:y": 349.42709947004937,
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ]
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
            "sbg:x": 665.0000000000003,
            "run": {
                "inputs": [
                    {
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "position": 4,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    },
                    {
                        "sbg:includeInPorts": false,
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "prefix": "-s"
                        },
                        "required": false,
                        "id": "#nsplit",
                        "sbg:toolDefaultValue": "100",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null
                    },
                    {
                        "id": "#input_merged_nodups",
                        "sbg:fileTypes": ".TXT",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    },
                    {
                        "id": "#chromsize",
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    }
                ],
                "sbg:latestRevision": 1,
                "sbg:validationErrors": [],
                "arguments": [],
                "baseCommand": [
                    "merged_nodup2pairs.pl"
                ],
                "requirements": [],
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
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/juicer2pairs/1",
                "label": "juicer2pairs",
                "sbg:modifiedOn": 1495826456,
                "successCodes": [],
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
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:cmdPreview": "merged_nodup2pairs.pl",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1495826137,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1495826456,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    }
                ],
                "sbg:createdOn": 1495826137,
                "stdout": "",
                "y": 407.7604166666669,
                "sbg:revision": 1,
                "id": "4dn-dcic/dev/juicer2pairs/1",
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:job": {
                    "inputs": {
                        "chromsize": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/chromsize.ext",
                            "secondaryFiles": []
                        },
                        "outprefix": "outprefix-string-value",
                        "nsplit": 8,
                        "input_merged_nodups": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_merged_nodups.ext",
                            "secondaryFiles": []
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "sbg:image_url": null,
                "sbg:project": "4dn-dcic/dev",
                "class": "CommandLineTool",
                "x": 665.0000000000003,
                "sbg:id": "4dn-dcic/dev/juicer2pairs/1",
                "sbg:projectName": "Dev",
                "sbg:sbgMaintained": false,
                "description": "",
                "temporaryFailCodes": [],
                "sbg:createdBy": "4dn-dcic",
                "stdin": "",
                "sbg:modifiedBy": "4dn-dcic"
            },
            "id": "#juicer2pairs",
            "sbg:y": 407.7604166666669,
            "outputs": [
                {
                    "id": "#juicer2pairs.out_pairs_px"
                },
                {
                    "id": "#juicer2pairs.out_pairs"
                }
            ]
        }
    ],
    "sbg:revision": 5,
    "sbg:canvas_zoom": 0.5999999999999996,
    "cwlVersion": "sbg:draft-2",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1495645271,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of 4dn-dcic/dev/hi-c-processing-parta/20"
        },
        {
            "sbg:modifiedOn": 1495645459,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1495833499,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1495833561,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1495833566,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1495833605,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1495836706,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1496170708,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 7,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1496431004,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 8,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1497473502,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 9,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1497473555,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 10,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1497538622,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 11,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1497641679,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 12,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1497643656,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 13,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1497983491,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 14,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1498165262,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 15,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1498230882,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 16,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1498844973,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 17,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1499287014,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 18,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1499287106,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 19,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1499967331,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 20,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1499967351,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 21,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1499976565,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 22,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1500054122,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 23,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1500054228,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 24,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1500054337,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 25,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1500054494,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 26,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1500054599,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 27,
            "sbg:revisionNotes": null
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta-juicer/5/raw/",
    "class": "Workflow",
    "sbg:projectName": "Dev",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta-juicer/5.png",
    "description": "",
    "sbg:createdBy": "4dn-dcic",
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta-juicer/5",
    "sbg:modifiedBy": "4dn-dcic"
}