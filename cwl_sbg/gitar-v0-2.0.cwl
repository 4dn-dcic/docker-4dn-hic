{
    "steps": [
        {
            "id": "#hictool_fastq2bam",
            "run": {
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "sbg:revision": 14,
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                "sbg:createdBy": "gaurav",
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "stdin": "",
                "label": "hictool-fastq2bam",
                "hints": [
                    {
                        "class": "sbg:MemRequirement",
                        "value": 24000
                    },
                    {
                        "dockerPull": "duplexa/hictool-fastq2bam:v3",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
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
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "cwlVersion": "sbg:draft-2",
                "description": "",
                "sbg:modifiedOn": 1467992192,
                "stdout": "",
                "sbg:job": {
                    "inputs": {
                        "input_fastq1": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_fastq1.fastq"
                        },
                        "output_dir": "output_dir",
                        "input_fastq2": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_fastq2.fastq"
                        },
                        "bowtie_index": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/bowtie_index.ext"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    }
                },
                "y": 226,
                "sbg:modifiedBy": "duplexa",
                "sbg:sbgMaintained": false,
                "sbg:validationErrors": [],
                "sbg:latestRevision": 14,
                "sbg:project": "gaurav/4dn",
                "sbg:createdOn": 1464804268,
                "sbg:image_url": null,
                "successCodes": [],
                "id": "gaurav/4dn/fastq2bam/14",
                "class": "CommandLineTool",
                "x": 265,
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
                "outputs": [
                    {
                        "id": "#split_bam2",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/out_pair2.bam'"
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/out_pair1.bam'"
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "inputs": [
                    {
                        "id": "#output_dir",
                        "sbg:includeInPorts": false,
                        "inputBinding": {
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'"
                            },
                            "position": 4,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "."
                    },
                    {
                        "inputBinding": {
                            "position": 3,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "FASTQ, FQ",
                        "required": true,
                        "type": [
                            "File"
                        ],
                        "id": "#input_fastq2"
                    },
                    {
                        "inputBinding": {
                            "position": 2,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "FASTQ, FQ",
                        "required": true,
                        "type": [
                            "File"
                        ],
                        "id": "#input_fastq1"
                    },
                    {
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "TGZ",
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#bowtie_index"
                    }
                ],
                "temporaryFailCodes": [],
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
                "arguments": []
            },
            "sbg:x": 265,
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
            ]
        },
        {
            "id": "#hictool_bam2hdf5",
            "run": {
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "sbg:revision": 4,
                "sbg:createdBy": "duplexa",
                "baseCommand": [
                    "run.sh"
                ],
                "stdin": "",
                "label": "hictool-bam2hdf5",
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
                        "dockerPull": "duplexa/hictool-bam2hdf5:v2",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "sbg:contributors": [
                    "duplexa"
                ],
                "cwlVersion": "sbg:draft-2",
                "description": "",
                "sbg:modifiedOn": 1467995167,
                "stdout": "",
                "sbg:job": {
                    "inputs": {
                        "input_bam1": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_bam1.bam"
                        },
                        "output_dir": "output_dir",
                        "input_bam2": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_bam2.bam"
                        },
                        "RE_bed": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/RE_bed.ext"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    }
                },
                "y": 230.38462831423846,
                "sbg:modifiedBy": "duplexa",
                "sbg:sbgMaintained": false,
                "sbg:validationErrors": [],
                "sbg:latestRevision": 4,
                "sbg:project": "gaurav/4dn",
                "sbg:createdOn": 1467989155,
                "sbg:image_url": null,
                "successCodes": [],
                "id": "gaurav/4dn/bam2hdf5/4",
                "class": "CommandLineTool",
                "x": 588.9231050931494,
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
                "outputs": [
                    {
                        "id": "#fend_object_hdf5",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/fend_object.hdf5'"
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' "
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'"
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'"
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "inputs": [
                    {
                        "id": "#output_dir",
                        "inputBinding": {
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'"
                            },
                            "position": 4,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
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
                        "type": [
                            "File"
                        ],
                        "id": "#input_bam2"
                    },
                    {
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "BAM",
                        "required": true,
                        "type": [
                            "File"
                        ],
                        "id": "#input_bam1"
                    },
                    {
                        "inputBinding": {
                            "position": 3,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "BED",
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#RE_bed"
                    }
                ],
                "temporaryFailCodes": [],
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
                "arguments": []
            },
            "sbg:x": 588.9231050931494,
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
            ]
        },
        {
            "id": "#hictool_hdf52matrix",
            "run": {
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "sbg:revision": 7,
                "sbg:createdBy": "gaurav",
                "baseCommand": [
                    "run.sh"
                ],
                "stdin": "",
                "label": "hictool-hdf52matrix",
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
                        "dockerPull": "duplexa/hictool-hdf52matrix:v2",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "cwlVersion": "sbg:draft-2",
                "description": "",
                "sbg:modifiedOn": 1467995451,
                "stdout": "",
                "sbg:job": {
                    "inputs": {
                        "HiC_norm_binning_hdf5": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/HiC_norm_binning_hdf5.ext"
                        },
                        "contact_matrix_binsize": 0,
                        "HiC_data_object_hdf5": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/HiC_data_object_hdf5.ext"
                        },
                        "output_dir": "output_dir",
                        "chromosome": "chromosome",
                        "chrlen_file": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/chrlen_file.ext"
                        },
                        "fend_object_hdf5": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/fend_object_hdf5.ext"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 8000
                    }
                },
                "y": 228.6923403133314,
                "sbg:modifiedBy": "duplexa",
                "sbg:sbgMaintained": false,
                "sbg:validationErrors": [],
                "sbg:latestRevision": 7,
                "sbg:project": "gaurav/4dn",
                "sbg:createdOn": 1464816740,
                "sbg:image_url": null,
                "successCodes": [],
                "id": "gaurav/4dn/bam2matrix2/7",
                "class": "CommandLineTool",
                "x": 1105.3846988706214,
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
                "outputs": [
                    {
                        "id": "#observed_contact_matrix",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' "
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' "
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' "
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' "
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "inputs": [
                    {
                        "inputBinding": {
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'"
                            },
                            "position": 5,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "id": "#output_dir",
                        "required": false,
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "sbg:fileTypes": "HDF5",
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#fend_object_hdf5"
                    },
                    {
                        "inputBinding": {
                            "position": 3,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "id": "#contact_matrix_binsize",
                        "type": [
                            "int"
                        ],
                        "required": true,
                        "sbg:toolDefaultValue": "50000",
                        "sbg:includeInPorts": true
                    },
                    {
                        "id": "#chromosome",
                        "required": true,
                        "inputBinding": {
                            "position": 2,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            {
                                "type": "array",
                                "items": "string"
                            }
                        ],
                        "sbg:includeInPorts": true
                    },
                    {
                        "inputBinding": {
                            "position": 4,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "id": "#chrlen_file",
                        "required": false,
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
                        "type": [
                            "File"
                        ],
                        "id": "#HiC_norm_binning_hdf5"
                    },
                    {
                        "sbg:fileTypes": "HDF5",
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#HiC_data_object_hdf5"
                    }
                ],
                "temporaryFailCodes": [],
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
                "arguments": []
            },
            "sbg:x": 1105.3846988706214,
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
            ],
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
            "scatter": "#hictool_hdf52matrix.chromosome"
        }
    ],
    "sbg:revision": 0,
    "sbg:createdBy": "duplexa",
    "sbg:canvas_y": 66,
    "label": "GITAR v0.2",
    "hints": [],
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "sbg:contributors": [
        "duplexa"
    ],
    "cwlVersion": "sbg:draft-2",
    "description": "",
    "class": "Workflow",
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "duplexa",
    "sbg:sbgMaintained": false,
    "sbg:canvas_zoom": 0.6499999999999997,
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "sbg:latestRevision": 0,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1473274706,
    "sbg:image_url": null,
    "sbg:canvas_x": 1,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "sbg:projectName": "Dev",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:modifiedOn": 1473274706
        }
    ],
    "outputs": [
        {
            "id": "#sorted_bam_pe",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:x": 391.6240561803214,
            "sbg:y": 328.1196788763388,
            "label": "sorted_bam_pe",
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "sbg:includeInPorts": true
        },
        {
            "id": "#HiC_project_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:x": 717.1795962773863,
            "sbg:y": 124.61539063086903,
            "label": "HiC_project_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "sbg:includeInPorts": true
        },
        {
            "id": "#HiC_distance_function_hdf5",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:x": 939.2309175553464,
            "sbg:y": 500.3419382689756,
            "label": "HiC_distance_function_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "sbg:includeInPorts": true
        },
        {
            "id": "#normalized_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:x": 1489.2308385555568,
            "sbg:y": 190.94018009381435,
            "label": "normalized_fend_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "sbg:includeInPorts": true
        },
        {
            "id": "#normalized_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:x": 1573.6754030664124,
            "sbg:y": 330.17099214681946,
            "label": "normalized_enrich_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "sbg:includeInPorts": true
        },
        {
            "id": "#expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:x": 1345.2138202308008,
            "sbg:y": 530.5983404200941,
            "label": "expected_enrich_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "sbg:includeInPorts": true
        },
        {
            "id": "#split_bam2",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:x": 328.92306357163494,
            "sbg:y": -50.256409131563785,
            "label": "split_bam2",
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "sbg:includeInPorts": true
        },
        {
            "id": "#split_bam1",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:x": 368.92312900836833,
            "sbg:y": 59.384607461782,
            "label": "split_bam1",
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "sbg:includeInPorts": true
        },
        {
            "id": "#fend_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:x": 666.1538890691907,
            "sbg:y": 21.538473569430273,
            "label": "fend_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "sbg:includeInPorts": true
        },
        {
            "id": "#HiC_norm_binning_hdf5",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:x": 984.1028403502372,
            "sbg:y": 357.7436426095023,
            "label": "HiC_norm_binning_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "sbg:includeInPorts": true
        },
        {
            "id": "#HiC_data_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:x": 777.7437167478082,
            "sbg:y": 558.9744715323862,
            "label": "HiC_data_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "sbg:includeInPorts": true
        },
        {
            "id": "#observed_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:x": 1323.0770296232263,
            "sbg:y": 86.15384043744288,
            "label": "observed_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "sbg:includeInPorts": true
        },
        {
            "id": "#expected_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "sbg:x": 1520.0001224540429,
            "sbg:y": 470.76925607828014,
            "label": "expected_fend_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "sbg:includeInPorts": true
        }
    ],
    "inputs": [
        {
            "id": "#input_fastq2",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ",
            "sbg:x": 83,
            "label": "input_fastq2",
            "sbg:y": 66
        },
        {
            "id": "#input_fastq1",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ",
            "sbg:x": 70.5384664352124,
            "label": "input_fastq1",
            "sbg:y": 222.53847149702227
        },
        {
            "id": "#bowtie_index",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "TGZ",
            "sbg:x": 89.53847718662128,
            "label": "bowtie_index",
            "sbg:y": 389.46159979718914
        },
        {
            "id": "#RE_bed",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BED",
            "sbg:x": 420.99998982747405,
            "label": "RE_bed",
            "sbg:y": 496.33335367838555
        },
        {
            "sbg:y": -18.188064069204135,
            "sbg:x": 749.7779160072636,
            "label": "chrlen_file",
            "type": [
                "null",
                "File"
            ],
            "id": "#chrlen_file"
        },
        {
            "id": "#contact_matrix_binsize",
            "type": [
                "int"
            ],
            "sbg:x": 995.3846145833035,
            "sbg:y": -6.153860611323651,
            "label": "contact_matrix_binsize",
            "sbg:includeInPorts": true
        },
        {
            "id": "#chromosome",
            "type": [
                {
                    "type": "array",
                    "items": "string"
                }
            ],
            "sbg:x": 835.3847081280348,
            "sbg:y": 75.38460620338324,
            "label": "chromosome",
            "sbg:includeInPorts": true
        }
    ],
    "requirements": [],
    "sbg:modifiedOn": 1473274706
}