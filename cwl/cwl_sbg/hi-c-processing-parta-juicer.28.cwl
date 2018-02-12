{
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/hi-c-processing-parta-juicer/28/raw/",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/hi-c-processing-parta-juicer/28.png",
    "sbg:canvas_y": 15,
    "sbg:project": "4dn-dcic/dev",
    "description": "",
    "inputs": [
        {
            "id": "#fastq1",
            "type": [
                "File"
            ],
            "sbg:y": 140.66383514128128,
            "label": "fastq1",
            "sbg:x": -79.33332717418662,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ"
        },
        {
            "id": "#fastq2",
            "type": [
                "File"
            ],
            "sbg:y": 193.10828503403184,
            "label": "fastq2",
            "sbg:x": 24.555563087816765,
            "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ"
        },
        {
            "id": "#bwa_index",
            "type": [
                "File"
            ],
            "sbg:y": 462.3305623795146,
            "label": "bwa_index",
            "sbg:x": -11.111108400203499,
            "sbg:fileTypes": "BWAINDEX.TGZ"
        },
        {
            "id": "#chrsizes",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 554.9952898421001,
            "label": "chrsizes",
            "sbg:x": -99.99998479419224,
            "sbg:fileTypes": ".CHROM.SIZES"
        },
        {
            "id": "#reference_fasta",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 394.9952658280505,
            "label": "reference_fasta",
            "sbg:x": -113.33335151937345,
            "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ"
        },
        {
            "sbg:x": -35.00001758999382,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 294.99526332484334,
            "id": "#restriction_file",
            "label": "restriction_file"
        },
        {
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "8",
            "required": false,
            "id": "#ncores"
        },
        {
            "id": "#nsplit",
            "type": [
                "null",
                "int"
            ],
            "required": false,
            "sbg:suggestedValue": 100,
            "sbg:stageInput": null,
            "sbg:toolDefaultValue": "100",
            "sbg:includeInPorts": false
        },
        {
            "sbg:stageInput": null,
            "type": [
                "null",
                "int"
            ],
            "id": "#max_remove_mapq"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:validationErrors": [],
    "hints": [
        {
            "class": "sbg:AWSInstanceType",
            "value": "r3.8xlarge;ebs-gp2;4096"
        }
    ],
    "sbg:modifiedOn": 1504211015,
    "sbg:canvas_x": 174,
    "sbg:contributors": [
        "4dn-dcic"
    ],
    "sbg:latestRevision": 28,
    "sbg:id": "4dn-dcic/dev/hi-c-processing-parta-juicer/28",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:canvas_zoom": 0.5999999999999996,
    "outputs": [
        {
            "id": "#out_pairs",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 433.94532003450297,
            "source": [
                "#juicer2pairs.out_pairs"
            ],
            "required": false,
            "label": "out_pairs",
            "sbg:x": 1135.1589554743873,
            "sbg:fileTypes": ".PAIRS.GZ",
            "sbg:includeInPorts": true
        },
        {
            "id": "#out_pairs_index",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 230.81040345869056,
            "source": [
                "#juicer2pairs.out_pairs_px"
            ],
            "required": false,
            "label": "out_pairs_index",
            "sbg:x": 1156.8454639320414,
            "sbg:fileTypes": ".PX2",
            "sbg:includeInPorts": true
        },
        {
            "id": "#merged_nodups",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 128.3333347373537,
            "source": [
                "#juicer.merged_nodups"
            ],
            "required": false,
            "label": "merged_nodups",
            "sbg:x": 1098.3332934114642,
            "sbg:includeInPorts": true
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1495645271,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "Copy of 4dn-dcic/dev/hi-c-processing-parta/20",
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1495645459,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1495833499,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedOn": 1495833561,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 3
        },
        {
            "sbg:modifiedOn": 1495833566,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 4
        },
        {
            "sbg:modifiedOn": 1495833605,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 5
        },
        {
            "sbg:modifiedOn": 1495836706,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 6
        },
        {
            "sbg:modifiedOn": 1496170708,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 7
        },
        {
            "sbg:modifiedOn": 1496431004,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 8
        },
        {
            "sbg:modifiedOn": 1497473502,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 9
        },
        {
            "sbg:modifiedOn": 1497473555,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 10
        },
        {
            "sbg:modifiedOn": 1497538622,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 11
        },
        {
            "sbg:modifiedOn": 1497641679,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 12
        },
        {
            "sbg:modifiedOn": 1497643656,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 13
        },
        {
            "sbg:modifiedOn": 1497983491,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 14
        },
        {
            "sbg:modifiedOn": 1498165262,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 15
        },
        {
            "sbg:modifiedOn": 1498230882,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 16
        },
        {
            "sbg:modifiedOn": 1498844973,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 17
        },
        {
            "sbg:modifiedOn": 1499287014,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 18
        },
        {
            "sbg:modifiedOn": 1499287106,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 19
        },
        {
            "sbg:modifiedOn": 1499967331,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 20
        },
        {
            "sbg:modifiedOn": 1499967351,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 21
        },
        {
            "sbg:modifiedOn": 1499976565,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 22
        },
        {
            "sbg:modifiedOn": 1500054122,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 23
        },
        {
            "sbg:modifiedOn": 1500054228,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 24
        },
        {
            "sbg:modifiedOn": 1500054337,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 25
        },
        {
            "sbg:modifiedOn": 1500054494,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 26
        },
        {
            "sbg:modifiedOn": 1500054599,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 27
        },
        {
            "sbg:modifiedOn": 1504211015,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null,
            "sbg:revision": 28
        }
    ],
    "sbg:createdOn": 1495645271,
    "requirements": [],
    "steps": [
        {
            "id": "#juicer",
            "sbg:y": 349.42709947004937,
            "run": {
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/juicer/20/raw/",
                "sbg:image_url": null,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1495727497,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1495727990,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedOn": 1495730389,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedOn": 1495737299,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedOn": 1495811058,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedOn": 1495813279,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedOn": 1495813869,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6
                    },
                    {
                        "sbg:modifiedOn": 1496430760,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 7
                    },
                    {
                        "sbg:modifiedOn": 1497023661,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 8
                    },
                    {
                        "sbg:modifiedOn": 1497279074,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 9
                    },
                    {
                        "sbg:modifiedOn": 1497286447,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 10
                    },
                    {
                        "sbg:modifiedOn": 1497296603,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 11
                    },
                    {
                        "sbg:modifiedOn": 1497473471,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 12
                    },
                    {
                        "sbg:modifiedOn": 1497641646,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 13
                    },
                    {
                        "sbg:modifiedOn": 1497643637,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 14
                    },
                    {
                        "sbg:modifiedOn": 1497645323,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 15
                    },
                    {
                        "sbg:modifiedOn": 1497982864,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 16
                    },
                    {
                        "sbg:modifiedOn": 1498164917,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 17
                    },
                    {
                        "sbg:modifiedOn": 1499287064,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 18
                    },
                    {
                        "sbg:modifiedOn": 1500054207,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 19
                    },
                    {
                        "sbg:modifiedOn": 1504210947,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 20
                    }
                ],
                "sbg:cmdPreview": "run-juicer.sh",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "temporaryFailCodes": [],
                "description": "",
                "inputs": [
                    {
                        "id": "#input_fastq1",
                        "sbg:fileTypes": "FQ, FASTQ, FQ.GZ, FASTQ.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
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
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        }
                    },
                    {
                        "id": "#bwaIndex",
                        "sbg:fileTypes": "BWAINDEX.TGZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        }
                    },
                    {
                        "id": "#reference_fasta",
                        "sbg:fileTypes": "FA, FASTA, FA.GZ, FASTA.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 4
                        }
                    },
                    {
                        "id": "#chromsizes_file",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 5
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#restriction_file",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 6
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#outdir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": ".",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 8
                        }
                    },
                    {
                        "sbg:stageInput": null,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 7
                        },
                        "sbg:toolDefaultValue": "8",
                        "id": "#ncores",
                        "type": [
                            "null",
                            "int"
                        ]
                    }
                ],
                "arguments": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v35",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:modifiedOn": 1504210947,
                "baseCommand": [
                    "run-juicer.sh"
                ],
                "stdout": "",
                "sbg:latestRevision": 20,
                "sbg:id": "4dn-dcic/dev/juicer/20",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "outputs": [
                    {
                        "id": "#merged_nodups",
                        "outputBinding": {
                            "glob": "$job.inputs.outdir + '/data_dir/aligned/merged_nodups.txt'"
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 12000,
                        "cpu": 8
                    },
                    "inputs": {
                        "reference_fasta": {
                            "secondaryFiles": [],
                            "path": "/path/to/reference_fasta.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "chromsizes_file": {
                            "secondaryFiles": [],
                            "path": "/path/to/chromsizes_file.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "input_fastq2": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq2.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "input_fastq1": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq1.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "bwaIndex": {
                            "secondaryFiles": [],
                            "path": "/path/to/bwaIndex.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "outdir": "outdir-string-value",
                        "ncores": 6,
                        "restriction_file": {
                            "secondaryFiles": [],
                            "path": "/path/to/restriction_file.ext",
                            "size": 0,
                            "class": "File"
                        }
                    }
                },
                "sbg:createdOn": 1495727497,
                "requirements": [],
                "sbg:project": "4dn-dcic/dev",
                "sbg:sbgMaintained": false,
                "label": "juicer",
                "stdin": "",
                "sbg:createdBy": "4dn-dcic",
                "sbg:projectName": "Dev",
                "class": "CommandLineTool",
                "sbg:revision": 20
            },
            "sbg:x": 381.66668335596745,
            "outputs": [
                {
                    "id": "#juicer.merged_nodups"
                }
            ],
            "inputs": [
                {
                    "id": "#juicer.input_fastq1",
                    "source": [
                        "#fastq1"
                    ]
                },
                {
                    "id": "#juicer.input_fastq2",
                    "source": [
                        "#fastq2"
                    ]
                },
                {
                    "id": "#juicer.bwaIndex",
                    "source": [
                        "#bwa_index"
                    ]
                },
                {
                    "id": "#juicer.reference_fasta",
                    "source": [
                        "#reference_fasta"
                    ]
                },
                {
                    "id": "#juicer.chromsizes_file",
                    "source": [
                        "#chrsizes"
                    ]
                },
                {
                    "id": "#juicer.restriction_file",
                    "source": [
                        "#restriction_file"
                    ]
                },
                {
                    "default": ".",
                    "id": "#juicer.outdir"
                },
                {
                    "id": "#juicer.ncores",
                    "source": [
                        "#ncores"
                    ]
                }
            ]
        },
        {
            "id": "#juicer2pairs",
            "sbg:y": 406.09376613671606,
            "run": {
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/juicer2pairs/9/raw/",
                "sbg:image_url": null,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1495826137,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1495826456,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedOn": 1496170558,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedOn": 1496170675,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedOn": 1499285187,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedOn": 1499966837,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedOn": 1499976359,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6
                    },
                    {
                        "sbg:modifiedOn": 1499976847,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 7
                    },
                    {
                        "sbg:modifiedOn": 1499980862,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 8
                    },
                    {
                        "sbg:modifiedOn": 1504210977,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 9
                    }
                ],
                "sbg:cmdPreview": "merged_nodup2pairs.pl",
                "sbg:contributors": [
                    "4dn-dcic"
                ],
                "temporaryFailCodes": [],
                "description": "",
                "inputs": [
                    {
                        "id": "#input_merged_nodups",
                        "sbg:fileTypes": ".TXT",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        }
                    },
                    {
                        "id": "#chromsize",
                        "sbg:fileTypes": ".CHROM.SIZES",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 4
                        }
                    },
                    {
                        "id": "#nsplit",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "100",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "-s",
                            "position": 1
                        }
                    },
                    {
                        "id": "#outprefix",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "out",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 5
                        }
                    },
                    {
                        "id": "#max_remove_mapq",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "-m",
                            "position": 2
                        },
                        "type": [
                            "null",
                            "int"
                        ]
                    }
                ],
                "arguments": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/4dn-hic:v35",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:modifiedOn": 1504210977,
                "baseCommand": [
                    "merged_nodup2pairs.pl"
                ],
                "stdout": "",
                "sbg:latestRevision": 9,
                "sbg:id": "4dn-dcic/dev/juicer2pairs/9",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "outputs": [
                    {
                        "id": "#out_pairs",
                        "sbg:fileTypes": ".PAIRS.GZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz"
                        }
                    },
                    {
                        "id": "#out_pairs_px",
                        "sbg:fileTypes": ".PX2",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "*.bsorted.pairs.gz.px2"
                        }
                    }
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 12000,
                        "cpu": 8
                    },
                    "inputs": {
                        "nsplit": 8,
                        "outprefix": "outprefix-string-value",
                        "chromsize": {
                            "secondaryFiles": [],
                            "path": "/path/to/chromsize.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "max_remove_mapq": 2,
                        "input_merged_nodups": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_merged_nodups.ext",
                            "size": 0,
                            "class": "File"
                        }
                    }
                },
                "sbg:createdOn": 1495826137,
                "requirements": [],
                "sbg:project": "4dn-dcic/dev",
                "sbg:sbgMaintained": false,
                "label": "juicer2pairs",
                "stdin": "",
                "sbg:createdBy": "4dn-dcic",
                "sbg:projectName": "Dev",
                "class": "CommandLineTool",
                "sbg:revision": 9
            },
            "sbg:x": 670.0000264247262,
            "outputs": [
                {
                    "id": "#juicer2pairs.out_pairs"
                },
                {
                    "id": "#juicer2pairs.out_pairs_px"
                }
            ],
            "inputs": [
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
                },
                {
                    "default": 100,
                    "id": "#juicer2pairs.nsplit",
                    "source": [
                        "#nsplit"
                    ]
                },
                {
                    "default": "out",
                    "id": "#juicer2pairs.outprefix"
                },
                {
                    "id": "#juicer2pairs.max_remove_mapq",
                    "source": [
                        "#max_remove_mapq"
                    ]
                }
            ]
        }
    ],
    "sbg:sbgMaintained": false,
    "label": "Hi-C_processing_partA_Juicer",
    "sbg:createdBy": "4dn-dcic",
    "sbg:projectName": "Dev",
    "class": "Workflow",
    "sbg:revision": 28
}