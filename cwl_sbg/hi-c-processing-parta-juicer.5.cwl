{
    "sbg:canvas_y": -43,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "label": "Hi-C_processing_partA_Juicer",
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta-juicer/5",
    "steps": [
        {
            "sbg:x": 381.6666833559674,
            "run": {
                "temporaryFailCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "label": "juicer",
                "sbg:id": "4dn-dcic/dev/juicer/6",
                "sbg:cmdPreview": "run-juicer.sh",
                "sbg:revision": 6,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "merged_nodups.txt"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#merged_nodups"
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1495727497,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1495727990,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1495730389,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1495737299,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1495811058,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1495813279,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1495813869,
                        "sbg:revisionNotes": null
                    }
                ],
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 6,
                            "sbg:cmdInclude": true,
                            "separate": true
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
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#reference_fasta",
                        "required": false,
                        "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ"
                    },
                    {
                        "inputBinding": {
                            "position": 7,
                            "sbg:cmdInclude": true,
                            "separate": true
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
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_fastq2",
                        "required": false,
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ"
                    },
                    {
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_fastq1",
                        "required": false,
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ"
                    },
                    {
                        "inputBinding": {
                            "position": 5,
                            "sbg:cmdInclude": true,
                            "separate": true
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
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#bwaIndex",
                        "required": false,
                        "sbg:fileTypes": "BWAINDEX.TGZ"
                    }
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
                        "dockerPull": "duplexa/4dn-hic:v13",
                        "dockerImageId": ""
                    }
                ],
                "x": 381.6666833559674,
                "successCodes": [],
                "sbg:project": "4dn-dcic/dev",
                "y": 349.42709947004937,
                "sbg:modifiedOn": 1495813869,
                "stdin": "",
                "sbg:image_url": null,
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:job": {
                    "inputs": {
                        "chromsizes_file": {
                            "secondaryFiles": [],
                            "path": "/path/to/chromsizes_file.ext",
                            "class": "File",
                            "size": 0
                        },
                        "outdir": "outdir-string-value",
                        "restriction_file": {
                            "secondaryFiles": [],
                            "path": "/path/to/restriction_file.ext",
                            "class": "File",
                            "size": 0
                        },
                        "reference_fasta": {
                            "secondaryFiles": [],
                            "path": "/path/to/reference_fasta.ext",
                            "class": "File",
                            "size": 0
                        },
                        "input_fastq2": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq2.ext",
                            "class": "File",
                            "size": 0
                        },
                        "input_fastq1": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq1.ext",
                            "class": "File",
                            "size": 0
                        },
                        "bwaIndex": {
                            "secondaryFiles": [],
                            "path": "/path/to/bwaIndex.ext",
                            "class": "File",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "mem": 12000,
                        "cpu": 8
                    }
                },
                "baseCommand": [
                    "run-juicer.sh"
                ],
                "cwlVersion": "sbg:draft-2",
                "id": "4dn-dcic/dev/juicer/6",
                "sbg:latestRevision": 6,
                "requirements": [],
                "sbg:createdBy": "4dn-dcic",
                "stdout": "",
                "sbg:sbgMaintained": false,
                "class": "CommandLineTool",
                "sbg:projectName": "Dev",
                "sbg:createdOn": 1495727497,
                "description": "",
                "arguments": [],
                "sbg:modifiedBy": "4dn-dcic"
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
            ],
            "sbg:y": 349.42709947004937,
            "id": "#juicer",
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ]
        },
        {
            "sbg:x": 665.0000000000003,
            "run": {
                "temporaryFailCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "label": "juicer2pairs",
                "sbg:id": "4dn-dcic/dev/juicer2pairs/1",
                "sbg:cmdPreview": "merged_nodup2pairs.pl",
                "sbg:revision": 1,
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
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1495826137,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1495826456,
                        "sbg:revisionNotes": null
                    }
                ],
                "inputs": [
                    {
                        "inputBinding": {
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "id": "#outprefix",
                        "type": [
                            "null",
                            "string"
                        ],
                        "required": false,
                        "sbg:toolDefaultValue": "out"
                    },
                    {
                        "sbg:stageInput": null,
                        "sbg:toolDefaultValue": "100",
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "prefix": "-s"
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:includeInPorts": false,
                        "id": "#nsplit",
                        "required": false
                    },
                    {
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#input_merged_nodups",
                        "required": false,
                        "sbg:fileTypes": ".TXT"
                    },
                    {
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#chromsize",
                        "required": false,
                        "sbg:fileTypes": ".CHROM.SIZES"
                    }
                ],
                "class": "CommandLineTool",
                "sbg:modifiedOn": 1495826456,
                "x": 665.0000000000003,
                "successCodes": [],
                "sbg:project": "4dn-dcic/dev",
                "y": 407.7604166666669,
                "sbg:projectName": "Dev",
                "sbg:image_url": null,
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:job": {
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "nsplit": 8,
                        "input_merged_nodups": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_merged_nodups.ext",
                            "class": "File",
                            "size": 0
                        },
                        "chromsize": {
                            "secondaryFiles": [],
                            "path": "/path/to/chromsize.ext",
                            "class": "File",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/juicer2pairs/1",
                "baseCommand": [
                    "merged_nodup2pairs.pl"
                ],
                "cwlVersion": "sbg:draft-2",
                "id": "4dn-dcic/dev/juicer2pairs/1",
                "sbg:latestRevision": 1,
                "requirements": [],
                "sbg:createdBy": "4dn-dcic",
                "stdout": "",
                "sbg:sbgMaintained": false,
                "stdin": "",
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
                        "dockerPull": "duplexa/4dn-hic:v13",
                        "dockerImageId": ""
                    }
                ],
                "sbg:createdOn": 1495826137,
                "description": "",
                "arguments": [],
                "sbg:modifiedBy": "4dn-dcic"
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
            ],
            "sbg:y": 407.7604166666669,
            "id": "#juicer2pairs",
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
    "outputs": [
        {
            "sbg:x": 1135.1589554743873,
            "id": "#out_pairs",
            "sbg:fileTypes": ".PAIRS.GZ",
            "label": "out_pairs",
            "source": [
                "#juicer2pairs.out_pairs"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 433.94532003450297,
            "required": false
        },
        {
            "sbg:x": 1156.8454639320414,
            "id": "#out_pairs_index",
            "sbg:fileTypes": ".PX2",
            "label": "out_pairs_index",
            "source": [
                "#juicer2pairs.out_pairs_px"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 230.81040345869056,
            "required": false
        }
    ],
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "inputs": [
        {
            "sbg:x": -79.33332717418662,
            "sbg:y": 140.66383514128128,
            "label": "fastq1",
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "id": "#fastq1",
            "type": [
                "File"
            ]
        },
        {
            "sbg:x": 24.555563087816765,
            "sbg:y": 193.10828503403184,
            "label": "fastq2",
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "id": "#fastq2",
            "type": [
                "File"
            ]
        },
        {
            "sbg:x": -11.111108400203499,
            "sbg:y": 462.3305623795146,
            "label": "bwa_index",
            "sbg:fileTypes": "BWAINDEX.TGZ",
            "id": "#bwa_index",
            "type": [
                "File"
            ]
        },
        {
            "sbg:x": -99.99998479419224,
            "sbg:y": 554.9952898421001,
            "label": "chrsizes",
            "sbg:fileTypes": ".CHROM.SIZES",
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:x": -113.33335151937345,
            "sbg:y": 394.9952658280505,
            "label": "reference_fasta",
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
            "id": "#reference_fasta",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:x": -35.00001758999382,
            "sbg:y": 294.99526332484334,
            "type": [
                "null",
                "File"
            ],
            "id": "#restriction_file",
            "label": "restriction_file"
        },
        {
            "id": "#nsplit",
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "100",
            "type": [
                "null",
                "int"
            ],
            "sbg:includeInPorts": false,
            "sbg:suggestedValue": 100,
            "required": false
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:canvas_x": 225,
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
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta-juicer/5.png",
    "sbg:validationErrors": [],
    "hints": [],
    "cwlVersion": "sbg:draft-2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta-juicer/5/raw/",
    "sbg:latestRevision": 27,
    "requirements": [],
    "sbg:createdBy": "4dn-dcic",
    "sbg:modifiedOn": 1495833605,
    "sbg:sbgMaintained": false,
    "class": "Workflow",
    "sbg:canvas_zoom": 0.5999999999999996,
    "sbg:createdOn": 1495645271,
    "description": "",
    "sbg:projectName": "Dev",
    "sbg:modifiedBy": "4dn-dcic"
}