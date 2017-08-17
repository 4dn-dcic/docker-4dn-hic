{
    "label": "Hi-C_processing_partA_Juicer",
    "sbg:canvas_y": -43,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:latestRevision": 27,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta-juicer/5.png",
    "class": "Workflow",
    "sbg:canvas_x": 225,
    "hints": [],
    "steps": [
        {
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ],
            "id": "#juicer",
            "run": {
                "stdout": "",
                "x": 381.6666833559674,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "label": "juicer",
                "sbg:cmdPreview": "run-juicer.sh",
                "sbg:image_url": null,
                "arguments": [],
                "sbg:modifiedBy": "4dn-dcic",
                "class": "CommandLineTool",
                "id": "4dn-dcic/dev/juicer/6",
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
                "sbg:validationErrors": [],
                "stdin": "",
                "sbg:createdOn": 1495727497,
                "sbg:projectName": "Dev",
                "y": 349.42709947004937,
                "requirements": [],
                "temporaryFailCodes": [],
                "sbg:id": "4dn-dcic/dev/juicer/6",
                "sbg:revision": 6,
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 6,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#restriction_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false
                    },
                    {
                        "inputBinding": {
                            "position": 4,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#reference_fasta",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
                        "required": false
                    },
                    {
                        "inputBinding": {
                            "position": 7,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#outdir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "\".\""
                    },
                    {
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#input_fastq2",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "required": false
                    },
                    {
                        "inputBinding": {
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#input_fastq1",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "required": false
                    },
                    {
                        "inputBinding": {
                            "position": 5,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#chromsizes_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false
                    },
                    {
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#bwaIndex",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "BWAINDEX.TGZ",
                        "required": false
                    }
                ],
                "baseCommand": [
                    "run-juicer.sh"
                ],
                "description": "",
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
                "sbg:modifiedOn": 1495813869,
                "sbg:sbgMaintained": false,
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
                "sbg:project": "4dn-dcic/dev",
                "successCodes": [],
                "sbg:latestRevision": 6,
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 12000
                    },
                    "inputs": {
                        "restriction_file": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/restriction_file.ext"
                        },
                        "chromsizes_file": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/chromsizes_file.ext"
                        },
                        "input_fastq2": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq2.ext"
                        },
                        "input_fastq1": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq1.ext"
                        },
                        "outdir": "outdir-string-value",
                        "bwaIndex": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/bwaIndex.ext"
                        },
                        "reference_fasta": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/reference_fasta.ext"
                        }
                    }
                },
                "sbg:createdBy": "4dn-dcic"
            },
            "sbg:x": 381.6666833559674,
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
            ]
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
            "id": "#juicer2pairs",
            "run": {
                "stdout": "",
                "x": 665.0000000000003,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "label": "juicer2pairs",
                "sbg:cmdPreview": "merged_nodup2pairs.pl",
                "sbg:image_url": null,
                "arguments": [],
                "class": "CommandLineTool",
                "id": "4dn-dcic/dev/juicer2pairs/1",
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
                "sbg:validationErrors": [],
                "stdin": "",
                "sbg:project": "4dn-dcic/dev",
                "sbg:createdOn": 1495826137,
                "sbg:projectName": "Dev",
                "y": 407.7604166666669,
                "requirements": [],
                "temporaryFailCodes": [],
                "sbg:id": "4dn-dcic/dev/juicer2pairs/1",
                "sbg:revision": 1,
                "sbg:modifiedBy": "4dn-dcic",
                "baseCommand": [
                    "merged_nodup2pairs.pl"
                ],
                "description": "",
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
                "sbg:modifiedOn": 1495826456,
                "sbg:sbgMaintained": false,
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
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 4,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#outprefix",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out",
                        "required": false
                    },
                    {
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "prefix": "-s"
                        },
                        "id": "#nsplit",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null,
                        "sbg:includeInPorts": false,
                        "sbg:toolDefaultValue": "100",
                        "required": false
                    },
                    {
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#input_merged_nodups",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".TXT",
                        "required": false
                    },
                    {
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#chromsize",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "required": false
                    }
                ],
                "successCodes": [],
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/juicer2pairs/1",
                "sbg:latestRevision": 1,
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "input_merged_nodups": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_merged_nodups.ext"
                        },
                        "nsplit": 8,
                        "chromsize": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/chromsize.ext"
                        },
                        "outprefix": "outprefix-string-value"
                    }
                },
                "sbg:createdBy": "4dn-dcic"
            },
            "sbg:x": 665.0000000000003,
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
            ]
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1495645271,
    "sbg:projectName": "Dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta-juicer/5/raw/",
    "sbg:canvas_zoom": 0.5999999999999996,
    "requirements": [],
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta-juicer/5",
    "sbg:revision": 5,
    "sbg:modifiedOn": 1495833605,
    "sbg:validationErrors": [],
    "description": "",
    "outputs": [
        {
            "id": "#out_pairs",
            "label": "out_pairs",
            "sbg:fileTypes": ".PAIRS.GZ",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#juicer2pairs.out_pairs"
            ],
            "sbg:x": 1135.1589554743873,
            "sbg:y": 433.94532003450297,
            "sbg:includeInPorts": true,
            "required": false
        },
        {
            "id": "#out_pairs_index",
            "label": "out_pairs_index",
            "sbg:fileTypes": ".PX2",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#juicer2pairs.out_pairs_px"
            ],
            "sbg:x": 1156.8454639320414,
            "sbg:y": 230.81040345869056,
            "sbg:includeInPorts": true,
            "required": false
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "4dn-dcic"
    ],
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
    "inputs": [
        {
            "label": "fastq1",
            "id": "#fastq1",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "sbg:x": -79.33332717418662,
            "sbg:y": 140.66383514128128
        },
        {
            "label": "fastq2",
            "id": "#fastq2",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "sbg:x": 24.555563087816765,
            "sbg:y": 193.10828503403184
        },
        {
            "label": "bwa_index",
            "id": "#bwa_index",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "BWAINDEX.TGZ",
            "sbg:x": -11.111108400203499,
            "sbg:y": 462.3305623795146
        },
        {
            "label": "chrsizes",
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": ".CHROM.SIZES",
            "sbg:x": -99.99998479419224,
            "sbg:y": 554.9952898421001
        },
        {
            "label": "reference_fasta",
            "id": "#reference_fasta",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
            "sbg:x": -113.33335151937345,
            "sbg:y": 394.9952658280505
        },
        {
            "label": "restriction_file",
            "sbg:y": 294.99526332484334,
            "id": "#restriction_file",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": -35.00001758999382
        },
        {
            "sbg:suggestedValue": 100,
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "id": "#nsplit",
            "sbg:includeInPorts": false,
            "sbg:toolDefaultValue": "100",
            "required": false
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:createdBy": "4dn-dcic"
}