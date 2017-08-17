{
    "sbg:modifiedOn": 1495833605,
    "sbg:projectName": "Dev",
    "cwlVersion": "sbg:draft-2",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of 4dn-dcic/dev/hi-c-processing-parta/20",
            "sbg:revision": 0,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495645271
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495645459
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833499
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 3,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833561
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833566
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833605
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495836706
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 7,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496170708
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 8,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496431004
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 9,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497473502
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 10,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497473555
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 11,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497538622
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 12,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497641679
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 13,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497643656
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 14,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497983491
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 15,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1498165262
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 16,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1498230882
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 17,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1498844973
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 18,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499287014
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 19,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499287106
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 20,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499967331
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 21,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499967351
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 22,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499976565
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 23,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054122
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 24,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054228
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 25,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054337
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 26,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054494
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 27,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054599
        }
    ],
    "sbg:canvas_y": -43,
    "sbg:latestRevision": 27,
    "steps": [
        {
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
            "run": {
                "sbg:modifiedOn": 1495813869,
                "sbg:projectName": "Dev",
                "cwlVersion": "sbg:draft-2",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495727497
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495727990
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495730389
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495737299
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495811058
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495813279
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495813869
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "input_fastq1": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_fastq1.ext"
                        },
                        "input_fastq2": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_fastq2.ext"
                        },
                        "reference_fasta": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/reference_fasta.ext"
                        },
                        "chromsizes_file": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/chromsizes_file.ext"
                        },
                        "bwaIndex": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/bwaIndex.ext"
                        },
                        "outdir": "outdir-string-value",
                        "restriction_file": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/restriction_file.ext"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 12000
                    }
                },
                "sbg:latestRevision": 6,
                "baseCommand": [
                    "run-juicer.sh"
                ],
                "sbg:image_url": null,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "stdin": "",
                "sbg:createdBy": "4dn-dcic",
                "sbg:project": "4dn-dcic/dev",
                "sbg:sbgMaintained": false,
                "sbg:createdOn": 1495727497,
                "sbg:modifiedBy": "4dn-dcic",
                "requirements": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:revision": 6,
                "temporaryFailCodes": [],
                "id": "4dn-dcic/dev/juicer/6",
                "description": "",
                "stdout": "",
                "sbg:validationErrors": [],
                "class": "CommandLineTool",
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 6,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#restriction_file"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 4,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
                        "required": false,
                        "id": "#reference_fasta"
                    },
                    {
                        "sbg:toolDefaultValue": "\".\"",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "position": 7,
                            "sbg:cmdInclude": true
                        },
                        "id": "#outdir"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "required": false,
                        "id": "#input_fastq2"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "required": false,
                        "id": "#input_fastq1"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 5,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#chromsizes_file"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "BWAINDEX.TGZ",
                        "required": false,
                        "id": "#bwaIndex"
                    }
                ],
                "arguments": [],
                "sbg:id": "4dn-dcic/dev/juicer/6",
                "successCodes": [],
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
                        "dockerPull": "duplexa/4dn-hic:v13",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:cmdPreview": "run-juicer.sh",
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "merged_nodups.txt"
                        },
                        "id": "#merged_nodups"
                    }
                ],
                "y": 349.42709947004937,
                "x": 381.6666833559674,
                "label": "juicer"
            },
            "id": "#juicer",
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ],
            "sbg:x": 381.6666833559674,
            "sbg:y": 349.42709947004937
        },
        {
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
            "run": {
                "sbg:modifiedOn": 1495826456,
                "sbg:projectName": "Dev",
                "cwlVersion": "sbg:draft-2",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495826137
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495826456
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "chromsize": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/chromsize.ext"
                        },
                        "input_merged_nodups": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_merged_nodups.ext"
                        },
                        "outprefix": "outprefix-string-value",
                        "nsplit": 8
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "sbg:latestRevision": 1,
                "baseCommand": [
                    "merged_nodup2pairs.pl"
                ],
                "sbg:image_url": null,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "stdin": "",
                "sbg:createdBy": "4dn-dcic",
                "sbg:project": "4dn-dcic/dev",
                "sbg:sbgMaintained": false,
                "sbg:createdOn": 1495826137,
                "sbg:modifiedBy": "4dn-dcic",
                "requirements": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:revision": 1,
                "temporaryFailCodes": [],
                "description": "",
                "stdout": "",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/juicer2pairs/1",
                "sbg:validationErrors": [],
                "class": "CommandLineTool",
                "inputs": [
                    {
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
                        "required": false,
                        "id": "#outprefix"
                    },
                    {
                        "sbg:toolDefaultValue": "100",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "separate": false,
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "prefix": "-s"
                        },
                        "sbg:includeInPorts": false,
                        "required": false,
                        "id": "#nsplit"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".TXT",
                        "required": false,
                        "id": "#input_merged_nodups"
                    },
                    {
                        "inputBinding": {
                            "separate": true,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "required": false,
                        "id": "#chromsize"
                    }
                ],
                "arguments": [],
                "sbg:id": "4dn-dcic/dev/juicer2pairs/1",
                "successCodes": [],
                "id": "4dn-dcic/dev/juicer2pairs/1",
                "sbg:cmdPreview": "merged_nodup2pairs.pl",
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz.px2"
                        },
                        "sbg:fileTypes": ".PX2",
                        "id": "#out_pairs_px"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz"
                        },
                        "sbg:fileTypes": ".PAIRS.GZ",
                        "id": "#out_pairs"
                    }
                ],
                "y": 407.7604166666669,
                "x": 665.0000000000003,
                "label": "juicer2pairs",
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
                        "dockerPull": "duplexa/4dn-hic:v13",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    }
                ]
            },
            "id": "#juicer2pairs",
            "outputs": [
                {
                    "id": "#juicer2pairs.out_pairs_px"
                },
                {
                    "id": "#juicer2pairs.out_pairs"
                }
            ],
            "sbg:x": 665.0000000000003,
            "sbg:y": 407.7604166666669
        }
    ],
    "sbg:createdBy": "4dn-dcic",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta-juicer/5.png",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:canvas_x": 225,
    "sbg:project": "4dn-dcic/dev",
    "sbg:sbgMaintained": false,
    "sbg:createdOn": 1495645271,
    "requirements": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revision": 5,
    "label": "Hi-C_processing_partA_Juicer",
    "sbg:canvas_zoom": 0.5999999999999996,
    "description": "",
    "class": "Workflow",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "sbg:x": -79.33332717418662,
            "sbg:y": 140.66383514128128,
            "label": "fastq1",
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "id": "#fastq1"
        },
        {
            "type": [
                "File"
            ],
            "sbg:x": 24.555563087816765,
            "sbg:y": 193.10828503403184,
            "label": "fastq2",
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "id": "#fastq2"
        },
        {
            "type": [
                "File"
            ],
            "sbg:x": -11.111108400203499,
            "sbg:y": 462.3305623795146,
            "label": "bwa_index",
            "sbg:fileTypes": "BWAINDEX.TGZ",
            "id": "#bwa_index"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:x": -99.99998479419224,
            "sbg:y": 554.9952898421001,
            "label": "chrsizes",
            "sbg:fileTypes": ".CHROM.SIZES",
            "id": "#chrsizes"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:x": -113.33335151937345,
            "sbg:y": 394.9952658280505,
            "label": "reference_fasta",
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
            "id": "#reference_fasta"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "restriction_file",
            "sbg:x": -35.00001758999382,
            "sbg:y": 294.99526332484334,
            "id": "#restriction_file"
        },
        {
            "sbg:toolDefaultValue": "100",
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "sbg:suggestedValue": 100,
            "sbg:includeInPorts": false,
            "required": false,
            "id": "#nsplit"
        }
    ],
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta-juicer/5",
    "sbg:validationErrors": [],
    "hints": [],
    "outputs": [
        {
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "label": "out_pairs",
            "id": "#out_pairs",
            "sbg:fileTypes": ".PAIRS.GZ",
            "sbg:x": 1135.1589554743873,
            "source": [
                "#juicer2pairs.out_pairs"
            ],
            "required": false,
            "sbg:y": 433.94532003450297
        },
        {
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "label": "out_pairs_index",
            "id": "#out_pairs_index",
            "sbg:fileTypes": ".PX2",
            "sbg:x": 1156.8454639320414,
            "source": [
                "#juicer2pairs.out_pairs_px"
            ],
            "required": false,
            "sbg:y": 230.81040345869056
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta-juicer/5/raw/"
}