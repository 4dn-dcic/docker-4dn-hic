{
    "sbg:createdOn": 1495645271,
    "sbg:projectName": "Dev",
    "class": "Workflow",
    "steps": [
        {
            "run": {
                "x": 381.6666833559674,
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 12000
                    },
                    "inputs": {
                        "input_fastq2": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq2.ext",
                            "size": 0
                        },
                        "outdir": "outdir-string-value",
                        "reference_fasta": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/reference_fasta.ext",
                            "size": 0
                        },
                        "restriction_file": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/restriction_file.ext",
                            "size": 0
                        },
                        "bwaIndex": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/bwaIndex.ext",
                            "size": 0
                        },
                        "chromsizes_file": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/chromsizes_file.ext",
                            "size": 0
                        },
                        "input_fastq1": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq1.ext",
                            "size": 0
                        }
                    }
                },
                "class": "CommandLineTool",
                "sbg:modifiedOn": 1495813869,
                "stdin": "",
                "sbg:image_url": null,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:projectName": "Dev",
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
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "cwlVersion": "sbg:draft-2",
                "inputs": [
                    {
                        "id": "#restriction_file",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 6
                        },
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
                        "id": "#reference_fasta",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 4
                        },
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#outdir",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 7
                        },
                        "sbg:toolDefaultValue": "\".\"",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "id": "#input_fastq2",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "id": "#input_fastq1",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        },
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#chromsizes_file",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 5
                        },
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": "BWAINDEX.TGZ",
                        "id": "#bwaIndex",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        },
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:revision": 6,
                "label": "juicer",
                "stdout": "",
                "sbg:createdOn": 1495727497,
                "arguments": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495727497,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495727990,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495730389,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495737299,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495811058,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495813279,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495813869,
                        "sbg:revision": 6
                    }
                ],
                "temporaryFailCodes": [],
                "sbg:createdBy": "4dn-dcic",
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
                "id": "4dn-dcic/dev/juicer/6",
                "requirements": [],
                "successCodes": [],
                "baseCommand": [
                    "run-juicer.sh"
                ],
                "y": 349.42709947004937,
                "sbg:latestRevision": 6,
                "description": "",
                "sbg:id": "4dn-dcic/dev/juicer/6",
                "sbg:cmdPreview": "run-juicer.sh",
                "sbg:project": "4dn-dcic/dev",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:sbgMaintained": false,
                "sbg:validationErrors": []
            },
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ],
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
            "id": "#juicer",
            "sbg:x": 381.6666833559674
        },
        {
            "run": {
                "x": 665.0000000000003,
                "sbg:createdOn": 1495826137,
                "sbg:validationErrors": [],
                "sbg:modifiedOn": 1495826456,
                "stdin": "",
                "sbg:image_url": null,
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:projectName": "Dev",
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
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "cwlVersion": "sbg:draft-2",
                "inputs": [
                    {
                        "id": "#outprefix",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 4
                        },
                        "required": false,
                        "sbg:toolDefaultValue": "out",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "sbg:stageInput": null,
                        "sbg:includeInPorts": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "prefix": "-s",
                            "separate": false,
                            "position": 1
                        },
                        "required": false,
                        "sbg:toolDefaultValue": "100",
                        "id": "#nsplit",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "sbg:fileTypes": ".TXT",
                        "id": "#input_merged_nodups",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "id": "#chromsize",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        },
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "class": "CommandLineTool",
                "sbg:revision": 1,
                "label": "juicer2pairs",
                "stdout": "",
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "outprefix": "outprefix-string-value",
                        "chromsize": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/chromsize.ext",
                            "size": 0
                        },
                        "nsplit": 8,
                        "input_merged_nodups": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_merged_nodups.ext",
                            "size": 0
                        }
                    }
                },
                "arguments": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495826137,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1495826456,
                        "sbg:revision": 1
                    }
                ],
                "temporaryFailCodes": [],
                "sbg:createdBy": "4dn-dcic",
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz.px2"
                        },
                        "id": "#out_pairs_px",
                        "sbg:fileTypes": ".PX2",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz"
                        },
                        "id": "#out_pairs",
                        "sbg:fileTypes": ".PAIRS.GZ",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "id": "4dn-dcic/dev/juicer2pairs/1",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/juicer2pairs/1",
                "requirements": [],
                "successCodes": [],
                "baseCommand": [
                    "merged_nodup2pairs.pl"
                ],
                "y": 407.7604166666669,
                "sbg:latestRevision": 1,
                "description": "",
                "sbg:id": "4dn-dcic/dev/juicer2pairs/1",
                "sbg:cmdPreview": "merged_nodup2pairs.pl",
                "sbg:project": "4dn-dcic/dev",
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:sbgMaintained": false
            },
            "outputs": [
                {
                    "id": "#juicer2pairs.out_pairs_px"
                },
                {
                    "id": "#juicer2pairs.out_pairs"
                }
            ],
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
            "id": "#juicer2pairs",
            "sbg:x": 665.0000000000003
        }
    ],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta-juicer/5.png",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "label": "fastq1",
            "type": [
                "File"
            ],
            "sbg:y": 140.66383514128128,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "id": "#fastq1",
            "sbg:x": -79.33332717418662
        },
        {
            "label": "fastq2",
            "type": [
                "File"
            ],
            "sbg:y": 193.10828503403184,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "id": "#fastq2",
            "sbg:x": 24.555563087816765
        },
        {
            "label": "bwa_index",
            "type": [
                "File"
            ],
            "sbg:y": 462.3305623795146,
            "sbg:fileTypes": "BWAINDEX.TGZ",
            "id": "#bwa_index",
            "sbg:x": -11.111108400203499
        },
        {
            "label": "chrsizes",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 554.9952898421001,
            "sbg:fileTypes": ".CHROM.SIZES",
            "id": "#chrsizes",
            "sbg:x": -99.99998479419224
        },
        {
            "label": "reference_fasta",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 394.9952658280505,
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
            "id": "#reference_fasta",
            "sbg:x": -113.33335151937345
        },
        {
            "label": "restriction_file",
            "id": "#restriction_file",
            "sbg:x": -35.00001758999382,
            "sbg:y": 294.99526332484334,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:stageInput": null,
            "sbg:includeInPorts": false,
            "required": false,
            "sbg:toolDefaultValue": "100",
            "sbg:suggestedValue": 100,
            "id": "#nsplit",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "sbg:validationErrors": [],
    "label": "Hi-C_processing_partA_Juicer",
    "sbg:canvas_x": 225,
    "sbg:revision": 5,
    "sbg:sbgMaintained": false,
    "sbg:canvas_y": -43,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta-juicer/5",
    "sbg:createdBy": "4dn-dcic",
    "outputs": [
        {
            "label": "out_pairs",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 433.94532003450297,
            "required": false,
            "sbg:fileTypes": ".PAIRS.GZ",
            "id": "#out_pairs",
            "sbg:x": 1135.1589554743873,
            "source": [
                "#juicer2pairs.out_pairs"
            ],
            "sbg:includeInPorts": true
        },
        {
            "label": "out_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 230.81040345869056,
            "required": false,
            "sbg:fileTypes": ".PX2",
            "id": "#out_pairs_index",
            "sbg:x": 1156.8454639320414,
            "source": [
                "#juicer2pairs.out_pairs_px"
            ],
            "sbg:includeInPorts": true
        }
    ],
    "sbg:canvas_zoom": 0.5999999999999996,
    "requirements": [],
    "hints": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of 4dn-dcic/dev/hi-c-processing-parta/20",
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495645271,
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495645459,
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833499,
            "sbg:revision": 2
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833561,
            "sbg:revision": 3
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833566,
            "sbg:revision": 4
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495833605,
            "sbg:revision": 5
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1495836706,
            "sbg:revision": 6
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496170708,
            "sbg:revision": 7
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1496431004,
            "sbg:revision": 8
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497473502,
            "sbg:revision": 9
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497473555,
            "sbg:revision": 10
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497538622,
            "sbg:revision": 11
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497641679,
            "sbg:revision": 12
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497643656,
            "sbg:revision": 13
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1497983491,
            "sbg:revision": 14
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1498165262,
            "sbg:revision": 15
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1498230882,
            "sbg:revision": 16
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1498844973,
            "sbg:revision": 17
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499287014,
            "sbg:revision": 18
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499287106,
            "sbg:revision": 19
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499967331,
            "sbg:revision": 20
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499967351,
            "sbg:revision": 21
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1499976565,
            "sbg:revision": 22
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054122,
            "sbg:revision": 23
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054228,
            "sbg:revision": 24
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054337,
            "sbg:revision": 25
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054494,
            "sbg:revision": 26
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1500054599,
            "sbg:revision": 27
        }
    ],
    "sbg:latestRevision": 27,
    "description": "",
    "sbg:modifiedOn": 1495833605,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta-juicer/5/raw/",
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedBy": "4dn-dcic"
}