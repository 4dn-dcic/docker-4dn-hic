{
    "description": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:latestRevision": 5,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta-juicer/5/raw/",
    "sbg:validationErrors": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_y": -43,
    "sbg:modifiedOn": 1495833605,
    "sbg:projectName": "Dev",
    "label": "Hi-C_processing_partA_Juicer",
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
        }
    ],
    "class": "Workflow",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta-juicer/5.png",
    "requirements": [],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "label": "out_pairs",
            "sbg:y": 433.94532003450297,
            "id": "#out_pairs",
            "sbg:x": 1135.1589554743873,
            "required": false,
            "source": [
                "#juicer2pairs.out_pairs"
            ],
            "sbg:includeInPorts": true,
            "sbg:fileTypes": ".PAIRS.GZ"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "out_pairs_index",
            "sbg:y": 230.81040345869056,
            "id": "#out_pairs_index",
            "sbg:x": 1156.8454639320414,
            "required": false,
            "source": [
                "#juicer2pairs.out_pairs_px"
            ],
            "sbg:includeInPorts": true,
            "sbg:fileTypes": ".PX2"
        }
    ],
    "sbg:createdBy": "4dn-dcic",
    "sbg:revision": 5,
    "sbg:createdOn": 1495645271,
    "inputs": [
        {
            "type": [
                "File"
            ],
            "label": "fastq1",
            "sbg:y": 140.66383514128128,
            "id": "#fastq1",
            "sbg:x": -79.33332717418662,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ"
        },
        {
            "type": [
                "File"
            ],
            "label": "fastq2",
            "sbg:y": 193.10828503403184,
            "id": "#fastq2",
            "sbg:x": 24.555563087816765,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ"
        },
        {
            "type": [
                "File"
            ],
            "label": "bwa_index",
            "sbg:y": 462.3305623795146,
            "id": "#bwa_index",
            "sbg:x": -11.111108400203499,
            "sbg:fileTypes": "BWAINDEX.TGZ"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "chrsizes",
            "sbg:y": 554.9952898421001,
            "id": "#chrsizes",
            "sbg:x": -99.99998479419224,
            "sbg:fileTypes": ".CHROM.SIZES"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "reference_fasta",
            "sbg:y": 394.9952658280505,
            "id": "#reference_fasta",
            "sbg:x": -113.33335151937345,
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ"
        },
        {
            "sbg:x": -35.00001758999382,
            "label": "restriction_file",
            "sbg:y": 294.99526332484334,
            "id": "#restriction_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null,
            "id": "#nsplit",
            "sbg:toolDefaultValue": "100",
            "required": false,
            "sbg:suggestedValue": 100,
            "sbg:includeInPorts": false
        }
    ],
    "steps": [
        {
            "run": {
                "description": "",
                "arguments": [],
                "stdout": "",
                "id": "4dn-dcic/dev/juicer/6",
                "sbg:validationErrors": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:projectName": "Dev",
                "sbg:modifiedOn": 1495813869,
                "label": "juicer",
                "sbg:latestRevision": 6,
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
                "class": "CommandLineTool",
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
                "requirements": [],
                "sbg:image_url": null,
                "sbg:revision": 6,
                "y": 349.42709947004937,
                "temporaryFailCodes": [],
                "inputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "inputBinding": {
                            "position": 6,
                            "separate": true,
                            "sbg:cmdInclude": true
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
                            "position": 4,
                            "separate": true,
                            "sbg:cmdInclude": true
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
                            "position": 7,
                            "separate": true,
                            "sbg:cmdInclude": true
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
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
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
                            "position": 1,
                            "separate": true,
                            "sbg:cmdInclude": true
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
                            "position": 5,
                            "separate": true,
                            "sbg:cmdInclude": true
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
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#bwaIndex",
                        "sbg:fileTypes": "BWAINDEX.TGZ"
                    }
                ],
                "sbg:createdBy": "4dn-dcic",
                "successCodes": [],
                "baseCommand": [
                    "run-juicer.sh"
                ],
                "sbg:id": "4dn-dcic/dev/juicer/6",
                "stdin": "",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:job": {
                    "inputs": {
                        "outdir": "outdir-string-value",
                        "reference_fasta": {
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/reference_fasta.ext"
                        },
                        "restriction_file": {
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/restriction_file.ext"
                        },
                        "input_fastq1": {
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/input_fastq1.ext"
                        },
                        "input_fastq2": {
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/input_fastq2.ext"
                        },
                        "bwaIndex": {
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/bwaIndex.ext"
                        },
                        "chromsizes_file": {
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/chromsizes_file.ext"
                        }
                    },
                    "allocatedResources": {
                        "mem": 12000,
                        "cpu": 8
                    }
                },
                "sbg:sbgMaintained": false,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "x": 381.6666833559674,
                "sbg:createdOn": 1495727497,
                "sbg:project": "4dn-dcic/dev",
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
                        "class": "DockerRequirement",
                        "dockerImageId": ""
                    }
                ],
                "sbg:cmdPreview": "run-juicer.sh"
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
            "sbg:y": 349.42709947004937,
            "id": "#juicer",
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ],
            "sbg:x": 381.6666833559674
        },
        {
            "run": {
                "description": "",
                "arguments": [],
                "sbg:latestRevision": 1,
                "id": "4dn-dcic/dev/juicer2pairs/1",
                "sbg:validationErrors": [],
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/juicer2pairs/1",
                "cwlVersion": "sbg:draft-2",
                "sbg:projectName": "Dev",
                "sbg:modifiedOn": 1495826456,
                "label": "juicer2pairs",
                "sbg:sbgMaintained": false,
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
                "class": "CommandLineTool",
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz.px2"
                        },
                        "id": "#out_pairs_px",
                        "sbg:fileTypes": ".PX2"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz"
                        },
                        "id": "#out_pairs",
                        "sbg:fileTypes": ".PAIRS.GZ"
                    }
                ],
                "requirements": [],
                "sbg:image_url": null,
                "sbg:revision": 1,
                "y": 407.7604166666669,
                "temporaryFailCodes": [],
                "inputs": [
                    {
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ],
                        "required": false,
                        "inputBinding": {
                            "position": 4,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#outprefix"
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "prefix": "-s",
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "100",
                        "required": false,
                        "sbg:includeInPorts": false,
                        "id": "#nsplit"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
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
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "id": "#chromsize",
                        "sbg:fileTypes": ".CHROM.SIZES"
                    }
                ],
                "sbg:createdBy": "4dn-dcic",
                "successCodes": [],
                "baseCommand": [
                    "merged_nodup2pairs.pl"
                ],
                "sbg:id": "4dn-dcic/dev/juicer2pairs/1",
                "stdin": "",
                "stdout": "",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:job": {
                    "inputs": {
                        "nsplit": 8,
                        "outprefix": "outprefix-string-value",
                        "chromsize": {
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/chromsize.ext"
                        },
                        "input_merged_nodups": {
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/input_merged_nodups.ext"
                        }
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "x": 665.0000000000003,
                "sbg:createdOn": 1495826137,
                "sbg:project": "4dn-dcic/dev",
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
                        "class": "DockerRequirement",
                        "dockerImageId": ""
                    }
                ],
                "sbg:cmdPreview": "merged_nodup2pairs.pl"
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
            "sbg:y": 407.7604166666669,
            "id": "#juicer2pairs",
            "outputs": [
                {
                    "id": "#juicer2pairs.out_pairs_px"
                },
                {
                    "id": "#juicer2pairs.out_pairs"
                }
            ],
            "sbg:x": 665.0000000000003
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta-juicer/5",
    "sbg:canvas_zoom": 0.5999999999999996,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:project": "4dn-dcic/dev",
    "hints": [],
    "sbg:canvas_x": 225
}