{
    "label": "GITAR v0.2",
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "class": "Workflow",
    "requirements": [],
    "sbg:validationErrors": [],
    "description": "",
    "inputs": [
        {
            "label": "input_fastq2",
            "type": [
                "File"
            ],
            "sbg:y": 66,
            "id": "#input_fastq2",
            "sbg:fileTypes": "FASTQ, FQ",
            "sbg:x": 83
        },
        {
            "label": "input_fastq1",
            "type": [
                "File"
            ],
            "sbg:y": 222.53847149702227,
            "id": "#input_fastq1",
            "sbg:fileTypes": "FASTQ, FQ",
            "sbg:x": 70.5384664352124
        },
        {
            "label": "bowtie_index",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 389.46159979718914,
            "id": "#bowtie_index",
            "sbg:fileTypes": "TGZ",
            "sbg:x": 89.53847718662128
        },
        {
            "label": "RE_bed",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 496.33335367838555,
            "id": "#RE_bed",
            "sbg:fileTypes": "BED",
            "sbg:x": 420.99998982747405
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
            "label": "contact_matrix_binsize",
            "sbg:includeInPorts": true,
            "type": [
                "int"
            ],
            "sbg:y": -6.153860611323651,
            "id": "#contact_matrix_binsize",
            "sbg:x": 995.3846145833035
        },
        {
            "label": "chromosome",
            "sbg:includeInPorts": true,
            "type": [
                {
                    "type": "array",
                    "items": "string"
                }
            ],
            "sbg:y": 75.38460620338324,
            "id": "#chromosome",
            "sbg:x": 835.3847081280348
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "cwlVersion": "sbg:draft-2",
    "sbg:revision": 0,
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:modifiedOn": 1473274706,
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "sbg:canvas_zoom": 0.6499999999999997,
    "sbg:canvas_y": 66,
    "sbg:latestRevision": 0,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274706
        }
    ],
    "steps": [
        {
            "run": {
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                "successCodes": [],
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "class": "CommandLineTool",
                "label": "hictool-fastq2bam",
                "hints": [
                    {
                        "value": 24000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "dockerPull": "duplexa/hictool-fastq2bam:v3",
                        "class": "DockerRequirement",
                        "dockerImageId": ""
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
                "outputs": [
                    {
                        "id": "#split_bam2",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        }
                    }
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    },
                    "inputs": {
                        "input_fastq2": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_fastq2.fastq"
                        },
                        "output_dir": "output_dir",
                        "input_fastq1": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_fastq1.fastq"
                        },
                        "bowtie_index": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/bowtie_index.ext"
                        }
                    }
                },
                "description": "",
                "inputs": [
                    {
                        "id": "#output_dir",
                        "sbg:includeInPorts": false,
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": ".",
                        "inputBinding": {
                            "separate": false,
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            },
                            "position": 4,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "id": "#input_fastq2",
                        "sbg:fileTypes": "FASTQ, FQ",
                        "required": true,
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 3
                        }
                    },
                    {
                        "id": "#input_fastq1",
                        "sbg:fileTypes": "FASTQ, FQ",
                        "required": true,
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 2
                        }
                    },
                    {
                        "id": "#bowtie_index",
                        "sbg:fileTypes": "TGZ",
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    }
                ],
                "x": 265,
                "sbg:latestRevision": 14,
                "cwlVersion": "sbg:draft-2",
                "sbg:revision": 14,
                "sbg:project": "gaurav/4dn",
                "temporaryFailCodes": [],
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "sbg:modifiedOn": 1467992192,
                "sbg:createdBy": "gaurav",
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1464804268
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1464816082
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1464816200
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1464816230
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1465323168
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1465400656
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1465844403
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "r3.x4large",
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1467828936
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker image v2.",
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1467829775
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "removed outprefix from output files",
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1467832142
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem.",
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1467832711
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "bowtie_index redefined.",
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1467834125
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "i2.xlarge",
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1467838837
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam",
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1467989772
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1467992192
                    }
                ],
                "arguments": [],
                "id": "gaurav/4dn/fastq2bam/14",
                "sbg:createdOn": 1464804268,
                "sbg:image_url": null,
                "y": 226,
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "sbg:modifiedBy": "duplexa",
                "stdout": "",
                "sbg:sbgMaintained": false,
                "sbg:validationErrors": [],
                "stdin": ""
            },
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
            "run": {
                "successCodes": [],
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "class": "CommandLineTool",
                "label": "hictool-bam2hdf5",
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
                        "class": "DockerRequirement",
                        "dockerImageId": ""
                    }
                ],
                "outputs": [
                    {
                        "id": "#fend_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        }
                    }
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    },
                    "inputs": {
                        "input_bam2": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_bam2.bam"
                        },
                        "output_dir": "output_dir",
                        "input_bam1": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_bam1.bam"
                        },
                        "RE_bed": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/RE_bed.ext"
                        }
                    }
                },
                "description": "",
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
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            },
                            "position": 4,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "id": "#input_bam2",
                        "sbg:fileTypes": "BAM",
                        "required": true,
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 2
                        }
                    },
                    {
                        "id": "#input_bam1",
                        "sbg:fileTypes": "BAM",
                        "required": true,
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
                    },
                    {
                        "id": "#RE_bed",
                        "sbg:fileTypes": "BED",
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 3
                        }
                    }
                ],
                "x": 588.9231050931494,
                "sbg:latestRevision": 4,
                "cwlVersion": "sbg:draft-2",
                "sbg:revision": 4,
                "sbg:project": "gaurav/4dn",
                "temporaryFailCodes": [],
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:modifiedOn": 1467995167,
                "sbg:createdBy": "duplexa",
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1467989155
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1467989197
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker bam2hdf5:v2",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1467989438
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1467989798
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1467995167
                    }
                ],
                "arguments": [],
                "id": "gaurav/4dn/bam2hdf5/4",
                "sbg:createdOn": 1467989155,
                "sbg:image_url": null,
                "y": 230.38462831423846,
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "sbg:modifiedBy": "duplexa",
                "stdout": "",
                "sbg:sbgMaintained": false,
                "sbg:validationErrors": [],
                "stdin": ""
            },
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
            "scatter": "#hictool_hdf52matrix.chromosome",
            "run": {
                "successCodes": [],
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "class": "CommandLineTool",
                "label": "hictool-hdf52matrix",
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
                        "class": "DockerRequirement",
                        "dockerImageId": ""
                    }
                ],
                "outputs": [
                    {
                        "id": "#observed_contact_matrix",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        }
                    }
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 8000
                    },
                    "inputs": {
                        "fend_object_hdf5": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/fend_object_hdf5.ext"
                        },
                        "chromosome": "chromosome",
                        "output_dir": "output_dir",
                        "chrlen_file": {
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/chrlen_file.ext"
                        },
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
                        }
                    }
                },
                "description": "",
                "inputs": [
                    {
                        "id": "#output_dir",
                        "required": false,
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            },
                            "position": 5,
                            "sbg:cmdInclude": true
                        }
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
                        "sbg:includeInPorts": true,
                        "type": [
                            "int"
                        ],
                        "sbg:toolDefaultValue": "50000",
                        "id": "#contact_matrix_binsize",
                        "required": true,
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 3
                        }
                    },
                    {
                        "id": "#chromosome",
                        "required": true,
                        "sbg:includeInPorts": true,
                        "type": [
                            {
                                "type": "array",
                                "items": "string"
                            }
                        ],
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 2
                        }
                    },
                    {
                        "id": "#chrlen_file",
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 4
                        }
                    },
                    {
                        "id": "#HiC_norm_binning_hdf5",
                        "sbg:fileTypes": "HDF5",
                        "required": true,
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 1
                        }
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
                "x": 1105.3846988706214,
                "sbg:latestRevision": 7,
                "cwlVersion": "sbg:draft-2",
                "sbg:revision": 7,
                "sbg:project": "gaurav/4dn",
                "temporaryFailCodes": [],
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "sbg:modifiedOn": 1467995451,
                "sbg:createdBy": "gaurav",
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1464816740
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1464818050
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker hdf52matrix:v2",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1467989666
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1467989698
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix",
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1467989823
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1467991994
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1467992019
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1467995451
                    }
                ],
                "arguments": [],
                "id": "gaurav/4dn/bam2matrix2/7",
                "sbg:createdOn": 1464816740,
                "sbg:image_url": null,
                "y": 228.6923403133314,
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "sbg:modifiedBy": "duplexa",
                "stdout": "",
                "sbg:sbgMaintained": false,
                "sbg:validationErrors": [],
                "stdin": ""
            },
            "sbg:y": 228.6923403133314,
            "id": "#hictool_hdf52matrix",
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
            ]
        }
    ],
    "sbg:createdOn": 1473274706,
    "sbg:image_url": null,
    "sbg:canvas_x": 1,
    "sbg:createdBy": "duplexa",
    "hints": [],
    "sbg:modifiedBy": "duplexa",
    "sbg:sbgMaintained": false,
    "outputs": [
        {
            "label": "sorted_bam_pe",
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 328.1196788763388,
            "id": "#sorted_bam_pe",
            "sbg:x": 391.6240561803214,
            "required": false
        },
        {
            "label": "HiC_project_object_hdf5",
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 124.61539063086903,
            "id": "#HiC_project_object_hdf5",
            "sbg:x": 717.1795962773863,
            "required": false
        },
        {
            "label": "HiC_distance_function_hdf5",
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 500.3419382689756,
            "id": "#HiC_distance_function_hdf5",
            "sbg:x": 939.2309175553464,
            "required": false
        },
        {
            "label": "normalized_fend_contact_matrix",
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 190.94018009381435,
            "id": "#normalized_fend_contact_matrix",
            "sbg:x": 1489.2308385555568,
            "required": false
        },
        {
            "label": "normalized_enrich_contact_matrix",
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 330.17099214681946,
            "id": "#normalized_enrich_contact_matrix",
            "sbg:x": 1573.6754030664124,
            "required": false
        },
        {
            "label": "expected_enrich_contact_matrix",
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 530.5983404200941,
            "id": "#expected_enrich_contact_matrix",
            "sbg:x": 1345.2138202308008,
            "required": false
        },
        {
            "label": "split_bam2",
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:y": -50.256409131563785,
            "id": "#split_bam2",
            "sbg:x": 328.92306357163494,
            "required": false
        },
        {
            "label": "split_bam1",
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 59.384607461782,
            "id": "#split_bam1",
            "sbg:x": 368.92312900836833,
            "required": false
        },
        {
            "label": "fend_object_hdf5",
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 21.538473569430273,
            "id": "#fend_object_hdf5",
            "sbg:x": 666.1538890691907,
            "required": false
        },
        {
            "label": "HiC_norm_binning_hdf5",
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 357.7436426095023,
            "id": "#HiC_norm_binning_hdf5",
            "sbg:x": 984.1028403502372,
            "required": false
        },
        {
            "label": "HiC_data_object_hdf5",
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 558.9744715323862,
            "id": "#HiC_data_object_hdf5",
            "sbg:x": 777.7437167478082,
            "required": false
        },
        {
            "label": "observed_contact_matrix",
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 86.15384043744288,
            "id": "#observed_contact_matrix",
            "sbg:x": 1323.0770296232263,
            "required": false
        },
        {
            "label": "expected_fend_contact_matrix",
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 470.76925607828014,
            "id": "#expected_fend_contact_matrix",
            "sbg:x": 1520.0001224540429,
            "required": false
        }
    ]
}