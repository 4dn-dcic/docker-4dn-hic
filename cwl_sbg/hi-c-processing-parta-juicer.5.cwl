{
    "sbg:canvas_zoom": 0.5999999999999996,
    "label": "Hi-C_processing_partA_Juicer",
    "sbg:sbgMaintained": false,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta-juicer/5",
    "sbg:latestRevision": 27,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:canvas_y": -43,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:canvas_x": 225,
    "sbg:validationErrors": [],
    "steps": [
        {
            "sbg:y": 349.42709947004937,
            "run": {
                "successCodes": [],
                "label": "juicer",
                "sbg:sbgMaintained": false,
                "sbg:job": {
                    "inputs": {
                        "chromsizes_file": {
                            "path": "/path/to/chromsizes_file.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "reference_fasta": {
                            "path": "/path/to/reference_fasta.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "outdir": "outdir-string-value",
                        "input_fastq2": {
                            "path": "/path/to/input_fastq2.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "bwaIndex": {
                            "path": "/path/to/bwaIndex.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "restriction_file": {
                            "path": "/path/to/restriction_file.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "input_fastq1": {
                            "path": "/path/to/input_fastq1.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "mem": 12000,
                        "cpu": 8
                    }
                },
                "sbg:latestRevision": 6,
                "temporaryFailCodes": [],
                "baseCommand": [
                    "run-juicer.sh"
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "y": 349.42709947004937,
                "x": 381.6666833559674,
                "sbg:validationErrors": [],
                "sbg:createdOn": 1495727497,
                "class": "CommandLineTool",
                "id": "4dn-dcic/dev/juicer/6",
                "sbg:revision": 6,
                "inputs": [
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 6
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
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 4
                        },
                        "id": "#reference_fasta",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 7
                        },
                        "id": "#outdir",
                        "sbg:toolDefaultValue": "\".\"",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "id": "#input_fastq2",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        },
                        "id": "#input_fastq1",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 5
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
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        },
                        "id": "#bwaIndex",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "sbg:fileTypes": "BWAINDEX.TGZ"
                    }
                ],
                "sbg:project": "4dn-dcic/dev",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:createdBy": "4dn-dcic",
                "requirements": [],
                "sbg:modifiedOn": 1495813869,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "arguments": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495727497,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495727990,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495730389,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495737299,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495811058,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495813279,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 5
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495813869,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 6
                    }
                ],
                "outputs": [
                    {
                        "id": "#merged_nodups",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "merged_nodups.txt"
                        }
                    }
                ],
                "sbg:id": "4dn-dcic/dev/juicer/6",
                "sbg:projectName": "Dev",
                "sbg:image_url": null,
                "sbg:cmdPreview": "run-juicer.sh",
                "stdin": "",
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
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v13",
                        "dockerImageId": ""
                    }
                ],
                "description": "",
                "cwlVersion": "sbg:draft-2"
            },
            "id": "#juicer",
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
            "sbg:x": 381.6666833559674,
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ]
        },
        {
            "sbg:y": 407.7604166666669,
            "run": {
                "successCodes": [],
                "label": "juicer2pairs",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/juicer2pairs/1",
                "sbg:job": {
                    "inputs": {
                        "input_merged_nodups": {
                            "path": "/path/to/input_merged_nodups.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "outprefix": "outprefix-string-value",
                        "chromsize": {
                            "path": "/path/to/chromsize.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "nsplit": 8
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
                "sbg:latestRevision": 1,
                "temporaryFailCodes": [],
                "baseCommand": [
                    "merged_nodup2pairs.pl"
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "y": 407.7604166666669,
                "x": 665.0000000000003,
                "sbg:validationErrors": [],
                "sbg:createdOn": 1495826137,
                "sbg:sbgMaintained": false,
                "id": "4dn-dcic/dev/juicer2pairs/1",
                "sbg:revision": 1,
                "inputs": [
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 4
                        },
                        "id": "#outprefix",
                        "sbg:toolDefaultValue": "out",
                        "required": false,
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "required": false,
                        "sbg:toolDefaultValue": "100",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 1,
                            "prefix": "-s"
                        },
                        "id": "#nsplit",
                        "sbg:includeInPorts": false,
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:stageInput": null
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "id": "#input_merged_nodups",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "sbg:fileTypes": ".TXT"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        },
                        "id": "#chromsize",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "sbg:fileTypes": ".CHROM.SIZES"
                    }
                ],
                "sbg:project": "4dn-dcic/dev",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "sbg:createdBy": "4dn-dcic",
                "requirements": [],
                "sbg:modifiedOn": 1495826456,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "arguments": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495826137,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1495826456,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revision": 1
                    }
                ],
                "outputs": [
                    {
                        "sbg:fileTypes": ".PX2",
                        "id": "#out_pairs_px",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz.px2"
                        }
                    },
                    {
                        "sbg:fileTypes": ".PAIRS.GZ",
                        "id": "#out_pairs",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz"
                        }
                    }
                ],
                "sbg:id": "4dn-dcic/dev/juicer2pairs/1",
                "sbg:projectName": "Dev",
                "sbg:image_url": null,
                "sbg:cmdPreview": "merged_nodup2pairs.pl",
                "stdin": "",
                "class": "CommandLineTool",
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
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v13",
                        "dockerImageId": ""
                    }
                ],
                "description": "",
                "cwlVersion": "sbg:draft-2"
            },
            "id": "#juicer2pairs",
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
            "sbg:x": 665.0000000000003,
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
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta-juicer/5/raw/",
    "outputs": [
        {
            "required": false,
            "sbg:x": 1135.1589554743873,
            "sbg:fileTypes": ".PAIRS.GZ",
            "sbg:includeInPorts": true,
            "id": "#out_pairs",
            "type": [
                "null",
                "File"
            ],
            "label": "out_pairs",
            "source": [
                "#juicer2pairs.out_pairs"
            ],
            "sbg:y": 433.94532003450297
        },
        {
            "required": false,
            "sbg:x": 1156.8454639320414,
            "sbg:fileTypes": ".PX2",
            "sbg:includeInPorts": true,
            "id": "#out_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "label": "out_pairs_index",
            "source": [
                "#juicer2pairs.out_pairs_px"
            ],
            "sbg:y": 230.81040345869056
        }
    ],
    "inputs": [
        {
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "id": "#fastq1",
            "label": "fastq1",
            "sbg:x": -79.33332717418662,
            "sbg:y": 140.66383514128128
        },
        {
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
            "id": "#fastq2",
            "label": "fastq2",
            "sbg:x": 24.555563087816765,
            "sbg:y": 193.10828503403184
        },
        {
            "type": [
                "File"
            ],
            "sbg:fileTypes": "BWAINDEX.TGZ",
            "id": "#bwa_index",
            "label": "bwa_index",
            "sbg:x": -11.111108400203499,
            "sbg:y": 462.3305623795146
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": ".CHROM.SIZES",
            "id": "#chrsizes",
            "label": "chrsizes",
            "sbg:x": -99.99998479419224,
            "sbg:y": 554.9952898421001
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
            "id": "#reference_fasta",
            "label": "reference_fasta",
            "sbg:x": -113.33335151937345,
            "sbg:y": 394.9952658280505
        },
        {
            "id": "#restriction_file",
            "type": [
                "null",
                "File"
            ],
            "label": "restriction_file",
            "sbg:x": -35.00001758999382,
            "sbg:y": 294.99526332484334
        },
        {
            "required": false,
            "sbg:suggestedValue": 100,
            "sbg:toolDefaultValue": "100",
            "id": "#nsplit",
            "sbg:includeInPorts": false,
            "type": [
                "null",
                "int"
            ],
            "sbg:stageInput": null
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:createdBy": "4dn-dcic",
    "requirements": [],
    "sbg:modifiedOn": 1495833605,
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of 4dn-dcic/dev/hi-c-processing-parta/20",
            "sbg:modifiedOn": 1495645271,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495645459,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495833499,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495833561,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495833566,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495833605,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1495836706,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496170708,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 7
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1496431004,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 8
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497473502,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 9
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497473555,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 10
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497538622,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 11
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497641679,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 12
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497643656,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 13
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1497983491,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 14
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1498165262,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 15
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1498230882,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 16
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1498844973,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 17
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499287014,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 18
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499287106,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 19
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499967331,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 20
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499967351,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 21
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1499976565,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 22
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500054122,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 23
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500054228,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 24
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500054337,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 25
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500054494,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 26
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1500054599,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 27
        }
    ],
    "sbg:revision": 5,
    "sbg:projectName": "Dev",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta-juicer/5.png",
    "class": "Workflow",
    "sbg:createdOn": 1495645271,
    "hints": [],
    "description": "",
    "cwlVersion": "sbg:draft-2"
}