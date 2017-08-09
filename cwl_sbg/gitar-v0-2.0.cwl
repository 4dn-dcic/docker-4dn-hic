{
    "sbg:project": "4dn-dcic/dev",
    "sbg:sbgMaintained": false,
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "sbg:canvas_y": 66,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "sbg:image_url": null,
    "sbg:createdOn": 1473274706,
    "steps": [
        {
            "id": "#hictool_fastq2bam",
            "sbg:y": 226,
            "run": {
                "sbg:project": "gaurav/4dn",
                "sbg:sbgMaintained": false,
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "id": "gaurav/4dn/fastq2bam/14",
                "stdin": "",
                "sbg:image_url": null,
                "sbg:createdOn": 1464804268,
                "label": "hictool-fastq2bam",
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                "arguments": [],
                "x": 265,
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
                "sbg:revision": 14,
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
                "stdout": "",
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464804268,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816082,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816200,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816230,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1465323168,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1465400656,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1465844403,
                        "sbg:revision": 6
                    },
                    {
                        "sbg:revisionNotes": "r3.x4large",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467828936,
                        "sbg:revision": 7
                    },
                    {
                        "sbg:revisionNotes": "docker image v2.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467829775,
                        "sbg:revision": 8
                    },
                    {
                        "sbg:revisionNotes": "removed outprefix from output files",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467832142,
                        "sbg:revision": 9
                    },
                    {
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467832711,
                        "sbg:revision": 10
                    },
                    {
                        "sbg:revisionNotes": "bowtie_index redefined.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467834125,
                        "sbg:revision": 11
                    },
                    {
                        "sbg:revisionNotes": "i2.xlarge",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467838837,
                        "sbg:revision": 12
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989772,
                        "sbg:revision": 13
                    },
                    {
                        "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467992192,
                        "sbg:revision": 14
                    }
                ],
                "successCodes": [],
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "temporaryFailCodes": [],
                "sbg:modifiedBy": "duplexa",
                "sbg:validationErrors": [],
                "description": "",
                "sbg:createdBy": "gaurav",
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
                "sbg:modifiedOn": 1467992192,
                "class": "CommandLineTool",
                "sbg:latestRevision": 14,
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "inputs": [
                    {
                        "id": "#output_dir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:includeInPorts": false,
                        "sbg:toolDefaultValue": ".",
                        "inputBinding": {
                            "separate": false,
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression"
                            }
                        }
                    },
                    {
                        "id": "#input_fastq2",
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "FASTQ, FQ",
                        "required": true,
                        "inputBinding": {
                            "separate": false,
                            "position": 3,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "id": "#input_fastq1",
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "FASTQ, FQ",
                        "required": true,
                        "inputBinding": {
                            "separate": false,
                            "position": 2,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "id": "#bowtie_index",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "TGZ",
                        "required": false,
                        "inputBinding": {
                            "separate": false,
                            "position": 1,
                            "sbg:cmdInclude": true
                        }
                    }
                ],
                "y": 226,
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
                        "bowtie_index": {
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/bowtie_index.ext",
                            "class": "File"
                        },
                        "output_dir": "output_dir",
                        "input_fastq2": {
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq2.fastq",
                            "class": "File"
                        },
                        "input_fastq1": {
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq1.fastq",
                            "class": "File"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    }
                }
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
            "sbg:x": 265,
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
            "sbg:y": 230.38462831423846,
            "run": {
                "sbg:project": "gaurav/4dn",
                "sbg:sbgMaintained": false,
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "id": "gaurav/4dn/bam2hdf5/4",
                "stdin": "",
                "sbg:image_url": null,
                "sbg:createdOn": 1467989155,
                "label": "hictool-bam2hdf5",
                "arguments": [],
                "x": 588.9231050931494,
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
                "sbg:revision": 4,
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
                "stdout": "",
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989155,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989197,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": "docker bam2hdf5:v2",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989438,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989798,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467995167,
                        "sbg:revision": 4
                    }
                ],
                "successCodes": [],
                "sbg:contributors": [
                    "duplexa"
                ],
                "temporaryFailCodes": [],
                "sbg:modifiedBy": "duplexa",
                "sbg:validationErrors": [],
                "description": "",
                "sbg:createdBy": "duplexa",
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
                "sbg:modifiedOn": 1467995167,
                "class": "CommandLineTool",
                "sbg:latestRevision": 4,
                "baseCommand": [
                    "run.sh"
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
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression"
                            }
                        }
                    },
                    {
                        "id": "#input_bam2",
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "BAM",
                        "required": true,
                        "inputBinding": {
                            "separate": false,
                            "position": 2,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "id": "#input_bam1",
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "BAM",
                        "required": true,
                        "inputBinding": {
                            "separate": false,
                            "position": 1,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "id": "#RE_bed",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "BED",
                        "required": false,
                        "inputBinding": {
                            "separate": false,
                            "position": 3,
                            "sbg:cmdInclude": true
                        }
                    }
                ],
                "y": 230.38462831423846,
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
                        "RE_bed": {
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/RE_bed.ext",
                            "class": "File"
                        },
                        "output_dir": "output_dir",
                        "input_bam1": {
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/input_bam1.bam",
                            "class": "File"
                        },
                        "input_bam2": {
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/input_bam2.bam",
                            "class": "File"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    }
                }
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
            "sbg:x": 588.9231050931494,
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
            "sbg:y": 228.6923403133314,
            "run": {
                "sbg:project": "gaurav/4dn",
                "sbg:sbgMaintained": false,
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "id": "gaurav/4dn/bam2matrix2/7",
                "stdin": "",
                "sbg:image_url": null,
                "sbg:createdOn": 1464816740,
                "label": "hictool-hdf52matrix",
                "arguments": [],
                "x": 1105.3846988706214,
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
                "sbg:revision": 7,
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
                "stdout": "",
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816740,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464818050,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": "docker hdf52matrix:v2",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989666,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989698,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989823,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467991994,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467992019,
                        "sbg:revision": 6
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467995451,
                        "sbg:revision": 7
                    }
                ],
                "successCodes": [],
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "temporaryFailCodes": [],
                "sbg:modifiedBy": "duplexa",
                "sbg:validationErrors": [],
                "description": "",
                "sbg:createdBy": "gaurav",
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
                "sbg:modifiedOn": 1467995451,
                "class": "CommandLineTool",
                "sbg:latestRevision": 7,
                "baseCommand": [
                    "run.sh"
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
                            "position": 5,
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression"
                            }
                        },
                        "required": false
                    },
                    {
                        "id": "#fend_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "HDF5",
                        "required": false
                    },
                    {
                        "id": "#contact_matrix_binsize",
                        "sbg:includeInPorts": true,
                        "required": true,
                        "type": [
                            "int"
                        ],
                        "sbg:toolDefaultValue": "50000",
                        "inputBinding": {
                            "separate": false,
                            "position": 3,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "id": "#chromosome",
                        "type": [
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "sbg:includeInPorts": true,
                        "inputBinding": {
                            "separate": false,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "required": true
                    },
                    {
                        "id": "#chrlen_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 4,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    },
                    {
                        "id": "#HiC_norm_binning_hdf5",
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "HDF5",
                        "required": true,
                        "inputBinding": {
                            "separate": false,
                            "position": 1,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "id": "#HiC_data_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "HDF5",
                        "required": false
                    }
                ],
                "y": 228.6923403133314,
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
                        "chromosome": "chromosome",
                        "fend_object_hdf5": {
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/fend_object_hdf5.ext",
                            "class": "File"
                        },
                        "contact_matrix_binsize": 0,
                        "HiC_data_object_hdf5": {
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/HiC_data_object_hdf5.ext",
                            "class": "File"
                        },
                        "chrlen_file": {
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/chrlen_file.ext",
                            "class": "File"
                        },
                        "HiC_norm_binning_hdf5": {
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/HiC_norm_binning_hdf5.ext",
                            "class": "File"
                        },
                        "output_dir": "output_dir"
                    },
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 8000
                    }
                }
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
            "sbg:x": 1105.3846988706214
        }
    ],
    "sbg:canvas_zoom": 0.6499999999999997,
    "sbg:canvas_x": 1,
    "sbg:modifiedBy": "duplexa",
    "sbg:projectName": "Dev",
    "sbg:revision": 0,
    "requirements": [],
    "outputs": [
        {
            "id": "#sorted_bam_pe",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "sorted_bam_pe",
            "sbg:y": 328.1196788763388,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "sbg:x": 391.6240561803214
        },
        {
            "id": "#HiC_project_object_hdf5",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "HiC_project_object_hdf5",
            "sbg:y": 124.61539063086903,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "sbg:x": 717.1795962773863
        },
        {
            "id": "#HiC_distance_function_hdf5",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "HiC_distance_function_hdf5",
            "sbg:y": 500.3419382689756,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "sbg:x": 939.2309175553464
        },
        {
            "id": "#normalized_fend_contact_matrix",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "normalized_fend_contact_matrix",
            "sbg:y": 190.94018009381435,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "sbg:x": 1489.2308385555568
        },
        {
            "id": "#normalized_enrich_contact_matrix",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "normalized_enrich_contact_matrix",
            "sbg:y": 330.17099214681946,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "sbg:x": 1573.6754030664124
        },
        {
            "id": "#expected_enrich_contact_matrix",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "expected_enrich_contact_matrix",
            "sbg:y": 530.5983404200941,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "sbg:x": 1345.2138202308008
        },
        {
            "id": "#split_bam2",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "split_bam2",
            "sbg:y": -50.256409131563785,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "sbg:x": 328.92306357163494
        },
        {
            "id": "#split_bam1",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "split_bam1",
            "sbg:y": 59.384607461782,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "sbg:x": 368.92312900836833
        },
        {
            "id": "#fend_object_hdf5",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "fend_object_hdf5",
            "sbg:y": 21.538473569430273,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "sbg:x": 666.1538890691907
        },
        {
            "id": "#HiC_norm_binning_hdf5",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "HiC_norm_binning_hdf5",
            "sbg:y": 357.7436426095023,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "sbg:x": 984.1028403502372
        },
        {
            "id": "#HiC_data_object_hdf5",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "HiC_data_object_hdf5",
            "sbg:y": 558.9744715323862,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "sbg:x": 777.7437167478082
        },
        {
            "id": "#observed_contact_matrix",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "observed_contact_matrix",
            "sbg:y": 86.15384043744288,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "sbg:x": 1323.0770296232263
        },
        {
            "id": "#expected_fend_contact_matrix",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "expected_fend_contact_matrix",
            "sbg:y": 470.76925607828014,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "sbg:x": 1520.0001224540429
        }
    ],
    "label": "GITAR v0.2",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274706,
            "sbg:revision": 0
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:validationErrors": [],
    "description": "",
    "sbg:createdBy": "duplexa",
    "hints": [],
    "sbg:modifiedOn": 1473274706,
    "class": "Workflow",
    "sbg:latestRevision": 0,
    "inputs": [
        {
            "id": "#input_fastq2",
            "sbg:fileTypes": "FASTQ, FQ",
            "sbg:x": 83,
            "sbg:y": 66,
            "type": [
                "File"
            ],
            "label": "input_fastq2"
        },
        {
            "id": "#input_fastq1",
            "sbg:fileTypes": "FASTQ, FQ",
            "sbg:x": 70.5384664352124,
            "sbg:y": 222.53847149702227,
            "type": [
                "File"
            ],
            "label": "input_fastq1"
        },
        {
            "id": "#bowtie_index",
            "sbg:fileTypes": "TGZ",
            "sbg:x": 89.53847718662128,
            "sbg:y": 389.46159979718914,
            "type": [
                "null",
                "File"
            ],
            "label": "bowtie_index"
        },
        {
            "id": "#RE_bed",
            "sbg:fileTypes": "BED",
            "sbg:x": 420.99998982747405,
            "sbg:y": 496.33335367838555,
            "type": [
                "null",
                "File"
            ],
            "label": "RE_bed"
        },
        {
            "id": "#chrlen_file",
            "sbg:y": -18.188064069204135,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 749.7779160072636,
            "label": "chrlen_file"
        },
        {
            "id": "#contact_matrix_binsize",
            "sbg:includeInPorts": true,
            "sbg:y": -6.153860611323651,
            "type": [
                "int"
            ],
            "label": "contact_matrix_binsize",
            "sbg:x": 995.3846145833035
        },
        {
            "id": "#chromosome",
            "sbg:includeInPorts": true,
            "sbg:y": 75.38460620338324,
            "type": [
                {
                    "items": "string",
                    "type": "array"
                }
            ],
            "label": "chromosome",
            "sbg:x": 835.3847081280348
        }
    ],
    "cwlVersion": "sbg:draft-2"
}