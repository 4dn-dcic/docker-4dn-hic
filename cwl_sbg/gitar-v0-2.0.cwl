{
    "inputs": [
        {
            "label": "input_fastq2",
            "sbg:y": 66,
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq2",
            "sbg:x": 83,
            "type": [
                "File"
            ]
        },
        {
            "label": "input_fastq1",
            "sbg:y": 222.53847149702227,
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq1",
            "sbg:x": 70.5384664352124,
            "type": [
                "File"
            ]
        },
        {
            "label": "bowtie_index",
            "sbg:y": 389.46159979718914,
            "sbg:fileTypes": "TGZ",
            "id": "#bowtie_index",
            "sbg:x": 89.53847718662128,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "label": "RE_bed",
            "sbg:y": 496.33335367838555,
            "sbg:fileTypes": "BED",
            "id": "#RE_bed",
            "sbg:x": 420.99998982747405,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "label": "chrlen_file",
            "id": "#chrlen_file",
            "sbg:y": -18.188064069204135,
            "sbg:x": 749.7779160072636,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "label": "contact_matrix_binsize",
            "sbg:y": -6.153860611323651,
            "id": "#contact_matrix_binsize",
            "sbg:includeInPorts": true,
            "sbg:x": 995.3846145833035,
            "type": [
                "int"
            ]
        },
        {
            "label": "chromosome",
            "sbg:y": 75.38460620338324,
            "id": "#chromosome",
            "sbg:includeInPorts": true,
            "sbg:x": 835.3847081280348,
            "type": [
                {
                    "items": "string",
                    "type": "array"
                }
            ]
        }
    ],
    "sbg:revision": 0,
    "cwlVersion": "sbg:draft-2",
    "hints": [],
    "sbg:canvas_x": 1,
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "requirements": [],
    "sbg:modifiedBy": "duplexa",
    "label": "GITAR v0.2",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:modifiedOn": 1473274706,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "description": "",
    "steps": [
        {
            "inputs": [
                {
                    "default": ".",
                    "id": "#hictool_fastq2bam.output_dir"
                },
                {
                    "source": [
                        "#input_fastq2"
                    ],
                    "id": "#hictool_fastq2bam.input_fastq2"
                },
                {
                    "source": [
                        "#input_fastq1"
                    ],
                    "id": "#hictool_fastq2bam.input_fastq1"
                },
                {
                    "source": [
                        "#bowtie_index"
                    ],
                    "id": "#hictool_fastq2bam.bowtie_index"
                }
            ],
            "sbg:y": 226,
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
            "sbg:x": 265,
            "run": {
                "inputs": [
                    {
                        "sbg:includeInPorts": false,
                        "sbg:toolDefaultValue": ".",
                        "id": "#output_dir",
                        "inputBinding": {
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
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
                        "sbg:fileTypes": "FASTQ, FQ",
                        "id": "#input_fastq2",
                        "inputBinding": {
                            "position": 3,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "required": true,
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": "FASTQ, FQ",
                        "id": "#input_fastq1",
                        "inputBinding": {
                            "position": 2,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "required": true,
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": "TGZ",
                        "id": "#bowtie_index",
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "input_fastq1": {
                            "path": "/path/to/input_fastq1.fastq",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "bowtie_index": {
                            "path": "/path/to/bowtie_index.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "input_fastq2": {
                            "path": "/path/to/input_fastq2.fastq",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "output_dir": "output_dir"
                    },
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    }
                },
                "sbg:revision": 14,
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
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
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
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
                "sbg:createdBy": "gaurav",
                "label": "hictool-fastq2bam",
                "successCodes": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464804268,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464816082,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464816200,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464816230,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1465323168,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1465400656,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1465844403,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "r3.x4large",
                        "sbg:modifiedOn": 1467828936,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "docker image v2.",
                        "sbg:modifiedOn": 1467829775,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "removed outprefix from output files",
                        "sbg:modifiedOn": 1467832142,
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem.",
                        "sbg:modifiedOn": 1467832711,
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "bowtie_index redefined.",
                        "sbg:modifiedOn": 1467834125,
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "i2.xlarge",
                        "sbg:modifiedOn": 1467838837,
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam",
                        "sbg:modifiedOn": 1467989772,
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                        "sbg:modifiedOn": 1467992192,
                        "sbg:revision": 14,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "id": "gaurav/4dn/fastq2bam/14",
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                "sbg:sbgMaintained": false,
                "description": "",
                "class": "CommandLineTool",
                "sbg:image_url": null,
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "sbg:project": "gaurav/4dn",
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "stdin": "",
                "sbg:latestRevision": 14,
                "sbg:modifiedBy": "duplexa",
                "arguments": [],
                "y": 226,
                "sbg:createdOn": 1464804268,
                "temporaryFailCodes": [],
                "x": 265,
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "sbg:modifiedOn": 1467992192,
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
                "stdout": ""
            }
        },
        {
            "inputs": [
                {
                    "default": ".",
                    "id": "#hictool_bam2hdf5.output_dir"
                },
                {
                    "source": [
                        "#hictool_fastq2bam.split_bam2"
                    ],
                    "id": "#hictool_bam2hdf5.input_bam2"
                },
                {
                    "source": [
                        "#hictool_fastq2bam.split_bam1"
                    ],
                    "id": "#hictool_bam2hdf5.input_bam1"
                },
                {
                    "source": [
                        "#RE_bed"
                    ],
                    "id": "#hictool_bam2hdf5.RE_bed"
                }
            ],
            "sbg:y": 230.38462831423846,
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
            "sbg:x": 588.9231050931494,
            "run": {
                "inputs": [
                    {
                        "id": "#output_dir",
                        "inputBinding": {
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
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
                        "sbg:fileTypes": "BAM",
                        "id": "#input_bam2",
                        "inputBinding": {
                            "position": 2,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "required": true,
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": "BAM",
                        "id": "#input_bam1",
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "required": true,
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "sbg:fileTypes": "BED",
                        "id": "#RE_bed",
                        "inputBinding": {
                            "position": 3,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "RE_bed": {
                            "path": "/path/to/RE_bed.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "output_dir": "output_dir",
                        "input_bam2": {
                            "path": "/path/to/input_bam2.bam",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "input_bam1": {
                            "path": "/path/to/input_bam1.bam",
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
                "sbg:revision": 4,
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
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
                "sbg:contributors": [
                    "duplexa"
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
                "sbg:createdBy": "duplexa",
                "label": "hictool-bam2hdf5",
                "successCodes": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3",
                        "sbg:modifiedOn": 1467989155,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467989197,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "docker bam2hdf5:v2",
                        "sbg:modifiedOn": 1467989438,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5",
                        "sbg:modifiedOn": 1467989798,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467995167,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "id": "gaurav/4dn/bam2hdf5/4",
                "sbg:sbgMaintained": false,
                "description": "",
                "class": "CommandLineTool",
                "sbg:image_url": null,
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "sbg:modifiedBy": "duplexa",
                "baseCommand": [
                    "run.sh"
                ],
                "stdin": "",
                "sbg:latestRevision": 4,
                "y": 230.38462831423846,
                "arguments": [],
                "sbg:project": "gaurav/4dn",
                "sbg:createdOn": 1467989155,
                "temporaryFailCodes": [],
                "x": 588.9231050931494,
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "sbg:modifiedOn": 1467995167,
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
                "stdout": ""
            }
        },
        {
            "inputs": [
                {
                    "default": ".",
                    "id": "#hictool_hdf52matrix.output_dir"
                },
                {
                    "source": [
                        "#hictool_bam2hdf5.fend_object_hdf5"
                    ],
                    "id": "#hictool_hdf52matrix.fend_object_hdf5"
                },
                {
                    "source": [
                        "#contact_matrix_binsize"
                    ],
                    "id": "#hictool_hdf52matrix.contact_matrix_binsize"
                },
                {
                    "source": [
                        "#chromosome"
                    ],
                    "id": "#hictool_hdf52matrix.chromosome"
                },
                {
                    "source": [
                        "#chrlen_file"
                    ],
                    "id": "#hictool_hdf52matrix.chrlen_file"
                },
                {
                    "source": [
                        "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
                    ],
                    "id": "#hictool_hdf52matrix.HiC_norm_binning_hdf5"
                },
                {
                    "source": [
                        "#hictool_bam2hdf5.HiC_data_object_hdf5"
                    ],
                    "id": "#hictool_hdf52matrix.HiC_data_object_hdf5"
                }
            ],
            "sbg:y": 228.6923403133314,
            "id": "#hictool_hdf52matrix",
            "scatter": "#hictool_hdf52matrix.chromosome",
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
            "sbg:x": 1105.3846988706214,
            "run": {
                "inputs": [
                    {
                        "required": false,
                        "id": "#output_dir",
                        "inputBinding": {
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            },
                            "position": 5,
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
                        "sbg:fileTypes": "HDF5",
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#contact_matrix_binsize",
                        "sbg:includeInPorts": true,
                        "sbg:toolDefaultValue": "50000",
                        "required": true,
                        "inputBinding": {
                            "position": 3,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "int"
                        ]
                    },
                    {
                        "sbg:includeInPorts": true,
                        "required": true,
                        "id": "#chromosome",
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
                        "required": false,
                        "id": "#chrlen_file",
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
                        "sbg:fileTypes": "HDF5",
                        "id": "#HiC_norm_binning_hdf5",
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "required": true,
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "id": "#HiC_data_object_hdf5",
                        "sbg:fileTypes": "HDF5",
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "fend_object_hdf5": {
                            "path": "/path/to/fend_object_hdf5.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "chromosome": "chromosome",
                        "HiC_norm_binning_hdf5": {
                            "path": "/path/to/HiC_norm_binning_hdf5.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "output_dir": "output_dir",
                        "chrlen_file": {
                            "path": "/path/to/chrlen_file.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "contact_matrix_binsize": 0,
                        "HiC_data_object_hdf5": {
                            "path": "/path/to/HiC_data_object_hdf5.ext",
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
                "sbg:revision": 7,
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
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
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
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
                "sbg:createdBy": "gaurav",
                "label": "hictool-hdf52matrix",
                "successCodes": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464816740,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464818050,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:revisionNotes": "docker hdf52matrix:v2",
                        "sbg:modifiedOn": 1467989666,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467989698,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix",
                        "sbg:modifiedOn": 1467989823,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467991994,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467992019,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467995451,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "id": "gaurav/4dn/bam2matrix2/7",
                "sbg:sbgMaintained": false,
                "description": "",
                "class": "CommandLineTool",
                "sbg:image_url": null,
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "sbg:modifiedBy": "duplexa",
                "baseCommand": [
                    "run.sh"
                ],
                "stdin": "",
                "sbg:latestRevision": 7,
                "y": 228.6923403133314,
                "arguments": [],
                "sbg:project": "gaurav/4dn",
                "sbg:createdOn": 1464816740,
                "temporaryFailCodes": [],
                "x": 1105.3846988706214,
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "sbg:modifiedOn": 1467995451,
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
                "stdout": ""
            }
        }
    ],
    "sbg:latestRevision": 0,
    "outputs": [
        {
            "label": "sorted_bam_pe",
            "sbg:y": 328.1196788763388,
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "id": "#sorted_bam_pe",
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 391.6240561803214,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "label": "HiC_project_object_hdf5",
            "sbg:y": 124.61539063086903,
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "id": "#HiC_project_object_hdf5",
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 717.1795962773863,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "label": "HiC_distance_function_hdf5",
            "sbg:y": 500.3419382689756,
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "id": "#HiC_distance_function_hdf5",
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 939.2309175553464,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "label": "normalized_fend_contact_matrix",
            "sbg:y": 190.94018009381435,
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "id": "#normalized_fend_contact_matrix",
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 1489.2308385555568,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "label": "normalized_enrich_contact_matrix",
            "sbg:y": 330.17099214681946,
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "id": "#normalized_enrich_contact_matrix",
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 1573.6754030664124,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "label": "expected_enrich_contact_matrix",
            "sbg:y": 530.5983404200941,
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "id": "#expected_enrich_contact_matrix",
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 1345.2138202308008,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "label": "split_bam2",
            "sbg:y": -50.256409131563785,
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "id": "#split_bam2",
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 328.92306357163494,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "label": "split_bam1",
            "sbg:y": 59.384607461782,
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "id": "#split_bam1",
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 368.92312900836833,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "label": "fend_object_hdf5",
            "sbg:y": 21.538473569430273,
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "id": "#fend_object_hdf5",
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 666.1538890691907,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "label": "HiC_norm_binning_hdf5",
            "sbg:y": 357.7436426095023,
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "id": "#HiC_norm_binning_hdf5",
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 984.1028403502372,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "label": "HiC_data_object_hdf5",
            "sbg:y": 558.9744715323862,
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "id": "#HiC_data_object_hdf5",
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 777.7437167478082,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "label": "observed_contact_matrix",
            "sbg:y": 86.15384043744288,
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "id": "#observed_contact_matrix",
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 1323.0770296232263,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "label": "expected_fend_contact_matrix",
            "sbg:y": 470.76925607828014,
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "id": "#expected_fend_contact_matrix",
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:x": 1520.0001224540429,
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "Workflow",
    "sbg:modifiedOn": 1473274706,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:createdBy": "duplexa",
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "sbg:canvas_zoom": 0.6499999999999997,
    "sbg:projectName": "Dev",
    "sbg:canvas_y": 66,
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1473274706,
    "sbg:sbgMaintained": false,
    "sbg:image_url": null,
    "sbg:validationErrors": []
}