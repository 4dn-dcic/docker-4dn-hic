{
    "sbg:validationErrors": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "cwlVersion": "sbg:draft-2",
    "requirements": [],
    "class": "Workflow",
    "steps": [
        {
            "sbg:x": 265,
            "inputs": [
                {
                    "default": ".",
                    "id": "#hictool_fastq2bam.output_dir"
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
            "id": "#hictool_fastq2bam",
            "sbg:y": 226,
            "run": {
                "sbg:validationErrors": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
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
                "class": "CommandLineTool",
                "label": "hictool-fastq2bam",
                "arguments": [],
                "x": 265,
                "sbg:project": "gaurav/4dn",
                "successCodes": [],
                "sbg:createdOn": 1464804268,
                "sbg:latestRevision": 14,
                "sbg:modifiedOn": 1467992192,
                "stdout": "",
                "id": "gaurav/4dn/fastq2bam/14",
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "y": 226,
                "temporaryFailCodes": [],
                "hints": [
                    {
                        "value": 24000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "dockerImageId": "",
                        "dockerPull": "duplexa/hictool-fastq2bam:v3",
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
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "stdin": "",
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "sbg:image_url": null,
                "sbg:revision": 14,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1464804268,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1464816082,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1464816200,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1464816230,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1465323168,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1465400656,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1465844403,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1467828936,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "r3.x4large"
                    },
                    {
                        "sbg:modifiedOn": 1467829775,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker image v2."
                    },
                    {
                        "sbg:modifiedOn": 1467832142,
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "removed outprefix from output files"
                    },
                    {
                        "sbg:modifiedOn": 1467832711,
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem."
                    },
                    {
                        "sbg:modifiedOn": 1467834125,
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "bowtie_index redefined."
                    },
                    {
                        "sbg:modifiedOn": 1467838837,
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "i2.xlarge"
                    },
                    {
                        "sbg:modifiedOn": 1467989772,
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam"
                    },
                    {
                        "sbg:modifiedOn": 1467992192,
                        "sbg:revision": 14,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker version 3. A sort step skipped."
                    }
                ],
                "sbg:modifiedBy": "duplexa",
                "sbg:sbgMaintained": false,
                "inputs": [
                    {
                        "id": "#output_dir",
                        "sbg:includeInPorts": false,
                        "sbg:toolDefaultValue": ".",
                        "inputBinding": {
                            "separate": false,
                            "position": 4,
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            },
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
                        "sbg:fileTypes": "FASTQ, FQ",
                        "inputBinding": {
                            "position": 3,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "id": "#input_fastq1",
                        "required": true,
                        "sbg:fileTypes": "FASTQ, FQ",
                        "inputBinding": {
                            "position": 2,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "id": "#bowtie_index",
                        "required": false,
                        "sbg:fileTypes": "TGZ",
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "outputs": [
                    {
                        "id": "#split_bam2",
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                                "engine": "#cwl-js-engine",
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
                                "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                                "engine": "#cwl-js-engine",
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
                                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:createdBy": "gaurav",
                "description": "",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    },
                    "inputs": {
                        "bowtie_index": {
                            "path": "/path/to/bowtie_index.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "input_fastq2": {
                            "path": "/path/to/input_fastq2.fastq",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "input_fastq1": {
                            "path": "/path/to/input_fastq1.fastq",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "output_dir": "output_dir"
                    }
                },
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ]
            }
        },
        {
            "sbg:x": 588.9231050931494,
            "inputs": [
                {
                    "default": ".",
                    "id": "#hictool_bam2hdf5.output_dir"
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
            "id": "#hictool_bam2hdf5",
            "sbg:y": 230.38462831423846,
            "run": {
                "sbg:validationErrors": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:project": "gaurav/4dn",
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
                "class": "CommandLineTool",
                "label": "hictool-bam2hdf5",
                "arguments": [],
                "x": 588.9231050931494,
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "successCodes": [],
                "sbg:createdOn": 1467989155,
                "sbg:latestRevision": 4,
                "sbg:modifiedOn": 1467995167,
                "stdout": "",
                "id": "gaurav/4dn/bam2hdf5/4",
                "baseCommand": [
                    "run.sh"
                ],
                "y": 230.38462831423846,
                "temporaryFailCodes": [],
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/hictool-bam2hdf5:v2",
                        "class": "DockerRequirement"
                    }
                ],
                "stdin": "",
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "sbg:image_url": null,
                "sbg:revision": 4,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1467989155,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3"
                    },
                    {
                        "sbg:modifiedOn": 1467989197,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1467989438,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker bam2hdf5:v2"
                    },
                    {
                        "sbg:modifiedOn": 1467989798,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5"
                    },
                    {
                        "sbg:modifiedOn": 1467995167,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    }
                ],
                "sbg:modifiedBy": "duplexa",
                "sbg:sbgMaintained": false,
                "inputs": [
                    {
                        "id": "#output_dir",
                        "inputBinding": {
                            "separate": false,
                            "position": 4,
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            },
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
                        "sbg:fileTypes": "BAM",
                        "inputBinding": {
                            "position": 2,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "id": "#input_bam1",
                        "required": true,
                        "sbg:fileTypes": "BAM",
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "id": "#RE_bed",
                        "required": false,
                        "sbg:fileTypes": "BED",
                        "inputBinding": {
                            "position": 3,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "outputs": [
                    {
                        "id": "#fend_object_hdf5",
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                                "engine": "#cwl-js-engine",
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
                                "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                                "engine": "#cwl-js-engine",
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
                                "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                                "engine": "#cwl-js-engine",
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
                                "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                                "engine": "#cwl-js-engine",
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
                                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:createdBy": "duplexa",
                "description": "",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    },
                    "inputs": {
                        "input_bam1": {
                            "path": "/path/to/input_bam1.bam",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "input_bam2": {
                            "path": "/path/to/input_bam2.bam",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "RE_bed": {
                            "path": "/path/to/RE_bed.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "output_dir": "output_dir"
                    }
                },
                "sbg:contributors": [
                    "duplexa"
                ]
            }
        },
        {
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
            "scatter": "#hictool_hdf52matrix.chromosome",
            "inputs": [
                {
                    "default": ".",
                    "id": "#hictool_hdf52matrix.output_dir"
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
            "sbg:x": 1105.3846988706214,
            "id": "#hictool_hdf52matrix",
            "sbg:y": 228.6923403133314,
            "run": {
                "sbg:validationErrors": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:project": "gaurav/4dn",
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
                "class": "CommandLineTool",
                "label": "hictool-hdf52matrix",
                "arguments": [],
                "x": 1105.3846988706214,
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "successCodes": [],
                "sbg:createdOn": 1464816740,
                "sbg:latestRevision": 7,
                "sbg:modifiedOn": 1467995451,
                "stdout": "",
                "id": "gaurav/4dn/bam2matrix2/7",
                "baseCommand": [
                    "run.sh"
                ],
                "y": 228.6923403133314,
                "temporaryFailCodes": [],
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/hictool-hdf52matrix:v2",
                        "class": "DockerRequirement"
                    }
                ],
                "stdin": "",
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "sbg:image_url": null,
                "sbg:revision": 7,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1464816740,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1464818050,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1467989666,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker hdf52matrix:v2"
                    },
                    {
                        "sbg:modifiedOn": 1467989698,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1467989823,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix"
                    },
                    {
                        "sbg:modifiedOn": 1467991994,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1467992019,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1467995451,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    }
                ],
                "sbg:modifiedBy": "duplexa",
                "sbg:sbgMaintained": false,
                "inputs": [
                    {
                        "id": "#output_dir",
                        "required": false,
                        "inputBinding": {
                            "separate": false,
                            "position": 5,
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            },
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
                            "position": 3,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "id": "#contact_matrix_binsize",
                        "required": true,
                        "type": [
                            "int"
                        ]
                    },
                    {
                        "id": "#chromosome",
                        "sbg:includeInPorts": true,
                        "required": true,
                        "inputBinding": {
                            "position": 2,
                            "separate": false,
                            "sbg:cmdInclude": true
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
                            "position": 4,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#HiC_norm_binning_hdf5",
                        "required": true,
                        "sbg:fileTypes": "HDF5",
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
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
                "outputs": [
                    {
                        "id": "#observed_contact_matrix",
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine",
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
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine",
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
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine",
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
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine",
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
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:createdBy": "gaurav",
                "description": "",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    },
                    "inputs": {
                        "chrlen_file": {
                            "path": "/path/to/chrlen_file.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "HiC_norm_binning_hdf5": {
                            "path": "/path/to/HiC_norm_binning_hdf5.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "fend_object_hdf5": {
                            "path": "/path/to/fend_object_hdf5.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "contact_matrix_binsize": 0,
                        "HiC_data_object_hdf5": {
                            "path": "/path/to/HiC_data_object_hdf5.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "chromosome": "chromosome",
                        "output_dir": "output_dir"
                    }
                },
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ]
            }
        }
    ],
    "label": "GITAR v0.2",
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "sbg:createdOn": 1473274706,
    "sbg:latestRevision": 0,
    "sbg:modifiedOn": 1473274706,
    "sbg:canvas_x": 1,
    "sbg:canvas_y": 66,
    "sbg:canvas_zoom": 0.6499999999999997,
    "hints": [],
    "sbg:image_url": null,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "sbg:revision": 0,
    "sbg:modifiedBy": "duplexa",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274706,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6"
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "sbg:sbgMaintained": false,
    "inputs": [
        {
            "sbg:x": 83,
            "sbg:fileTypes": "FASTQ, FQ",
            "sbg:y": 66,
            "id": "#input_fastq2",
            "label": "input_fastq2",
            "type": [
                "File"
            ]
        },
        {
            "sbg:x": 70.5384664352124,
            "sbg:fileTypes": "FASTQ, FQ",
            "sbg:y": 222.53847149702227,
            "id": "#input_fastq1",
            "label": "input_fastq1",
            "type": [
                "File"
            ]
        },
        {
            "sbg:x": 89.53847718662128,
            "sbg:fileTypes": "TGZ",
            "sbg:y": 389.46159979718914,
            "id": "#bowtie_index",
            "label": "bowtie_index",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:x": 420.99998982747405,
            "sbg:fileTypes": "BED",
            "sbg:y": 496.33335367838555,
            "id": "#RE_bed",
            "label": "RE_bed",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#chrlen_file",
            "label": "chrlen_file",
            "sbg:x": 749.7779160072636,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": -18.188064069204135
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 995.3846145833035,
            "sbg:y": -6.153860611323651,
            "id": "#contact_matrix_binsize",
            "label": "contact_matrix_binsize",
            "type": [
                "int"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 835.3847081280348,
            "sbg:y": 75.38460620338324,
            "id": "#chromosome",
            "label": "chromosome",
            "type": [
                {
                    "items": "string",
                    "type": "array"
                }
            ]
        }
    ],
    "outputs": [
        {
            "sbg:includeInPorts": true,
            "sbg:x": 391.6240561803214,
            "sbg:y": 328.1196788763388,
            "id": "#sorted_bam_pe",
            "label": "sorted_bam_pe",
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "required": false,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 717.1795962773863,
            "sbg:y": 124.61539063086903,
            "id": "#HiC_project_object_hdf5",
            "label": "HiC_project_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "required": false,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 939.2309175553464,
            "sbg:y": 500.3419382689756,
            "id": "#HiC_distance_function_hdf5",
            "label": "HiC_distance_function_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "required": false,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 1489.2308385555568,
            "sbg:y": 190.94018009381435,
            "id": "#normalized_fend_contact_matrix",
            "label": "normalized_fend_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "required": false,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 1573.6754030664124,
            "sbg:y": 330.17099214681946,
            "id": "#normalized_enrich_contact_matrix",
            "label": "normalized_enrich_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "required": false,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 1345.2138202308008,
            "sbg:y": 530.5983404200941,
            "id": "#expected_enrich_contact_matrix",
            "label": "expected_enrich_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "required": false,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 328.92306357163494,
            "sbg:y": -50.256409131563785,
            "id": "#split_bam2",
            "label": "split_bam2",
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "required": false,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 368.92312900836833,
            "sbg:y": 59.384607461782,
            "id": "#split_bam1",
            "label": "split_bam1",
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "required": false,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 666.1538890691907,
            "sbg:y": 21.538473569430273,
            "id": "#fend_object_hdf5",
            "label": "fend_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "required": false,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 984.1028403502372,
            "sbg:y": 357.7436426095023,
            "id": "#HiC_norm_binning_hdf5",
            "label": "HiC_norm_binning_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "required": false,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 777.7437167478082,
            "sbg:y": 558.9744715323862,
            "id": "#HiC_data_object_hdf5",
            "label": "HiC_data_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "required": false,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 1323.0770296232263,
            "sbg:y": 86.15384043744288,
            "id": "#observed_contact_matrix",
            "label": "observed_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "required": false,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:x": 1520.0001224540429,
            "sbg:y": 470.76925607828014,
            "id": "#expected_fend_contact_matrix",
            "label": "expected_fend_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "required": false,
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:createdBy": "duplexa",
    "description": "",
    "sbg:contributors": [
        "duplexa"
    ]
}