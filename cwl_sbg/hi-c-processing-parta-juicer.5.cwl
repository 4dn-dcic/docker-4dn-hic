{
    "sbg:projectName": "Dev",
    "sbg:sbgMaintained": false,
    "sbg:createdBy": "4dn-dcic",
    "cwlVersion": "sbg:draft-2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta-juicer/5/raw/",
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta-juicer/5",
    "sbg:validationErrors": [],
    "requirements": [],
    "inputs": [
        {
            "label": "fastq1",
            "sbg:x": -79.33332717418662,
            "type": [
                "File"
            ],
            "id": "#fastq1",
            "sbg:y": 140.66383514128128,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ"
        },
        {
            "label": "fastq2",
            "sbg:x": 24.555563087816765,
            "type": [
                "File"
            ],
            "id": "#fastq2",
            "sbg:y": 193.10828503403184,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ"
        },
        {
            "label": "bwa_index",
            "sbg:x": -11.111108400203499,
            "type": [
                "File"
            ],
            "id": "#bwa_index",
            "sbg:y": 462.3305623795146,
            "sbg:fileTypes": "BWAINDEX.TGZ"
        },
        {
            "label": "chrsizes",
            "sbg:x": -99.99998479419224,
            "type": [
                "null",
                "File"
            ],
            "id": "#chrsizes",
            "sbg:y": 554.9952898421001,
            "sbg:fileTypes": ".CHROM.SIZES"
        },
        {
            "label": "reference_fasta",
            "sbg:x": -113.33335151937345,
            "type": [
                "null",
                "File"
            ],
            "id": "#reference_fasta",
            "sbg:y": 394.9952658280505,
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ"
        },
        {
            "sbg:x": -35.00001758999382,
            "type": [
                "null",
                "File"
            ],
            "label": "restriction_file",
            "sbg:y": 294.99526332484334,
            "id": "#restriction_file"
        },
        {
            "sbg:includeInPorts": false,
            "sbg:toolDefaultValue": "100",
            "sbg:stageInput": null,
            "required": false,
            "sbg:suggestedValue": 100,
            "type": [
                "null",
                "int"
            ],
            "id": "#nsplit"
        }
    ],
    "sbg:canvas_x": 225,
    "steps": [
        {
            "run": {
                "x": 381.6666833559674,
                "baseCommand": [
                    "run-juicer.sh"
                ],
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
                "id": "4dn-dcic/dev/juicer/6",
                "sbg:sbgMaintained": false,
                "sbg:project": "4dn-dcic/dev",
                "y": 349.42709947004937,
                "cwlVersion": "sbg:draft-2",
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v13",
                        "class": "DockerRequirement"
                    }
                ],
                "successCodes": [],
                "sbg:id": "4dn-dcic/dev/juicer/6",
                "requirements": [],
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 6,
                            "separate": true
                        },
                        "id": "#restriction_file"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 4,
                            "separate": true
                        },
                        "id": "#reference_fasta",
                        "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ"
                    },
                    {
                        "sbg:toolDefaultValue": "\".\"",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 7,
                            "separate": true
                        },
                        "id": "#outdir"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": true
                        },
                        "id": "#input_fastq2",
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true
                        },
                        "id": "#input_fastq1",
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 5,
                            "separate": true
                        },
                        "id": "#chromsizes_file"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": true
                        },
                        "id": "#bwaIndex",
                        "sbg:fileTypes": "BWAINDEX.TGZ"
                    }
                ],
                "sbg:projectName": "Dev",
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:cmdPreview": "run-juicer.sh",
                "stdout": "",
                "sbg:createdBy": "4dn-dcic",
                "label": "juicer",
                "sbg:modifiedOn": 1495813869,
                "sbg:latestRevision": 6,
                "temporaryFailCodes": [],
                "sbg:revision": 6,
                "stdin": "",
                "sbg:validationErrors": [],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 12000
                    },
                    "inputs": {
                        "chromsizes_file": {
                            "secondaryFiles": [],
                            "path": "/path/to/chromsizes_file.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "reference_fasta": {
                            "secondaryFiles": [],
                            "path": "/path/to/reference_fasta.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "bwaIndex": {
                            "secondaryFiles": [],
                            "path": "/path/to/bwaIndex.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "input_fastq1": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq1.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "input_fastq2": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq2.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "restriction_file": {
                            "secondaryFiles": [],
                            "path": "/path/to/restriction_file.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "outdir": "outdir-string-value"
                    }
                },
                "sbg:image_url": null,
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
                "description": "",
                "sbg:createdOn": 1495727497
            },
            "inputs": [
                {
                    "source": [
                        "#restriction_file"
                    ],
                    "id": "#juicer.restriction_file"
                },
                {
                    "source": [
                        "#reference_fasta"
                    ],
                    "id": "#juicer.reference_fasta"
                },
                {
                    "default": ".",
                    "id": "#juicer.outdir"
                },
                {
                    "source": [
                        "#fastq2"
                    ],
                    "id": "#juicer.input_fastq2"
                },
                {
                    "source": [
                        "#fastq1"
                    ],
                    "id": "#juicer.input_fastq1"
                },
                {
                    "source": [
                        "#chrsizes"
                    ],
                    "id": "#juicer.chromsizes_file"
                },
                {
                    "source": [
                        "#bwa_index"
                    ],
                    "id": "#juicer.bwaIndex"
                }
            ],
            "sbg:x": 381.6666833559674,
            "id": "#juicer",
            "sbg:y": 349.42709947004937,
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ]
        },
        {
            "run": {
                "x": 665.0000000000003,
                "baseCommand": [
                    "merged_nodup2pairs.pl"
                ],
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz.px2"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#out_pairs_px",
                        "sbg:fileTypes": ".PX2"
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
                        "sbg:fileTypes": ".PAIRS.GZ"
                    }
                ],
                "id": "4dn-dcic/dev/juicer2pairs/1",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/juicer2pairs/1",
                "sbg:project": "4dn-dcic/dev",
                "y": 407.7604166666669,
                "cwlVersion": "sbg:draft-2",
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v13",
                        "class": "DockerRequirement"
                    }
                ],
                "successCodes": [],
                "sbg:id": "4dn-dcic/dev/juicer2pairs/1",
                "requirements": [],
                "inputs": [
                    {
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 4,
                            "separate": true
                        },
                        "id": "#outprefix",
                        "required": false
                    },
                    {
                        "sbg:includeInPorts": false,
                        "sbg:toolDefaultValue": "100",
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "prefix": "-s",
                            "separate": false
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "id": "#nsplit",
                        "required": false
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": true
                        },
                        "id": "#input_merged_nodups",
                        "sbg:fileTypes": ".TXT"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": true
                        },
                        "id": "#chromsize",
                        "sbg:fileTypes": ".CHROM.SIZES"
                    }
                ],
                "sbg:createdBy": "4dn-dcic",
                "sbg:projectName": "Dev",
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:cmdPreview": "merged_nodup2pairs.pl",
                "stdout": "",
                "sbg:sbgMaintained": false,
                "label": "juicer2pairs",
                "sbg:modifiedOn": 1495826456,
                "sbg:latestRevision": 1,
                "temporaryFailCodes": [],
                "sbg:revision": 1,
                "stdin": "",
                "sbg:validationErrors": [],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "chromsize": {
                            "secondaryFiles": [],
                            "path": "/path/to/chromsize.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "input_merged_nodups": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_merged_nodups.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "nsplit": 8,
                        "outprefix": "outprefix-string-value"
                    }
                },
                "sbg:image_url": null,
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
                "description": "",
                "sbg:createdOn": 1495826137
            },
            "inputs": [
                {
                    "default": "out",
                    "id": "#juicer2pairs.outprefix"
                },
                {
                    "source": [
                        "#nsplit"
                    ],
                    "id": "#juicer2pairs.nsplit"
                },
                {
                    "source": [
                        "#juicer.merged_nodups"
                    ],
                    "id": "#juicer2pairs.input_merged_nodups"
                },
                {
                    "source": [
                        "#chrsizes"
                    ],
                    "id": "#juicer2pairs.chromsize"
                }
            ],
            "sbg:x": 665.0000000000003,
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
    "class": "Workflow",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:project": "4dn-dcic/dev",
    "outputs": [
        {
            "sbg:includeInPorts": true,
            "required": false,
            "label": "out_pairs",
            "sbg:x": 1135.1589554743873,
            "source": [
                "#juicer2pairs.out_pairs"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs",
            "sbg:y": 433.94532003450297,
            "sbg:fileTypes": ".PAIRS.GZ"
        },
        {
            "sbg:includeInPorts": true,
            "required": false,
            "label": "out_pairs_index",
            "sbg:x": 1156.8454639320414,
            "source": [
                "#juicer2pairs.out_pairs_px"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#out_pairs_index",
            "sbg:y": 230.81040345869056,
            "sbg:fileTypes": ".PX2"
        }
    ],
    "label": "Hi-C_processing_partA_Juicer",
    "sbg:modifiedOn": 1495833605,
    "sbg:latestRevision": 27,
    "sbg:canvas_zoom": 0.5999999999999996,
    "sbg:revision": 5,
    "hints": [],
    "sbg:canvas_y": -43,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta-juicer/5.png",
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
    "description": "",
    "sbg:createdOn": 1495645271
}