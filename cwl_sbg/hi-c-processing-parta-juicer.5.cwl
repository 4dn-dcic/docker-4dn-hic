{
    "steps": [
        {
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ],
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
            "id": "#juicer",
            "sbg:y": 349.42709947004937,
            "sbg:x": 381.6666833559674,
            "run": {
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "label": "juicer",
                "class": "CommandLineTool",
                "sbg:createdOn": 1495727497,
                "temporaryFailCodes": [],
                "requirements": [],
                "sbg:project": "4dn-dcic/dev",
                "sbg:cmdPreview": "run-juicer.sh",
                "sbg:validationErrors": [],
                "sbg:id": "4dn-dcic/dev/juicer/6",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#restriction_file",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 6
                        }
                    },
                    {
                        "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#reference_fasta",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 4
                        }
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outdir",
                        "sbg:toolDefaultValue": "\".\"",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 7
                        }
                    },
                    {
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#input_fastq2",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        }
                    },
                    {
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#input_fastq1",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#chromsizes_file",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 5
                        }
                    },
                    {
                        "sbg:fileTypes": "BWAINDEX.TGZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#bwaIndex",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        }
                    }
                ],
                "id": "4dn-dcic/dev/juicer/6",
                "stdout": "",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "arguments": [],
                "sbg:modifiedOn": 1495813869,
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
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495727497
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495727990
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495730389
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495737299
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495811058
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495813279
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495813869
                    }
                ],
                "sbg:latestRevision": 6,
                "sbg:projectName": "Dev",
                "sbg:revision": 6,
                "y": 349.42709947004937,
                "stdin": "",
                "description": "",
                "sbg:sbgMaintained": false,
                "x": 381.6666833559674,
                "sbg:image_url": null,
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 12000
                    },
                    "inputs": {
                        "input_fastq2": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq2.ext"
                        },
                        "restriction_file": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/restriction_file.ext"
                        },
                        "bwaIndex": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/bwaIndex.ext"
                        },
                        "input_fastq1": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq1.ext"
                        },
                        "chromsizes_file": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/chromsizes_file.ext"
                        },
                        "outdir": "outdir-string-value",
                        "reference_fasta": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/reference_fasta.ext"
                        }
                    }
                },
                "baseCommand": [
                    "run-juicer.sh"
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v13",
                        "class": "DockerRequirement"
                    }
                ],
                "successCodes": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:createdBy": "4dn-dcic"
            }
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
            "id": "#juicer2pairs",
            "sbg:y": 407.7604166666669,
            "sbg:x": 665.0000000000003,
            "run": {
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "label": "juicer2pairs",
                "class": "CommandLineTool",
                "inputs": [
                    {
                        "required": false,
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 4
                        }
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "required": false,
                        "id": "#nsplit",
                        "sbg:stageInput": null,
                        "sbg:includeInPorts": false,
                        "sbg:toolDefaultValue": "100",
                        "inputBinding": {
                            "separate": false,
                            "prefix": "-s",
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    },
                    {
                        "sbg:fileTypes": ".TXT",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#input_merged_nodups",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        }
                    },
                    {
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#chromsize",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        }
                    }
                ],
                "temporaryFailCodes": [],
                "requirements": [],
                "sbg:project": "4dn-dcic/dev",
                "sbg:cmdPreview": "merged_nodup2pairs.pl",
                "sbg:validationErrors": [],
                "sbg:id": "4dn-dcic/dev/juicer2pairs/1",
                "sbg:createdOn": 1495826137,
                "id": "4dn-dcic/dev/juicer2pairs/1",
                "stdout": "",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "arguments": [],
                "sbg:modifiedOn": 1495826456,
                "outputs": [
                    {
                        "sbg:fileTypes": ".PX2",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz.px2"
                        },
                        "id": "#out_pairs_px"
                    },
                    {
                        "sbg:fileTypes": ".PAIRS.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz"
                        },
                        "id": "#out_pairs"
                    }
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495826137
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495826456
                    }
                ],
                "sbg:latestRevision": 1,
                "sbg:projectName": "Dev",
                "sbg:revision": 1,
                "y": 407.7604166666669,
                "stdin": "",
                "description": "",
                "sbg:sbgMaintained": false,
                "x": 665.0000000000003,
                "sbg:image_url": null,
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "chromsize": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/chromsize.ext"
                        },
                        "input_merged_nodups": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_merged_nodups.ext"
                        },
                        "nsplit": 8,
                        "outprefix": "outprefix-string-value"
                    }
                },
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/juicer2pairs/1",
                "baseCommand": [
                    "merged_nodup2pairs.pl"
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v13",
                        "class": "DockerRequirement"
                    }
                ],
                "successCodes": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:createdBy": "4dn-dcic"
            }
        }
    ],
    "label": "Hi-C_processing_partA_Juicer",
    "class": "Workflow",
    "sbg:createdOn": 1495645271,
    "requirements": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:projectName": "Dev",
    "sbg:canvas_zoom": 0.5999999999999996,
    "sbg:validationErrors": [],
    "sbg:revision": 5,
    "inputs": [
        {
            "type": [
                "File"
            ],
            "label": "fastq1",
            "id": "#fastq1",
            "sbg:y": 140.66383514128128,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "sbg:x": -79.33332717418662
        },
        {
            "type": [
                "File"
            ],
            "label": "fastq2",
            "id": "#fastq2",
            "sbg:y": 193.10828503403184,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "sbg:x": 24.555563087816765
        },
        {
            "type": [
                "File"
            ],
            "label": "bwa_index",
            "id": "#bwa_index",
            "sbg:y": 462.3305623795146,
            "sbg:fileTypes": "BWAINDEX.TGZ",
            "sbg:x": -11.111108400203499
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "chrsizes",
            "id": "#chrsizes",
            "sbg:y": 554.9952898421001,
            "sbg:fileTypes": ".CHROM.SIZES",
            "sbg:x": -99.99998479419224
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "reference_fasta",
            "id": "#reference_fasta",
            "sbg:y": 394.9952658280505,
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
            "sbg:x": -113.33335151937345
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:x": -35.00001758999382,
            "label": "restriction_file",
            "id": "#restriction_file",
            "sbg:y": 294.99526332484334
        },
        {
            "type": [
                "null",
                "int"
            ],
            "required": false,
            "id": "#nsplit",
            "sbg:stageInput": null,
            "sbg:suggestedValue": 100,
            "sbg:includeInPorts": false,
            "sbg:toolDefaultValue": "100"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta-juicer/5/raw/",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:modifiedOn": 1495833605,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of 4dn-dcic/dev/hi-c-processing-parta/20",
            "sbg:modifiedOn": 1495645271
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495645459
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495833499
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495833561
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495833566
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495833605
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495836706
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 7,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496170708
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 8,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496431004
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 9,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497473502
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 10,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497473555
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 11,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497538622
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 12,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497641679
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 13,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497643656
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 14,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497983491
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 15,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1498165262
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 16,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1498230882
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 17,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1498844973
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 18,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499287014
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 19,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499287106
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 20,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499967331
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 21,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499967351
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 22,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499976565
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 23,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500054122
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 24,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500054228
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 25,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500054337
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 26,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500054494
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 27,
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500054599
        }
    ],
    "sbg:latestRevision": 27,
    "sbg:canvas_y": -43,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta-juicer/5",
    "description": "",
    "sbg:sbgMaintained": false,
    "sbg:canvas_x": 225,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta-juicer/5.png",
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
            "source": [
                "#juicer2pairs.out_pairs"
            ],
            "type": [
                "null",
                "File"
            ],
            "label": "out_pairs",
            "id": "#out_pairs",
            "sbg:y": 433.94532003450297,
            "sbg:fileTypes": ".PAIRS.GZ",
            "sbg:x": 1135.1589554743873,
            "sbg:includeInPorts": true,
            "required": false
        },
        {
            "source": [
                "#juicer2pairs.out_pairs_px"
            ],
            "type": [
                "null",
                "File"
            ],
            "label": "out_pairs_index",
            "id": "#out_pairs_index",
            "sbg:y": 230.81040345869056,
            "sbg:fileTypes": ".PX2",
            "sbg:x": 1156.8454639320414,
            "sbg:includeInPorts": true,
            "required": false
        }
    ],
    "hints": [],
    "sbg:createdBy": "4dn-dcic"
}