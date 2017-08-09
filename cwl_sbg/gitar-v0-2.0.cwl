{
    "sbg:canvas_y": 66,
    "hints": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "requirements": [],
    "sbg:canvas_x": 1,
    "outputs": [
        {
            "sbg:includeInPorts": true,
            "sbg:x": 391.6240561803214,
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "label": "sorted_bam_pe",
            "id": "#sorted_bam_pe",
            "required": false,
            "sbg:y": 328.1196788763388,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 717.1795962773863,
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "label": "HiC_project_object_hdf5",
            "id": "#HiC_project_object_hdf5",
            "required": false,
            "sbg:y": 124.61539063086903,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 939.2309175553464,
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "label": "HiC_distance_function_hdf5",
            "id": "#HiC_distance_function_hdf5",
            "required": false,
            "sbg:y": 500.3419382689756,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 1489.2308385555568,
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "label": "normalized_fend_contact_matrix",
            "id": "#normalized_fend_contact_matrix",
            "required": false,
            "sbg:y": 190.94018009381435,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 1573.6754030664124,
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "label": "normalized_enrich_contact_matrix",
            "id": "#normalized_enrich_contact_matrix",
            "required": false,
            "sbg:y": 330.17099214681946,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 1345.2138202308008,
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "label": "expected_enrich_contact_matrix",
            "id": "#expected_enrich_contact_matrix",
            "required": false,
            "sbg:y": 530.5983404200941,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 328.92306357163494,
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "label": "split_bam2",
            "id": "#split_bam2",
            "required": false,
            "sbg:y": -50.256409131563785,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 368.92312900836833,
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "label": "split_bam1",
            "id": "#split_bam1",
            "required": false,
            "sbg:y": 59.384607461782,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 666.1538890691907,
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "label": "fend_object_hdf5",
            "id": "#fend_object_hdf5",
            "required": false,
            "sbg:y": 21.538473569430273,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 984.1028403502372,
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "label": "HiC_norm_binning_hdf5",
            "id": "#HiC_norm_binning_hdf5",
            "required": false,
            "sbg:y": 357.7436426095023,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 777.7437167478082,
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "label": "HiC_data_object_hdf5",
            "id": "#HiC_data_object_hdf5",
            "required": false,
            "sbg:y": 558.9744715323862,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 1323.0770296232263,
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "label": "observed_contact_matrix",
            "id": "#observed_contact_matrix",
            "required": false,
            "sbg:y": 86.15384043744288,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 1520.0001224540429,
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "label": "expected_fend_contact_matrix",
            "id": "#expected_fend_contact_matrix",
            "required": false,
            "sbg:y": 470.76925607828014,
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:latestRevision": 0,
    "class": "Workflow",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274706,
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "description": "",
    "sbg:revision": 0,
    "cwlVersion": "sbg:draft-2",
    "steps": [
        {
            "sbg:x": 265,
            "run": {
                "hints": [
                    {
                        "value": 24000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "dockerPull": "duplexa/hictool-fastq2bam:v3",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    },
                    {
                        "value": 4,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": "i2.xlarge",
                        "class": "sbg:AWSInstanceType"
                    }
                ],
                "id": "gaurav/4dn/fastq2bam/14",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "outputs": [
                    {
                        "id": "#split_bam2",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#split_bam1",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#sorted_bam_pe",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "stdin": "",
                "temporaryFailCodes": [],
                "sbg:modifiedOn": 1467992192,
                "sbg:latestRevision": 14,
                "class": "CommandLineTool",
                "sbg:revision": 14,
                "inputs": [
                    {
                        "sbg:includeInPorts": false,
                        "id": "#output_dir",
                        "sbg:toolDefaultValue": ".",
                        "inputBinding": {
                            "position": 4,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression"
                            },
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#input_fastq2",
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 3
                        },
                        "sbg:fileTypes": "FASTQ, FQ",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "id": "#input_fastq1",
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 2
                        },
                        "sbg:fileTypes": "FASTQ, FQ",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "id": "#bowtie_index",
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 1
                        },
                        "sbg:fileTypes": "TGZ",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1464804268,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1464816082,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1464816200,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1464816230,
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1465323168,
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1465400656,
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1465844403,
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467828936,
                        "sbg:revision": 7,
                        "sbg:revisionNotes": "r3.x4large",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467829775,
                        "sbg:revision": 8,
                        "sbg:revisionNotes": "docker image v2.",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467832142,
                        "sbg:revision": 9,
                        "sbg:revisionNotes": "removed outprefix from output files",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467832711,
                        "sbg:revision": 10,
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem.",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467834125,
                        "sbg:revision": 11,
                        "sbg:revisionNotes": "bowtie_index redefined.",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467838837,
                        "sbg:revision": 12,
                        "sbg:revisionNotes": "i2.xlarge",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989772,
                        "sbg:revision": 13,
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467992192,
                        "sbg:revision": 14,
                        "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "sbg:job": {
                    "inputs": {
                        "input_fastq2": {
                            "path": "/path/to/input_fastq2.fastq",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "output_dir": "output_dir",
                        "bowtie_index": {
                            "path": "/path/to/bowtie_index.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "input_fastq1": {
                            "path": "/path/to/input_fastq1.fastq",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        }
                    },
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    }
                },
                "cwlVersion": "sbg:draft-2",
                "y": 226,
                "arguments": [],
                "sbg:sbgMaintained": false,
                "sbg:project": "gaurav/4dn",
                "sbg:validationErrors": [],
                "stdout": "",
                "x": 265,
                "label": "hictool-fastq2bam",
                "sbg:image_url": null,
                "sbg:createdBy": "gaurav",
                "successCodes": [],
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "description": "",
                "sbg:modifiedBy": "duplexa",
                "sbg:createdOn": 1464804268
            },
            "id": "#hictool_fastq2bam",
            "outputs": [
                {
                    "id": "#hictool_fastq2bam.split_bam2"
                },
                {
                    "id": "#hictool_fastq2bam.split_bam1"
                },
                {
                    "id": "#hictool_fastq2bam.sorted_bam_pe"
                }
            ],
            "inputs": [
                {
                    "id": "#hictool_fastq2bam.output_dir",
                    "default": "."
                },
                {
                    "id": "#hictool_fastq2bam.input_fastq2",
                    "source": [
                        "#input_fastq2"
                    ]
                },
                {
                    "id": "#hictool_fastq2bam.input_fastq1",
                    "source": [
                        "#input_fastq1"
                    ]
                },
                {
                    "id": "#hictool_fastq2bam.bowtie_index",
                    "source": [
                        "#bowtie_index"
                    ]
                }
            ],
            "sbg:y": 226
        },
        {
            "sbg:x": 588.9231050931494,
            "run": {
                "hints": [
                    {
                        "value": 4,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": 24000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "dockerPull": "duplexa/hictool-bam2hdf5:v2",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    }
                ],
                "id": "gaurav/4dn/bam2hdf5/4",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "outputs": [
                    {
                        "id": "#fend_object_hdf5",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#HiC_project_object_hdf5",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#HiC_norm_binning_hdf5",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#HiC_distance_function_hdf5",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#HiC_data_object_hdf5",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "stdin": "",
                "temporaryFailCodes": [],
                "sbg:modifiedOn": 1467995167,
                "sbg:latestRevision": 4,
                "class": "CommandLineTool",
                "sbg:revision": 4,
                "inputs": [
                    {
                        "id": "#output_dir",
                        "inputBinding": {
                            "position": 4,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression"
                            },
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#input_bam2",
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 2
                        },
                        "sbg:fileTypes": "BAM",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "id": "#input_bam1",
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 1
                        },
                        "sbg:fileTypes": "BAM",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "id": "#RE_bed",
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 3
                        },
                        "sbg:fileTypes": "BED",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1467989155,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989197,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989438,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": "docker bam2hdf5:v2",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989798,
                        "sbg:revision": 3,
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467995167,
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:job": {
                    "inputs": {
                        "input_bam1": {
                            "path": "/path/to/input_bam1.bam",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "output_dir": "output_dir",
                        "RE_bed": {
                            "path": "/path/to/RE_bed.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "input_bam2": {
                            "path": "/path/to/input_bam2.bam",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        }
                    },
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    }
                },
                "cwlVersion": "sbg:draft-2",
                "y": 230.38462831423846,
                "arguments": [],
                "sbg:sbgMaintained": false,
                "sbg:project": "gaurav/4dn",
                "sbg:validationErrors": [],
                "stdout": "",
                "x": 588.9231050931494,
                "label": "hictool-bam2hdf5",
                "sbg:image_url": null,
                "sbg:createdBy": "duplexa",
                "successCodes": [],
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "description": "",
                "sbg:modifiedBy": "duplexa",
                "sbg:createdOn": 1467989155
            },
            "id": "#hictool_bam2hdf5",
            "outputs": [
                {
                    "id": "#hictool_bam2hdf5.fend_object_hdf5"
                },
                {
                    "id": "#hictool_bam2hdf5.HiC_project_object_hdf5"
                },
                {
                    "id": "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
                },
                {
                    "id": "#hictool_bam2hdf5.HiC_distance_function_hdf5"
                },
                {
                    "id": "#hictool_bam2hdf5.HiC_data_object_hdf5"
                }
            ],
            "inputs": [
                {
                    "id": "#hictool_bam2hdf5.output_dir",
                    "default": "."
                },
                {
                    "id": "#hictool_bam2hdf5.input_bam2",
                    "source": [
                        "#hictool_fastq2bam.split_bam2"
                    ]
                },
                {
                    "id": "#hictool_bam2hdf5.input_bam1",
                    "source": [
                        "#hictool_fastq2bam.split_bam1"
                    ]
                },
                {
                    "id": "#hictool_bam2hdf5.RE_bed",
                    "source": [
                        "#RE_bed"
                    ]
                }
            ],
            "sbg:y": 230.38462831423846
        },
        {
            "sbg:x": 1105.3846988706214,
            "outputs": [
                {
                    "id": "#hictool_hdf52matrix.observed_contact_matrix"
                },
                {
                    "id": "#hictool_hdf52matrix.normalized_fend_contact_matrix"
                },
                {
                    "id": "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
                },
                {
                    "id": "#hictool_hdf52matrix.expected_fend_contact_matrix"
                },
                {
                    "id": "#hictool_hdf52matrix.expected_enrich_contact_matrix"
                }
            ],
            "run": {
                "hints": [
                    {
                        "value": 8,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": 8000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "dockerPull": "duplexa/hictool-hdf52matrix:v2",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    }
                ],
                "id": "gaurav/4dn/bam2matrix2/7",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "outputs": [
                    {
                        "id": "#observed_contact_matrix",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#normalized_fend_contact_matrix",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#normalized_enrich_contact_matrix",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#expected_fend_contact_matrix",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#expected_enrich_contact_matrix",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "stdin": "",
                "temporaryFailCodes": [],
                "sbg:modifiedOn": 1467995451,
                "sbg:latestRevision": 7,
                "class": "CommandLineTool",
                "sbg:revision": 7,
                "inputs": [
                    {
                        "id": "#output_dir",
                        "required": false,
                        "inputBinding": {
                            "position": 5,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression"
                            },
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#fend_object_hdf5",
                        "required": false,
                        "sbg:fileTypes": "HDF5",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:includeInPorts": true,
                        "sbg:toolDefaultValue": "50000",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 3
                        },
                        "id": "#contact_matrix_binsize",
                        "required": true,
                        "type": [
                            "int"
                        ]
                    },
                    {
                        "sbg:includeInPorts": true,
                        "id": "#chromosome",
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 2
                        },
                        "type": [
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "id": "#chrlen_file",
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#HiC_norm_binning_hdf5",
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 1
                        },
                        "sbg:fileTypes": "HDF5",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "id": "#HiC_data_object_hdf5",
                        "required": false,
                        "sbg:fileTypes": "HDF5",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1464816740,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1464818050,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1467989666,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": "docker hdf52matrix:v2",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989698,
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989823,
                        "sbg:revision": 4,
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467991994,
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467992019,
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467995451,
                        "sbg:revision": 7,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "sbg:job": {
                    "inputs": {
                        "chromosome": "chromosome",
                        "output_dir": "output_dir",
                        "chrlen_file": {
                            "path": "/path/to/chrlen_file.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "HiC_data_object_hdf5": {
                            "path": "/path/to/HiC_data_object_hdf5.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "contact_matrix_binsize": 0,
                        "HiC_norm_binning_hdf5": {
                            "path": "/path/to/HiC_norm_binning_hdf5.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "fend_object_hdf5": {
                            "path": "/path/to/fend_object_hdf5.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        }
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    }
                },
                "cwlVersion": "sbg:draft-2",
                "y": 228.6923403133314,
                "arguments": [],
                "sbg:sbgMaintained": false,
                "sbg:project": "gaurav/4dn",
                "sbg:validationErrors": [],
                "stdout": "",
                "x": 1105.3846988706214,
                "label": "hictool-hdf52matrix",
                "sbg:image_url": null,
                "sbg:createdBy": "gaurav",
                "successCodes": [],
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "description": "",
                "sbg:modifiedBy": "duplexa",
                "sbg:createdOn": 1464816740
            },
            "id": "#hictool_hdf52matrix",
            "scatter": "#hictool_hdf52matrix.chromosome",
            "inputs": [
                {
                    "id": "#hictool_hdf52matrix.output_dir",
                    "default": "."
                },
                {
                    "id": "#hictool_hdf52matrix.fend_object_hdf5",
                    "source": [
                        "#hictool_bam2hdf5.fend_object_hdf5"
                    ]
                },
                {
                    "id": "#hictool_hdf52matrix.contact_matrix_binsize",
                    "source": [
                        "#contact_matrix_binsize"
                    ]
                },
                {
                    "id": "#hictool_hdf52matrix.chromosome",
                    "source": [
                        "#chromosome"
                    ]
                },
                {
                    "id": "#hictool_hdf52matrix.chrlen_file",
                    "source": [
                        "#chrlen_file"
                    ]
                },
                {
                    "id": "#hictool_hdf52matrix.HiC_norm_binning_hdf5",
                    "source": [
                        "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
                    ]
                },
                {
                    "id": "#hictool_hdf52matrix.HiC_data_object_hdf5",
                    "source": [
                        "#hictool_bam2hdf5.HiC_data_object_hdf5"
                    ]
                }
            ],
            "sbg:y": 228.6923403133314
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:project": "4dn-dcic/dev",
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "duplexa",
    "sbg:modifiedOn": 1473274706,
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "sbg:createdOn": 1473274706,
    "label": "GITAR v0.2",
    "sbg:image_url": null,
    "sbg:createdBy": "duplexa",
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "sbg:x": 83,
            "label": "input_fastq2",
            "id": "#input_fastq2",
            "sbg:y": 66,
            "type": [
                "File"
            ]
        },
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "sbg:x": 70.5384664352124,
            "label": "input_fastq1",
            "id": "#input_fastq1",
            "sbg:y": 222.53847149702227,
            "type": [
                "File"
            ]
        },
        {
            "sbg:fileTypes": "TGZ",
            "sbg:x": 89.53847718662128,
            "label": "bowtie_index",
            "id": "#bowtie_index",
            "sbg:y": 389.46159979718914,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:fileTypes": "BED",
            "sbg:x": 420.99998982747405,
            "label": "RE_bed",
            "id": "#RE_bed",
            "sbg:y": 496.33335367838555,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:x": 749.7779160072636,
            "id": "#chrlen_file",
            "sbg:y": -18.188064069204135,
            "label": "chrlen_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 995.3846145833035,
            "label": "contact_matrix_binsize",
            "id": "#contact_matrix_binsize",
            "type": [
                "int"
            ],
            "sbg:y": -6.153860611323651
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 835.3847081280348,
            "label": "chromosome",
            "id": "#chromosome",
            "type": [
                {
                    "items": "string",
                    "type": "array"
                }
            ],
            "sbg:y": 75.38460620338324
        }
    ],
    "sbg:canvas_zoom": 0.6499999999999997
}