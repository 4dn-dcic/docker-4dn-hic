{
    "sbg:canvas_x": 1,
    "sbg:canvas_zoom": 0.6499999999999997,
    "sbg:createdOn": 1473274706,
    "class": "Workflow",
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "sbg:modifiedBy": "duplexa",
    "sbg:modifiedOn": 1473274706,
    "steps": [
        {
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
            "sbg:y": 226,
            "run": {
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "class": "CommandLineTool",
                "sbg:modifiedBy": "duplexa",
                "sbg:modifiedOn": 1467992192,
                "stdin": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464804268,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464816082,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464816200,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464816230,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1465323168,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1465400656,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1465844403,
                        "sbg:revision": 6
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "r3.x4large",
                        "sbg:modifiedOn": 1467828936,
                        "sbg:revision": 7
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker image v2.",
                        "sbg:modifiedOn": 1467829775,
                        "sbg:revision": 8
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "removed outprefix from output files",
                        "sbg:modifiedOn": 1467832142,
                        "sbg:revision": 9
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem.",
                        "sbg:modifiedOn": 1467832711,
                        "sbg:revision": 10
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "bowtie_index redefined.",
                        "sbg:modifiedOn": 1467834125,
                        "sbg:revision": 11
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "i2.xlarge",
                        "sbg:modifiedOn": 1467838837,
                        "sbg:revision": 12
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam",
                        "sbg:modifiedOn": 1467989772,
                        "sbg:revision": 13
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                        "sbg:modifiedOn": 1467992192,
                        "sbg:revision": 14
                    }
                ],
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ]
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "bowtie_index": {
                            "secondaryFiles": [],
                            "path": "/path/to/bowtie_index.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "output_dir": "output_dir",
                        "input_fastq1": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq1.fastq",
                            "size": 0,
                            "class": "File"
                        },
                        "input_fastq2": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq2.fastq",
                            "size": 0,
                            "class": "File"
                        }
                    },
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    }
                },
                "sbg:createdOn": 1464804268,
                "sbg:latestRevision": 14,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#split_bam2",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#split_bam1",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#sorted_bam_pe",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:revision": 14,
                "arguments": [],
                "sbg:createdBy": "gaurav",
                "successCodes": [],
                "inputs": [
                    {
                        "inputBinding": {
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            },
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "sbg:includeInPorts": false,
                        "id": "#output_dir",
                        "sbg:toolDefaultValue": ".",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "inputBinding": {
                            "position": 3,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "FASTQ, FQ",
                        "required": true,
                        "id": "#input_fastq2",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "position": 2,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "FASTQ, FQ",
                        "required": true,
                        "id": "#input_fastq1",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "TGZ",
                        "required": false,
                        "id": "#bowtie_index",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                "stdout": "",
                "label": "hictool-fastq2bam",
                "sbg:image_url": null,
                "id": "gaurav/4dn/fastq2bam/14",
                "sbg:project": "gaurav/4dn",
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "sbg:validationErrors": [],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "class": "sbg:MemRequirement",
                        "value": 24000
                    },
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "duplexa/hictool-fastq2bam:v3"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 4
                    },
                    {
                        "class": "sbg:AWSInstanceType",
                        "value": "i2.xlarge"
                    }
                ],
                "x": 265,
                "cwlVersion": "sbg:draft-2",
                "temporaryFailCodes": [],
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "y": 226,
                "description": ""
            },
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
            "sbg:x": 265
        },
        {
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
            "sbg:y": 230.38462831423846,
            "run": {
                "sbg:contributors": [
                    "duplexa"
                ],
                "class": "CommandLineTool",
                "sbg:modifiedBy": "duplexa",
                "sbg:modifiedOn": 1467995167,
                "stdin": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3",
                        "sbg:modifiedOn": 1467989155,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467989197,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker bam2hdf5:v2",
                        "sbg:modifiedOn": 1467989438,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5",
                        "sbg:modifiedOn": 1467989798,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467995167,
                        "sbg:revision": 4
                    }
                ],
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ]
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
                        "output_dir": "output_dir",
                        "RE_bed": {
                            "secondaryFiles": [],
                            "path": "/path/to/RE_bed.ext",
                            "size": 0,
                            "class": "File"
                        }
                    },
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    }
                },
                "sbg:createdOn": 1467989155,
                "sbg:latestRevision": 4,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#fend_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#HiC_project_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#HiC_norm_binning_hdf5",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#HiC_distance_function_hdf5",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#HiC_data_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:revision": 4,
                "arguments": [],
                "sbg:createdBy": "duplexa",
                "successCodes": [],
                "inputs": [
                    {
                        "inputBinding": {
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            },
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "id": "#output_dir",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "inputBinding": {
                            "position": 2,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "BAM",
                        "required": true,
                        "id": "#input_bam2",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "BAM",
                        "required": true,
                        "id": "#input_bam1",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "position": 3,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "BED",
                        "required": false,
                        "id": "#RE_bed",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "stdout": "",
                "label": "hictool-bam2hdf5",
                "sbg:image_url": null,
                "id": "gaurav/4dn/bam2hdf5/4",
                "sbg:project": "gaurav/4dn",
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "sbg:validationErrors": [],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "class": "sbg:CPURequirement",
                        "value": 4
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 24000
                    },
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "duplexa/hictool-bam2hdf5:v2"
                    }
                ],
                "x": 588.9231050931494,
                "cwlVersion": "sbg:draft-2",
                "temporaryFailCodes": [],
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "y": 230.38462831423846,
                "description": ""
            },
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
            "sbg:x": 588.9231050931494
        },
        {
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
            "sbg:y": 228.6923403133314,
            "scatter": "#hictool_hdf52matrix.chromosome",
            "run": {
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "class": "CommandLineTool",
                "sbg:modifiedBy": "duplexa",
                "sbg:modifiedOn": 1467995451,
                "stdin": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464816740,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464818050,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker hdf52matrix:v2",
                        "sbg:modifiedOn": 1467989666,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467989698,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix",
                        "sbg:modifiedOn": 1467989823,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467991994,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467992019,
                        "sbg:revision": 6
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467995451,
                        "sbg:revision": 7
                    }
                ],
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ]
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "contact_matrix_binsize": 0,
                        "output_dir": "output_dir",
                        "HiC_norm_binning_hdf5": {
                            "secondaryFiles": [],
                            "path": "/path/to/HiC_norm_binning_hdf5.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "fend_object_hdf5": {
                            "secondaryFiles": [],
                            "path": "/path/to/fend_object_hdf5.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "chrlen_file": {
                            "secondaryFiles": [],
                            "path": "/path/to/chrlen_file.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "chromosome": "chromosome",
                        "HiC_data_object_hdf5": {
                            "secondaryFiles": [],
                            "path": "/path/to/HiC_data_object_hdf5.ext",
                            "size": 0,
                            "class": "File"
                        }
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    }
                },
                "sbg:createdOn": 1464816740,
                "sbg:latestRevision": 7,
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#observed_contact_matrix",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#normalized_fend_contact_matrix",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#normalized_enrich_contact_matrix",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#expected_fend_contact_matrix",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#expected_enrich_contact_matrix",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:revision": 7,
                "arguments": [],
                "sbg:createdBy": "gaurav",
                "successCodes": [],
                "inputs": [
                    {
                        "inputBinding": {
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            },
                            "position": 5,
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "required": false,
                        "id": "#output_dir",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "sbg:fileTypes": "HDF5",
                        "required": false,
                        "id": "#fend_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:includeInPorts": true,
                        "required": true,
                        "sbg:toolDefaultValue": "50000",
                        "inputBinding": {
                            "position": 3,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "id": "#contact_matrix_binsize",
                        "type": [
                            "int"
                        ]
                    },
                    {
                        "inputBinding": {
                            "position": 2,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:includeInPorts": true,
                        "required": true,
                        "id": "#chromosome",
                        "type": [
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "inputBinding": {
                            "position": 4,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "id": "#chrlen_file",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "HDF5",
                        "required": true,
                        "id": "#HiC_norm_binning_hdf5",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": "HDF5",
                        "required": false,
                        "id": "#HiC_data_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "stdout": "",
                "label": "hictool-hdf52matrix",
                "sbg:image_url": null,
                "id": "gaurav/4dn/bam2matrix2/7",
                "sbg:project": "gaurav/4dn",
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "sbg:validationErrors": [],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "class": "sbg:CPURequirement",
                        "value": 8
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 8000
                    },
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "duplexa/hictool-hdf52matrix:v2"
                    }
                ],
                "x": 1105.3846988706214,
                "cwlVersion": "sbg:draft-2",
                "temporaryFailCodes": [],
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "y": 228.6923403133314,
                "description": ""
            },
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
            "id": "#hictool_hdf52matrix",
            "sbg:x": 1105.3846988706214
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:modifiedOn": 1473274706,
            "sbg:revision": 0
        }
    ],
    "requirements": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:latestRevision": 0,
    "sbg:projectName": "Dev",
    "sbg:revision": 0,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "sbg:createdBy": "duplexa",
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "sbg:y": 66,
            "label": "input_fastq2",
            "id": "#input_fastq2",
            "sbg:x": 83,
            "type": [
                "File"
            ]
        },
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "sbg:y": 222.53847149702227,
            "label": "input_fastq1",
            "id": "#input_fastq1",
            "sbg:x": 70.5384664352124,
            "type": [
                "File"
            ]
        },
        {
            "sbg:fileTypes": "TGZ",
            "sbg:y": 389.46159979718914,
            "label": "bowtie_index",
            "id": "#bowtie_index",
            "sbg:x": 89.53847718662128,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:fileTypes": "BED",
            "sbg:y": 496.33335367838555,
            "label": "RE_bed",
            "id": "#RE_bed",
            "sbg:x": 420.99998982747405,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chrlen_file",
            "sbg:y": -18.188064069204135,
            "sbg:x": 749.7779160072636,
            "label": "chrlen_file"
        },
        {
            "sbg:includeInPorts": true,
            "sbg:y": -6.153860611323651,
            "label": "contact_matrix_binsize",
            "id": "#contact_matrix_binsize",
            "sbg:x": 995.3846145833035,
            "type": [
                "int"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "sbg:y": 75.38460620338324,
            "label": "chromosome",
            "id": "#chromosome",
            "sbg:x": 835.3847081280348,
            "type": [
                {
                    "items": "string",
                    "type": "array"
                }
            ]
        }
    ],
    "label": "GITAR v0.2",
    "sbg:image_url": null,
    "sbg:project": "4dn-dcic/dev",
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "sbg:validationErrors": [],
    "sbg:canvas_y": 66,
    "outputs": [
        {
            "sbg:includeInPorts": true,
            "required": false,
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "sbg:y": 328.1196788763388,
            "label": "sorted_bam_pe",
            "id": "#sorted_bam_pe",
            "sbg:x": 391.6240561803214,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "required": false,
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "sbg:y": 124.61539063086903,
            "label": "HiC_project_object_hdf5",
            "id": "#HiC_project_object_hdf5",
            "sbg:x": 717.1795962773863,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "required": false,
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "sbg:y": 500.3419382689756,
            "label": "HiC_distance_function_hdf5",
            "id": "#HiC_distance_function_hdf5",
            "sbg:x": 939.2309175553464,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "required": false,
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "sbg:y": 190.94018009381435,
            "label": "normalized_fend_contact_matrix",
            "id": "#normalized_fend_contact_matrix",
            "sbg:x": 1489.2308385555568,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "required": false,
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "sbg:y": 330.17099214681946,
            "label": "normalized_enrich_contact_matrix",
            "id": "#normalized_enrich_contact_matrix",
            "sbg:x": 1573.6754030664124,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "required": false,
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "sbg:y": 530.5983404200941,
            "label": "expected_enrich_contact_matrix",
            "id": "#expected_enrich_contact_matrix",
            "sbg:x": 1345.2138202308008,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "required": false,
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "sbg:y": -50.256409131563785,
            "label": "split_bam2",
            "id": "#split_bam2",
            "sbg:x": 328.92306357163494,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "required": false,
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "sbg:y": 59.384607461782,
            "label": "split_bam1",
            "id": "#split_bam1",
            "sbg:x": 368.92312900836833,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "required": false,
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "sbg:y": 21.538473569430273,
            "label": "fend_object_hdf5",
            "id": "#fend_object_hdf5",
            "sbg:x": 666.1538890691907,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "required": false,
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "sbg:y": 357.7436426095023,
            "label": "HiC_norm_binning_hdf5",
            "id": "#HiC_norm_binning_hdf5",
            "sbg:x": 984.1028403502372,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "required": false,
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "sbg:y": 558.9744715323862,
            "label": "HiC_data_object_hdf5",
            "id": "#HiC_data_object_hdf5",
            "sbg:x": 777.7437167478082,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "required": false,
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "sbg:y": 86.15384043744288,
            "label": "observed_contact_matrix",
            "id": "#observed_contact_matrix",
            "sbg:x": 1323.0770296232263,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:includeInPorts": true,
            "required": false,
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "sbg:y": 470.76925607828014,
            "label": "expected_fend_contact_matrix",
            "id": "#expected_fend_contact_matrix",
            "sbg:x": 1520.0001224540429,
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:sbgMaintained": false,
    "hints": [],
    "cwlVersion": "sbg:draft-2",
    "description": ""
}