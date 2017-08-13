{
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "sbg:contributors": [
        "duplexa"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_fastq2",
            "sbg:y": 66,
            "label": "input_fastq2",
            "sbg:x": 83,
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "type": [
                "File"
            ],
            "id": "#input_fastq1",
            "sbg:y": 222.53847149702227,
            "label": "input_fastq1",
            "sbg:x": 70.5384664352124,
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#bowtie_index",
            "sbg:y": 389.46159979718914,
            "label": "bowtie_index",
            "sbg:x": 89.53847718662128,
            "sbg:fileTypes": "TGZ"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#RE_bed",
            "sbg:y": 496.33335367838555,
            "label": "RE_bed",
            "sbg:x": 420.99998982747405,
            "sbg:fileTypes": "BED"
        },
        {
            "sbg:y": -18.188064069204135,
            "label": "chrlen_file",
            "sbg:x": 749.7779160072636,
            "id": "#chrlen_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "type": [
                "int"
            ],
            "id": "#contact_matrix_binsize",
            "sbg:includeInPorts": true,
            "label": "contact_matrix_binsize",
            "sbg:y": -6.153860611323651,
            "sbg:x": 995.3846145833035
        },
        {
            "type": [
                {
                    "items": "string",
                    "type": "array"
                }
            ],
            "id": "#chromosome",
            "sbg:includeInPorts": true,
            "label": "chromosome",
            "sbg:y": 75.38460620338324,
            "sbg:x": 835.3847081280348
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:createdOn": 1473274706,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:modifiedOn": 1473274706
        }
    ],
    "class": "Workflow",
    "steps": [
        {
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
            "sbg:x": 265,
            "run": {
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "stdout": "",
                "id": "gaurav/4dn/fastq2bam/14",
                "inputs": [
                    {
                        "sbg:includeInPorts": false,
                        "inputBinding": {
                            "separate": false,
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            },
                            "sbg:cmdInclude": true,
                            "position": 4
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#output_dir",
                        "sbg:toolDefaultValue": "."
                    },
                    {
                        "sbg:fileTypes": "FASTQ, FQ",
                        "required": true,
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 3
                        },
                        "type": [
                            "File"
                        ],
                        "id": "#input_fastq2"
                    },
                    {
                        "sbg:fileTypes": "FASTQ, FQ",
                        "required": true,
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "type": [
                            "File"
                        ],
                        "id": "#input_fastq1"
                    },
                    {
                        "sbg:fileTypes": "TGZ",
                        "required": false,
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#bowtie_index"
                    }
                ],
                "sbg:createdBy": "gaurav",
                "stdin": "",
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "arguments": [],
                "y": 226,
                "sbg:createdOn": 1464804268,
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464804268
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464816082
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464816200
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464816230
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1465323168
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1465400656
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1465844403
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7,
                        "sbg:revisionNotes": "r3.x4large",
                        "sbg:modifiedOn": 1467828936
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 8,
                        "sbg:revisionNotes": "docker image v2.",
                        "sbg:modifiedOn": 1467829775
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 9,
                        "sbg:revisionNotes": "removed outprefix from output files",
                        "sbg:modifiedOn": 1467832142
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 10,
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem.",
                        "sbg:modifiedOn": 1467832711
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 11,
                        "sbg:revisionNotes": "bowtie_index redefined.",
                        "sbg:modifiedOn": 1467834125
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 12,
                        "sbg:revisionNotes": "i2.xlarge",
                        "sbg:modifiedOn": 1467838837
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 13,
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam",
                        "sbg:modifiedOn": 1467989772
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 14,
                        "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                        "sbg:modifiedOn": 1467992192
                    }
                ],
                "class": "CommandLineTool",
                "x": 265,
                "label": "hictool-fastq2bam",
                "requirements": [
                    {
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "bowtie_index": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/bowtie_index.ext",
                            "secondaryFiles": []
                        },
                        "input_fastq2": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_fastq2.fastq",
                            "secondaryFiles": []
                        },
                        "output_dir": "output_dir",
                        "input_fastq1": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_fastq1.fastq",
                            "secondaryFiles": []
                        }
                    },
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    }
                },
                "successCodes": [],
                "sbg:revision": 14,
                "sbg:project": "gaurav/4dn",
                "sbg:validationErrors": [],
                "sbg:latestRevision": 14,
                "sbg:sbgMaintained": false,
                "cwlVersion": "sbg:draft-2",
                "description": "",
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
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                "sbg:modifiedBy": "duplexa",
                "sbg:image_url": null,
                "outputs": [
                    {
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
                        ],
                        "id": "#split_bam2"
                    },
                    {
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
                        ],
                        "id": "#split_bam1"
                    },
                    {
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
                        ],
                        "id": "#sorted_bam_pe"
                    }
                ],
                "sbg:modifiedOn": 1467992192,
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "temporaryFailCodes": []
            }
        },
        {
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
            "sbg:x": 588.9231050931494,
            "run": {
                "sbg:contributors": [
                    "duplexa"
                ],
                "stdout": "",
                "id": "gaurav/4dn/bam2hdf5/4",
                "inputs": [
                    {
                        "inputBinding": {
                            "separate": false,
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            },
                            "sbg:cmdInclude": true,
                            "position": 4
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#output_dir"
                    },
                    {
                        "sbg:fileTypes": "BAM",
                        "required": true,
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "type": [
                            "File"
                        ],
                        "id": "#input_bam2"
                    },
                    {
                        "sbg:fileTypes": "BAM",
                        "required": true,
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "type": [
                            "File"
                        ],
                        "id": "#input_bam1"
                    },
                    {
                        "sbg:fileTypes": "BED",
                        "required": false,
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 3
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#RE_bed"
                    }
                ],
                "sbg:createdBy": "duplexa",
                "stdin": "",
                "baseCommand": [
                    "run.sh"
                ],
                "arguments": [],
                "y": 230.38462831423846,
                "sbg:createdOn": 1467989155,
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3",
                        "sbg:modifiedOn": 1467989155
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467989197
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": "docker bam2hdf5:v2",
                        "sbg:modifiedOn": 1467989438
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3,
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5",
                        "sbg:modifiedOn": 1467989798
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467995167
                    }
                ],
                "class": "CommandLineTool",
                "x": 588.9231050931494,
                "label": "hictool-bam2hdf5",
                "requirements": [
                    {
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "input_bam2": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_bam2.bam",
                            "secondaryFiles": []
                        },
                        "RE_bed": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/RE_bed.ext",
                            "secondaryFiles": []
                        },
                        "output_dir": "output_dir",
                        "input_bam1": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/input_bam1.bam",
                            "secondaryFiles": []
                        }
                    },
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    }
                },
                "successCodes": [],
                "sbg:revision": 4,
                "sbg:project": "gaurav/4dn",
                "sbg:validationErrors": [],
                "sbg:latestRevision": 4,
                "sbg:sbgMaintained": false,
                "cwlVersion": "sbg:draft-2",
                "description": "",
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
                "temporaryFailCodes": [],
                "sbg:modifiedBy": "duplexa",
                "sbg:image_url": null,
                "outputs": [
                    {
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
                        ],
                        "id": "#fend_object_hdf5"
                    },
                    {
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
                        ],
                        "id": "#HiC_project_object_hdf5"
                    },
                    {
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
                        ],
                        "id": "#HiC_norm_binning_hdf5"
                    },
                    {
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
                        ],
                        "id": "#HiC_distance_function_hdf5"
                    },
                    {
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
                        ],
                        "id": "#HiC_data_object_hdf5"
                    }
                ],
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "sbg:modifiedOn": 1467995167
            }
        },
        {
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
            "sbg:x": 1105.3846988706214,
            "run": {
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "stdout": "",
                "id": "gaurav/4dn/bam2matrix2/7",
                "inputs": [
                    {
                        "required": false,
                        "inputBinding": {
                            "separate": false,
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            },
                            "sbg:cmdInclude": true,
                            "position": 5
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#output_dir"
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
                        "required": true,
                        "type": [
                            "int"
                        ],
                        "id": "#contact_matrix_binsize",
                        "sbg:toolDefaultValue": "50000",
                        "sbg:includeInPorts": true,
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 3
                        }
                    },
                    {
                        "sbg:includeInPorts": true,
                        "required": true,
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "type": [
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "id": "#chromosome"
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 4
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#chrlen_file"
                    },
                    {
                        "sbg:fileTypes": "HDF5",
                        "required": true,
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
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
                "sbg:createdBy": "gaurav",
                "stdin": "",
                "baseCommand": [
                    "run.sh"
                ],
                "arguments": [],
                "y": 228.6923403133314,
                "sbg:createdOn": 1464816740,
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464816740
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464818050
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": "docker hdf52matrix:v2",
                        "sbg:modifiedOn": 1467989666
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467989698
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4,
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix",
                        "sbg:modifiedOn": 1467989823
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467991994
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467992019
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467995451
                    }
                ],
                "class": "CommandLineTool",
                "x": 1105.3846988706214,
                "label": "hictool-hdf52matrix",
                "requirements": [
                    {
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "fend_object_hdf5": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/fend_object_hdf5.ext",
                            "secondaryFiles": []
                        },
                        "chrlen_file": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/chrlen_file.ext",
                            "secondaryFiles": []
                        },
                        "chromosome": "chromosome",
                        "contact_matrix_binsize": 0,
                        "HiC_data_object_hdf5": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/HiC_data_object_hdf5.ext",
                            "secondaryFiles": []
                        },
                        "output_dir": "output_dir",
                        "HiC_norm_binning_hdf5": {
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/HiC_norm_binning_hdf5.ext",
                            "secondaryFiles": []
                        }
                    },
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 8000
                    }
                },
                "successCodes": [],
                "sbg:revision": 7,
                "sbg:project": "gaurav/4dn",
                "sbg:validationErrors": [],
                "sbg:latestRevision": 7,
                "sbg:sbgMaintained": false,
                "cwlVersion": "sbg:draft-2",
                "description": "",
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
                "temporaryFailCodes": [],
                "sbg:modifiedBy": "duplexa",
                "sbg:image_url": null,
                "outputs": [
                    {
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
                        ],
                        "id": "#observed_contact_matrix"
                    },
                    {
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
                        ],
                        "id": "#normalized_fend_contact_matrix"
                    },
                    {
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
                        ],
                        "id": "#normalized_enrich_contact_matrix"
                    },
                    {
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
                        ],
                        "id": "#expected_fend_contact_matrix"
                    },
                    {
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
                        ],
                        "id": "#expected_enrich_contact_matrix"
                    }
                ],
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "sbg:modifiedOn": 1467995451
            }
        }
    ],
    "sbg:modifiedBy": "duplexa",
    "label": "GITAR v0.2",
    "requirements": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:revision": 0,
    "sbg:project": "4dn-dcic/dev",
    "sbg:validationErrors": [],
    "sbg:canvas_x": 1,
    "sbg:latestRevision": 0,
    "sbg:sbgMaintained": false,
    "sbg:canvas_zoom": 0.6499999999999997,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "description": "",
    "hints": [],
    "sbg:projectName": "Dev",
    "sbg:image_url": null,
    "outputs": [
        {
            "sbg:x": 391.6240561803214,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "id": "#sorted_bam_pe",
            "sbg:includeInPorts": true,
            "label": "sorted_bam_pe",
            "sbg:y": 328.1196788763388,
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ]
        },
        {
            "sbg:x": 717.1795962773863,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_project_object_hdf5",
            "sbg:includeInPorts": true,
            "label": "HiC_project_object_hdf5",
            "sbg:y": 124.61539063086903,
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ]
        },
        {
            "sbg:x": 939.2309175553464,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_distance_function_hdf5",
            "sbg:includeInPorts": true,
            "label": "HiC_distance_function_hdf5",
            "sbg:y": 500.3419382689756,
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ]
        },
        {
            "sbg:x": 1489.2308385555568,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_fend_contact_matrix",
            "sbg:includeInPorts": true,
            "label": "normalized_fend_contact_matrix",
            "sbg:y": 190.94018009381435,
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ]
        },
        {
            "sbg:x": 1573.6754030664124,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_enrich_contact_matrix",
            "sbg:includeInPorts": true,
            "label": "normalized_enrich_contact_matrix",
            "sbg:y": 330.17099214681946,
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ]
        },
        {
            "sbg:x": 1345.2138202308008,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_enrich_contact_matrix",
            "sbg:includeInPorts": true,
            "label": "expected_enrich_contact_matrix",
            "sbg:y": 530.5983404200941,
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ]
        },
        {
            "sbg:x": 328.92306357163494,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam2",
            "sbg:includeInPorts": true,
            "label": "split_bam2",
            "sbg:y": -50.256409131563785,
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ]
        },
        {
            "sbg:x": 368.92312900836833,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam1",
            "sbg:includeInPorts": true,
            "label": "split_bam1",
            "sbg:y": 59.384607461782,
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ]
        },
        {
            "sbg:x": 666.1538890691907,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "id": "#fend_object_hdf5",
            "sbg:includeInPorts": true,
            "label": "fend_object_hdf5",
            "sbg:y": 21.538473569430273,
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ]
        },
        {
            "sbg:x": 984.1028403502372,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_norm_binning_hdf5",
            "sbg:includeInPorts": true,
            "label": "HiC_norm_binning_hdf5",
            "sbg:y": 357.7436426095023,
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ]
        },
        {
            "sbg:x": 777.7437167478082,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_data_object_hdf5",
            "sbg:includeInPorts": true,
            "label": "HiC_data_object_hdf5",
            "sbg:y": 558.9744715323862,
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ]
        },
        {
            "sbg:x": 1323.0770296232263,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "id": "#observed_contact_matrix",
            "sbg:includeInPorts": true,
            "label": "observed_contact_matrix",
            "sbg:y": 86.15384043744288,
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ]
        },
        {
            "sbg:x": 1520.0001224540429,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_fend_contact_matrix",
            "sbg:includeInPorts": true,
            "label": "expected_fend_contact_matrix",
            "sbg:y": 470.76925607828014,
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ]
        }
    ],
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "sbg:canvas_y": 66,
    "sbg:modifiedOn": 1473274706
}