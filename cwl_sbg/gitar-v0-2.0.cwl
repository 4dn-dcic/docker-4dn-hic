{
    "cwlVersion": "sbg:draft-2",
    "sbg:createdOn": 1473274706,
    "sbg:validationErrors": [],
    "sbg:canvas_x": 1,
    "label": "GITAR v0.2",
    "steps": [
        {
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
            "sbg:y": 226,
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
            "id": "#hictool_fastq2bam",
            "sbg:x": 265,
            "run": {
                "cwlVersion": "sbg:draft-2",
                "sbg:createdOn": 1464804268,
                "sbg:validationErrors": [],
                "label": "hictool-fastq2bam",
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "sbg:modifiedBy": "duplexa",
                "sbg:modifiedOn": 1467992192,
                "arguments": [],
                "outputs": [
                    {
                        "id": "#split_bam2",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                                "class": "Expression"
                            }
                        }
                    },
                    {
                        "id": "#split_bam1",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                                "class": "Expression"
                            }
                        }
                    },
                    {
                        "id": "#sorted_bam_pe",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                                "class": "Expression"
                            }
                        }
                    }
                ],
                "inputs": [
                    {
                        "id": "#output_dir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression"
                            },
                            "position": 4,
                            "sbg:cmdInclude": true
                        },
                        "sbg:includeInPorts": false,
                        "sbg:toolDefaultValue": "."
                    },
                    {
                        "required": true,
                        "id": "#input_fastq2",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "FASTQ, FQ"
                    },
                    {
                        "required": true,
                        "id": "#input_fastq1",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "FASTQ, FQ"
                    },
                    {
                        "required": false,
                        "id": "#bowtie_index",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "TGZ"
                    }
                ],
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "sbg:revision": 14,
                "temporaryFailCodes": [],
                "sbg:sbgMaintained": false,
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
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
                "sbg:job": {
                    "inputs": {
                        "input_fastq2": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq2.fastq",
                            "size": 0,
                            "class": "File"
                        },
                        "bowtie_index": {
                            "secondaryFiles": [],
                            "path": "/path/to/bowtie_index.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "input_fastq1": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq1.fastq",
                            "size": 0,
                            "class": "File"
                        },
                        "output_dir": "output_dir"
                    },
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    }
                },
                "x": 265,
                "sbg:latestRevision": 14,
                "y": 226,
                "description": "",
                "sbg:id": "gaurav/4dn/fastq2bam/14",
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
                "stdin": "",
                "stdout": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464804268
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464816082
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464816200
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464816230
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1465323168
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1465400656
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1465844403
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "r3.x4large",
                        "sbg:modifiedOn": 1467828936
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker image v2.",
                        "sbg:modifiedOn": 1467829775
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "removed outprefix from output files",
                        "sbg:modifiedOn": 1467832142
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem.",
                        "sbg:modifiedOn": 1467832711
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "bowtie_index redefined.",
                        "sbg:modifiedOn": 1467834125
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "i2.xlarge",
                        "sbg:modifiedOn": 1467838837
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam",
                        "sbg:modifiedOn": 1467989772
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                        "sbg:modifiedOn": 1467992192
                    }
                ],
                "sbg:createdBy": "gaurav",
                "id": "gaurav/4dn/fastq2bam/14",
                "sbg:project": "gaurav/4dn",
                "successCodes": [],
                "sbg:image_url": null,
                "sbg:revisionNotes": "docker version 3. A sort step skipped."
            }
        },
        {
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
            "sbg:y": 230.38462831423846,
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
            "id": "#hictool_bam2hdf5",
            "sbg:x": 588.9231050931494,
            "run": {
                "cwlVersion": "sbg:draft-2",
                "sbg:createdOn": 1467989155,
                "sbg:validationErrors": [],
                "label": "hictool-bam2hdf5",
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:modifiedBy": "duplexa",
                "sbg:modifiedOn": 1467995167,
                "arguments": [],
                "outputs": [
                    {
                        "id": "#fend_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                                "class": "Expression"
                            }
                        }
                    },
                    {
                        "id": "#HiC_project_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                                "class": "Expression"
                            }
                        }
                    },
                    {
                        "id": "#HiC_norm_binning_hdf5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                                "class": "Expression"
                            }
                        }
                    },
                    {
                        "id": "#HiC_distance_function_hdf5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                                "class": "Expression"
                            }
                        }
                    },
                    {
                        "id": "#HiC_data_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                                "class": "Expression"
                            }
                        }
                    }
                ],
                "inputs": [
                    {
                        "id": "#output_dir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression"
                            },
                            "position": 4,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "required": true,
                        "id": "#input_bam2",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "BAM"
                    },
                    {
                        "required": true,
                        "id": "#input_bam1",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "BAM"
                    },
                    {
                        "required": false,
                        "id": "#RE_bed",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "BED"
                    }
                ],
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "sbg:revision": 4,
                "temporaryFailCodes": [],
                "sbg:sbgMaintained": false,
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "duplexa"
                ],
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
                "sbg:job": {
                    "inputs": {
                        "input_bam2": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_bam2.bam",
                            "size": 0,
                            "class": "File"
                        },
                        "input_bam1": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_bam1.bam",
                            "size": 0,
                            "class": "File"
                        },
                        "RE_bed": {
                            "secondaryFiles": [],
                            "path": "/path/to/RE_bed.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "output_dir": "output_dir"
                    },
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    }
                },
                "x": 588.9231050931494,
                "sbg:latestRevision": 4,
                "y": 230.38462831423846,
                "description": "",
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
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
                "stdin": "",
                "stdout": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3",
                        "sbg:modifiedOn": 1467989155
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467989197
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker bam2hdf5:v2",
                        "sbg:modifiedOn": 1467989438
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5",
                        "sbg:modifiedOn": 1467989798
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467995167
                    }
                ],
                "id": "gaurav/4dn/bam2hdf5/4",
                "sbg:project": "gaurav/4dn",
                "successCodes": [],
                "sbg:image_url": null,
                "sbg:createdBy": "duplexa"
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
            "sbg:y": 228.6923403133314,
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
            "id": "#hictool_hdf52matrix",
            "sbg:x": 1105.3846988706214,
            "scatter": "#hictool_hdf52matrix.chromosome",
            "run": {
                "cwlVersion": "sbg:draft-2",
                "sbg:createdOn": 1464816740,
                "sbg:validationErrors": [],
                "label": "hictool-hdf52matrix",
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:modifiedBy": "duplexa",
                "sbg:modifiedOn": 1467995451,
                "arguments": [],
                "outputs": [
                    {
                        "id": "#observed_contact_matrix",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                                "class": "Expression"
                            }
                        }
                    },
                    {
                        "id": "#normalized_fend_contact_matrix",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                                "class": "Expression"
                            }
                        }
                    },
                    {
                        "id": "#normalized_enrich_contact_matrix",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                                "class": "Expression"
                            }
                        }
                    },
                    {
                        "id": "#expected_fend_contact_matrix",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                                "class": "Expression"
                            }
                        }
                    },
                    {
                        "id": "#expected_enrich_contact_matrix",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                                "class": "Expression"
                            }
                        }
                    }
                ],
                "inputs": [
                    {
                        "required": false,
                        "id": "#output_dir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression"
                            },
                            "position": 5,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "required": false,
                        "id": "#fend_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "HDF5"
                    },
                    {
                        "type": [
                            "int"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "sbg:toolDefaultValue": "50000",
                        "required": true,
                        "id": "#contact_matrix_binsize",
                        "sbg:includeInPorts": true
                    },
                    {
                        "required": true,
                        "id": "#chromosome",
                        "type": [
                            {
                                "type": "array",
                                "items": "string"
                            }
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "sbg:includeInPorts": true
                    },
                    {
                        "required": false,
                        "id": "#chrlen_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 4,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "required": true,
                        "id": "#HiC_norm_binning_hdf5",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "HDF5"
                    },
                    {
                        "required": false,
                        "id": "#HiC_data_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "HDF5"
                    }
                ],
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "sbg:revision": 7,
                "temporaryFailCodes": [],
                "sbg:sbgMaintained": false,
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
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
                "sbg:job": {
                    "inputs": {
                        "contact_matrix_binsize": 0,
                        "fend_object_hdf5": {
                            "secondaryFiles": [],
                            "path": "/path/to/fend_object_hdf5.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "HiC_data_object_hdf5": {
                            "secondaryFiles": [],
                            "path": "/path/to/HiC_data_object_hdf5.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "chromosome": "chromosome",
                        "output_dir": "output_dir",
                        "HiC_norm_binning_hdf5": {
                            "secondaryFiles": [],
                            "path": "/path/to/HiC_norm_binning_hdf5.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "chrlen_file": {
                            "secondaryFiles": [],
                            "path": "/path/to/chrlen_file.ext",
                            "size": 0,
                            "class": "File"
                        }
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    }
                },
                "x": 1105.3846988706214,
                "sbg:latestRevision": 7,
                "y": 228.6923403133314,
                "description": "",
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
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
                "stdin": "",
                "stdout": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464816740
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464818050
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker hdf52matrix:v2",
                        "sbg:modifiedOn": 1467989666
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467989698
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix",
                        "sbg:modifiedOn": 1467989823
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467991994
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467992019
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467995451
                    }
                ],
                "id": "gaurav/4dn/bam2matrix2/7",
                "sbg:project": "gaurav/4dn",
                "successCodes": [],
                "sbg:image_url": null,
                "sbg:createdBy": "gaurav"
            }
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "sbg:modifiedOn": 1473274706,
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "outputs": [
        {
            "sbg:y": 328.1196788763388,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "sorted_bam_pe",
            "required": false,
            "id": "#sorted_bam_pe",
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "sbg:x": 391.6240561803214
        },
        {
            "sbg:y": 124.61539063086903,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "HiC_project_object_hdf5",
            "required": false,
            "id": "#HiC_project_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "sbg:x": 717.1795962773863
        },
        {
            "sbg:y": 500.3419382689756,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "HiC_distance_function_hdf5",
            "required": false,
            "id": "#HiC_distance_function_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "sbg:x": 939.2309175553464
        },
        {
            "sbg:y": 190.94018009381435,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "normalized_fend_contact_matrix",
            "required": false,
            "id": "#normalized_fend_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "sbg:x": 1489.2308385555568
        },
        {
            "sbg:y": 330.17099214681946,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "normalized_enrich_contact_matrix",
            "required": false,
            "id": "#normalized_enrich_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "sbg:x": 1573.6754030664124
        },
        {
            "sbg:y": 530.5983404200941,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "expected_enrich_contact_matrix",
            "required": false,
            "id": "#expected_enrich_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "sbg:x": 1345.2138202308008
        },
        {
            "sbg:y": -50.256409131563785,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "split_bam2",
            "required": false,
            "id": "#split_bam2",
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "sbg:x": 328.92306357163494
        },
        {
            "sbg:y": 59.384607461782,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "split_bam1",
            "required": false,
            "id": "#split_bam1",
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "sbg:x": 368.92312900836833
        },
        {
            "sbg:y": 21.538473569430273,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "fend_object_hdf5",
            "required": false,
            "id": "#fend_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "sbg:x": 666.1538890691907
        },
        {
            "sbg:y": 357.7436426095023,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "HiC_norm_binning_hdf5",
            "required": false,
            "id": "#HiC_norm_binning_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "sbg:x": 984.1028403502372
        },
        {
            "sbg:y": 558.9744715323862,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "HiC_data_object_hdf5",
            "required": false,
            "id": "#HiC_data_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "sbg:x": 777.7437167478082
        },
        {
            "sbg:y": 86.15384043744288,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "observed_contact_matrix",
            "required": false,
            "id": "#observed_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "sbg:x": 1323.0770296232263
        },
        {
            "sbg:y": 470.76925607828014,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "expected_fend_contact_matrix",
            "required": false,
            "id": "#expected_fend_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "sbg:x": 1520.0001224540429
        }
    ],
    "class": "Workflow",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "sbg:canvas_zoom": 0.6499999999999997,
    "sbg:revision": 0,
    "sbg:sbgMaintained": false,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:canvas_y": 66,
    "hints": [],
    "sbg:latestRevision": 0,
    "description": "",
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "requirements": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:modifiedOn": 1473274706
        }
    ],
    "inputs": [
        {
            "sbg:y": 66,
            "sbg:fileTypes": "FASTQ, FQ",
            "label": "input_fastq2",
            "id": "#input_fastq2",
            "type": [
                "File"
            ],
            "sbg:x": 83
        },
        {
            "sbg:y": 222.53847149702227,
            "sbg:fileTypes": "FASTQ, FQ",
            "label": "input_fastq1",
            "id": "#input_fastq1",
            "type": [
                "File"
            ],
            "sbg:x": 70.5384664352124
        },
        {
            "sbg:y": 389.46159979718914,
            "sbg:fileTypes": "TGZ",
            "label": "bowtie_index",
            "id": "#bowtie_index",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 89.53847718662128
        },
        {
            "sbg:y": 496.33335367838555,
            "sbg:fileTypes": "BED",
            "label": "RE_bed",
            "id": "#RE_bed",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 420.99998982747405
        },
        {
            "id": "#chrlen_file",
            "sbg:y": -18.188064069204135,
            "sbg:x": 749.7779160072636,
            "type": [
                "null",
                "File"
            ],
            "label": "chrlen_file"
        },
        {
            "sbg:y": -6.153860611323651,
            "label": "contact_matrix_binsize",
            "id": "#contact_matrix_binsize",
            "sbg:includeInPorts": true,
            "type": [
                "int"
            ],
            "sbg:x": 995.3846145833035
        },
        {
            "sbg:y": 75.38460620338324,
            "label": "chromosome",
            "id": "#chromosome",
            "sbg:includeInPorts": true,
            "type": [
                {
                    "type": "array",
                    "items": "string"
                }
            ],
            "sbg:x": 835.3847081280348
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "sbg:image_url": null,
    "sbg:createdBy": "duplexa"
}