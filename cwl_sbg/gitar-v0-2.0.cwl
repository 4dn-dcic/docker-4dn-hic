{
    "cwlVersion": "sbg:draft-2",
    "sbg:latestRevision": 0,
    "label": "GITAR v0.2",
    "sbg:modifiedBy": "duplexa",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274706
        }
    ],
    "sbg:image_url": null,
    "sbg:sbgMaintained": false,
    "sbg:revision": 0,
    "sbg:createdOn": 1473274706,
    "sbg:canvas_y": 66,
    "steps": [
        {
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
            "sbg:x": 265,
            "id": "#hictool_fastq2bam",
            "run": {
                "cwlVersion": "sbg:draft-2",
                "sbg:latestRevision": 14,
                "stdout": "",
                "sbg:modifiedBy": "duplexa",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "sbg:sbgMaintained": false,
                "stdin": "",
                "sbg:revision": 14,
                "sbg:createdOn": 1464804268,
                "y": 226,
                "temporaryFailCodes": [],
                "sbg:image_url": null,
                "description": "",
                "sbg:createdBy": "gaurav",
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "x": 265,
                "sbg:validationErrors": [],
                "outputs": [
                    {
                        "id": "#split_bam2",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                                "engine": "#cwl-js-engine"
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                                "engine": "#cwl-js-engine"
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1464804268
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1464816082
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1464816200
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1464816230
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1465323168
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1465400656
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1465844403
                    },
                    {
                        "sbg:revisionNotes": "r3.x4large",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1467828936
                    },
                    {
                        "sbg:revisionNotes": "docker image v2.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1467829775
                    },
                    {
                        "sbg:revisionNotes": "removed outprefix from output files",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1467832142
                    },
                    {
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1467832711
                    },
                    {
                        "sbg:revisionNotes": "bowtie_index redefined.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1467834125
                    },
                    {
                        "sbg:revisionNotes": "i2.xlarge",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1467838837
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1467989772
                    },
                    {
                        "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1467992192
                    }
                ],
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "sbg:project": "gaurav/4dn",
                "inputs": [
                    {
                        "sbg:includeInPorts": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 4,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine"
                            },
                            "separate": false
                        },
                        "id": "#output_dir",
                        "sbg:toolDefaultValue": ".",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "sbg:fileTypes": "FASTQ, FQ",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": false
                        },
                        "id": "#input_fastq2",
                        "required": true,
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": "FASTQ, FQ",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": false
                        },
                        "id": "#input_fastq1",
                        "required": true,
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": "TGZ",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": false
                        },
                        "id": "#bowtie_index",
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "arguments": [],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    },
                    "inputs": {
                        "input_fastq2": {
                            "size": 0,
                            "path": "/path/to/input_fastq2.fastq",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "input_fastq1": {
                            "size": 0,
                            "path": "/path/to/input_fastq1.fastq",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "output_dir": "output_dir",
                        "bowtie_index": {
                            "size": 0,
                            "path": "/path/to/bowtie_index.ext",
                            "class": "File",
                            "secondaryFiles": []
                        }
                    }
                },
                "sbg:id": "gaurav/4dn/fastq2bam/14",
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
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                "id": "gaurav/4dn/fastq2bam/14",
                "successCodes": [],
                "sbg:modifiedOn": 1467992192,
                "class": "CommandLineTool",
                "label": "hictool-fastq2bam"
            },
            "sbg:y": 226,
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
            ]
        },
        {
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
            "sbg:x": 588.9231050931494,
            "id": "#hictool_bam2hdf5",
            "run": {
                "cwlVersion": "sbg:draft-2",
                "sbg:latestRevision": 4,
                "stdout": "",
                "sbg:modifiedBy": "duplexa",
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:sbgMaintained": false,
                "stdin": "",
                "sbg:revision": 4,
                "sbg:createdOn": 1467989155,
                "y": 230.38462831423846,
                "temporaryFailCodes": [],
                "sbg:image_url": null,
                "description": "",
                "sbg:createdBy": "duplexa",
                "baseCommand": [
                    "run.sh"
                ],
                "x": 588.9231050931494,
                "sbg:validationErrors": [],
                "outputs": [
                    {
                        "id": "#fend_object_hdf5",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                                "engine": "#cwl-js-engine"
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                                "engine": "#cwl-js-engine"
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                                "engine": "#cwl-js-engine"
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                                "engine": "#cwl-js-engine"
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1467989155
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1467989197
                    },
                    {
                        "sbg:revisionNotes": "docker bam2hdf5:v2",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1467989438
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1467989798
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1467995167
                    }
                ],
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "sbg:project": "gaurav/4dn",
                "inputs": [
                    {
                        "id": "#output_dir",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 4,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine"
                            },
                            "separate": false
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "sbg:fileTypes": "BAM",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": false
                        },
                        "id": "#input_bam2",
                        "required": true,
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": "BAM",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": false
                        },
                        "id": "#input_bam1",
                        "required": true,
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": "BED",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": false
                        },
                        "id": "#RE_bed",
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "arguments": [],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    },
                    "inputs": {
                        "RE_bed": {
                            "size": 0,
                            "path": "/path/to/RE_bed.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "input_bam2": {
                            "size": 0,
                            "path": "/path/to/input_bam2.bam",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "input_bam1": {
                            "size": 0,
                            "path": "/path/to/input_bam1.bam",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "output_dir": "output_dir"
                    }
                },
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
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
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "id": "gaurav/4dn/bam2hdf5/4",
                "successCodes": [],
                "sbg:modifiedOn": 1467995167,
                "class": "CommandLineTool",
                "label": "hictool-bam2hdf5"
            },
            "sbg:y": 230.38462831423846,
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
            ]
        },
        {
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
            "sbg:x": 1105.3846988706214,
            "id": "#hictool_hdf52matrix",
            "run": {
                "cwlVersion": "sbg:draft-2",
                "sbg:latestRevision": 7,
                "stdout": "",
                "sbg:modifiedBy": "duplexa",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "sbg:sbgMaintained": false,
                "stdin": "",
                "sbg:revision": 7,
                "sbg:createdOn": 1464816740,
                "y": 228.6923403133314,
                "temporaryFailCodes": [],
                "sbg:image_url": null,
                "description": "",
                "sbg:createdBy": "gaurav",
                "baseCommand": [
                    "run.sh"
                ],
                "x": 1105.3846988706214,
                "sbg:validationErrors": [],
                "outputs": [
                    {
                        "id": "#observed_contact_matrix",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine"
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine"
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine"
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine"
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1464816740
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1464818050
                    },
                    {
                        "sbg:revisionNotes": "docker hdf52matrix:v2",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1467989666
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1467989698
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1467989823
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1467991994
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1467992019
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1467995451
                    }
                ],
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "sbg:project": "gaurav/4dn",
                "inputs": [
                    {
                        "id": "#output_dir",
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 5,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine"
                            },
                            "separate": false
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "sbg:fileTypes": "HDF5",
                        "id": "#fend_object_hdf5",
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#contact_matrix_binsize",
                        "required": true,
                        "type": [
                            "int"
                        ],
                        "sbg:includeInPorts": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": false
                        },
                        "sbg:toolDefaultValue": "50000"
                    },
                    {
                        "sbg:includeInPorts": true,
                        "required": true,
                        "id": "#chromosome",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": false
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
                            "position": 4,
                            "separate": false
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": "HDF5",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": false
                        },
                        "id": "#HiC_norm_binning_hdf5",
                        "required": true,
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": "HDF5",
                        "id": "#HiC_data_object_hdf5",
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "arguments": [],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 8000
                    },
                    "inputs": {
                        "chromosome": "chromosome",
                        "chrlen_file": {
                            "size": 0,
                            "path": "/path/to/chrlen_file.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "fend_object_hdf5": {
                            "size": 0,
                            "path": "/path/to/fend_object_hdf5.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "HiC_norm_binning_hdf5": {
                            "size": 0,
                            "path": "/path/to/HiC_norm_binning_hdf5.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "contact_matrix_binsize": 0,
                        "output_dir": "output_dir",
                        "HiC_data_object_hdf5": {
                            "size": 0,
                            "path": "/path/to/HiC_data_object_hdf5.ext",
                            "class": "File",
                            "secondaryFiles": []
                        }
                    }
                },
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
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
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "id": "gaurav/4dn/bam2matrix2/7",
                "successCodes": [],
                "sbg:modifiedOn": 1467995451,
                "class": "CommandLineTool",
                "label": "hictool-hdf52matrix"
            },
            "sbg:y": 228.6923403133314,
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
            ]
        }
    ],
    "description": "",
    "sbg:createdBy": "duplexa",
    "sbg:validationErrors": [],
    "outputs": [
        {
            "id": "#sorted_bam_pe",
            "sbg:x": 391.6240561803214,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 328.1196788763388,
            "required": false,
            "label": "sorted_bam_pe"
        },
        {
            "id": "#HiC_project_object_hdf5",
            "sbg:x": 717.1795962773863,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 124.61539063086903,
            "required": false,
            "label": "HiC_project_object_hdf5"
        },
        {
            "id": "#HiC_distance_function_hdf5",
            "sbg:x": 939.2309175553464,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 500.3419382689756,
            "required": false,
            "label": "HiC_distance_function_hdf5"
        },
        {
            "id": "#normalized_fend_contact_matrix",
            "sbg:x": 1489.2308385555568,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 190.94018009381435,
            "required": false,
            "label": "normalized_fend_contact_matrix"
        },
        {
            "id": "#normalized_enrich_contact_matrix",
            "sbg:x": 1573.6754030664124,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 330.17099214681946,
            "required": false,
            "label": "normalized_enrich_contact_matrix"
        },
        {
            "id": "#expected_enrich_contact_matrix",
            "sbg:x": 1345.2138202308008,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 530.5983404200941,
            "required": false,
            "label": "expected_enrich_contact_matrix"
        },
        {
            "id": "#split_bam2",
            "sbg:x": 328.92306357163494,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": -50.256409131563785,
            "required": false,
            "label": "split_bam2"
        },
        {
            "id": "#split_bam1",
            "sbg:x": 368.92312900836833,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 59.384607461782,
            "required": false,
            "label": "split_bam1"
        },
        {
            "id": "#fend_object_hdf5",
            "sbg:x": 666.1538890691907,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 21.538473569430273,
            "required": false,
            "label": "fend_object_hdf5"
        },
        {
            "id": "#HiC_norm_binning_hdf5",
            "sbg:x": 984.1028403502372,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 357.7436426095023,
            "required": false,
            "label": "HiC_norm_binning_hdf5"
        },
        {
            "id": "#HiC_data_object_hdf5",
            "sbg:x": 777.7437167478082,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 558.9744715323862,
            "required": false,
            "label": "HiC_data_object_hdf5"
        },
        {
            "id": "#observed_contact_matrix",
            "sbg:x": 1323.0770296232263,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 86.15384043744288,
            "required": false,
            "label": "observed_contact_matrix"
        },
        {
            "id": "#expected_fend_contact_matrix",
            "sbg:x": 1520.0001224540429,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 470.76925607828014,
            "required": false,
            "label": "expected_fend_contact_matrix"
        }
    ],
    "sbg:projectName": "Dev",
    "requirements": [],
    "sbg:project": "4dn-dcic/dev",
    "inputs": [
        {
            "id": "#input_fastq2",
            "sbg:x": 83,
            "label": "input_fastq2",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ",
            "sbg:y": 66
        },
        {
            "id": "#input_fastq1",
            "sbg:x": 70.5384664352124,
            "label": "input_fastq1",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ",
            "sbg:y": 222.53847149702227
        },
        {
            "id": "#bowtie_index",
            "sbg:x": 89.53847718662128,
            "label": "bowtie_index",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "TGZ",
            "sbg:y": 389.46159979718914
        },
        {
            "id": "#RE_bed",
            "sbg:x": 420.99998982747405,
            "label": "RE_bed",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BED",
            "sbg:y": 496.33335367838555
        },
        {
            "sbg:y": -18.188064069204135,
            "id": "#chrlen_file",
            "sbg:x": 749.7779160072636,
            "label": "chrlen_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#contact_matrix_binsize",
            "sbg:x": 995.3846145833035,
            "label": "contact_matrix_binsize",
            "type": [
                "int"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": -6.153860611323651
        },
        {
            "id": "#chromosome",
            "sbg:x": 835.3847081280348,
            "label": "chromosome",
            "type": [
                {
                    "items": "string",
                    "type": "array"
                }
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 75.38460620338324
        }
    ],
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "hints": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:canvas_zoom": 0.6499999999999997,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:modifiedOn": 1473274706,
    "class": "Workflow",
    "sbg:canvas_x": 1
}