{
    "sbg:sbgMaintained": false,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:validationErrors": [],
    "outputs": [
        {
            "sbg:y": 328.1196788763388,
            "sbg:x": 391.6240561803214,
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "label": "sorted_bam_pe",
            "type": [
                "null",
                "File"
            ],
            "id": "#sorted_bam_pe"
        },
        {
            "sbg:y": 124.61539063086903,
            "sbg:x": 717.1795962773863,
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "label": "HiC_project_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_project_object_hdf5"
        },
        {
            "sbg:y": 500.3419382689756,
            "sbg:x": 939.2309175553464,
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "label": "HiC_distance_function_hdf5",
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_distance_function_hdf5"
        },
        {
            "sbg:y": 190.94018009381435,
            "sbg:x": 1489.2308385555568,
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "label": "normalized_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_fend_contact_matrix"
        },
        {
            "sbg:y": 330.17099214681946,
            "sbg:x": 1573.6754030664124,
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "label": "normalized_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_enrich_contact_matrix"
        },
        {
            "sbg:y": 530.5983404200941,
            "sbg:x": 1345.2138202308008,
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "label": "expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_enrich_contact_matrix"
        },
        {
            "sbg:y": -50.256409131563785,
            "sbg:x": 328.92306357163494,
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "label": "split_bam2",
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam2"
        },
        {
            "sbg:y": 59.384607461782,
            "sbg:x": 368.92312900836833,
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "label": "split_bam1",
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam1"
        },
        {
            "sbg:y": 21.538473569430273,
            "sbg:x": 666.1538890691907,
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "label": "fend_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "id": "#fend_object_hdf5"
        },
        {
            "sbg:y": 357.7436426095023,
            "sbg:x": 984.1028403502372,
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "label": "HiC_norm_binning_hdf5",
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_norm_binning_hdf5"
        },
        {
            "sbg:y": 558.9744715323862,
            "sbg:x": 777.7437167478082,
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "label": "HiC_data_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_data_object_hdf5"
        },
        {
            "sbg:y": 86.15384043744288,
            "sbg:x": 1323.0770296232263,
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "label": "observed_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "id": "#observed_contact_matrix"
        },
        {
            "sbg:y": 470.76925607828014,
            "sbg:x": 1520.0001224540429,
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "label": "expected_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_fend_contact_matrix"
        }
    ],
    "sbg:latestRevision": 0,
    "steps": [
        {
            "sbg:y": 226,
            "run": {
                "sbg:sbgMaintained": false,
                "sbg:latestRevision": 14,
                "cwlVersion": "sbg:draft-2",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1464804268,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1464816082,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1464816200,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1464816230,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1465323168,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1465400656,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1465844403,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1467828936,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7,
                        "sbg:revisionNotes": "r3.x4large"
                    },
                    {
                        "sbg:modifiedOn": 1467829775,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 8,
                        "sbg:revisionNotes": "docker image v2."
                    },
                    {
                        "sbg:modifiedOn": 1467832142,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 9,
                        "sbg:revisionNotes": "removed outprefix from output files"
                    },
                    {
                        "sbg:modifiedOn": 1467832711,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 10,
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem."
                    },
                    {
                        "sbg:modifiedOn": 1467834125,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 11,
                        "sbg:revisionNotes": "bowtie_index redefined."
                    },
                    {
                        "sbg:modifiedOn": 1467838837,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 12,
                        "sbg:revisionNotes": "i2.xlarge"
                    },
                    {
                        "sbg:modifiedOn": 1467989772,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 13,
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam"
                    },
                    {
                        "sbg:modifiedOn": 1467992192,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 14,
                        "sbg:revisionNotes": "docker version 3. A sort step skipped."
                    }
                ],
                "sbg:validationErrors": [],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#split_bam2",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/out_pair2.bam'"
                            }
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#split_bam1",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/out_pair1.bam'"
                            }
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#sorted_bam_pe",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'"
                            }
                        }
                    }
                ],
                "class": "CommandLineTool",
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "x": 265,
                "successCodes": [],
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "sbg:revision": 14,
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "stdin": "",
                "sbg:modifiedOn": 1467992192,
                "description": "",
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "y": 226,
                "stdout": "",
                "sbg:project": "gaurav/4dn",
                "label": "hictool-fastq2bam",
                "sbg:createdOn": 1464804268,
                "temporaryFailCodes": [],
                "inputs": [
                    {
                        "inputBinding": {
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'"
                            },
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4
                        },
                        "sbg:includeInPorts": false,
                        "id": "#output_dir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:toolDefaultValue": "."
                    },
                    {
                        "required": true,
                        "type": [
                            "File"
                        ],
                        "id": "#input_fastq2",
                        "sbg:fileTypes": "FASTQ, FQ",
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": false
                        }
                    },
                    {
                        "required": true,
                        "type": [
                            "File"
                        ],
                        "id": "#input_fastq1",
                        "sbg:fileTypes": "FASTQ, FQ",
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": false
                        }
                    },
                    {
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#bowtie_index",
                        "sbg:fileTypes": "TGZ",
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": false
                        }
                    }
                ],
                "arguments": [],
                "id": "gaurav/4dn/fastq2bam/14",
                "hints": [
                    {
                        "class": "sbg:MemRequirement",
                        "value": 24000
                    },
                    {
                        "dockerPull": "duplexa/hictool-fastq2bam:v3",
                        "class": "DockerRequirement",
                        "dockerImageId": ""
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
                "sbg:image_url": null,
                "sbg:createdBy": "gaurav",
                "sbg:job": {
                    "inputs": {
                        "input_fastq2": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq2.fastq",
                            "class": "File",
                            "size": 0
                        },
                        "input_fastq1": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq1.fastq",
                            "class": "File",
                            "size": 0
                        },
                        "bowtie_index": {
                            "secondaryFiles": [],
                            "path": "/path/to/bowtie_index.ext",
                            "class": "File",
                            "size": 0
                        },
                        "output_dir": "output_dir"
                    },
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    }
                },
                "sbg:modifiedBy": "duplexa",
                "sbg:revisionNotes": "docker version 3. A sort step skipped."
            },
            "sbg:x": 265,
            "id": "#hictool_fastq2bam",
            "inputs": [
                {
                    "id": "#hictool_fastq2bam.output_dir",
                    "default": "."
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
            "sbg:y": 230.38462831423846,
            "run": {
                "sbg:sbgMaintained": false,
                "sbg:latestRevision": 4,
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#fend_object_hdf5",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/fend_object.hdf5'"
                            }
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#HiC_project_object_hdf5",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' "
                            }
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#HiC_norm_binning_hdf5",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'"
                            }
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#HiC_distance_function_hdf5",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'"
                            }
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#HiC_data_object_hdf5",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'"
                            }
                        }
                    }
                ],
                "class": "CommandLineTool",
                "baseCommand": [
                    "run.sh"
                ],
                "x": 588.9231050931494,
                "successCodes": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1467989155,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3"
                    },
                    {
                        "sbg:modifiedOn": 1467989197,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1467989438,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": "docker bam2hdf5:v2"
                    },
                    {
                        "sbg:modifiedOn": 1467989798,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3,
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5"
                    },
                    {
                        "sbg:modifiedOn": 1467995167,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null
                    }
                ],
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "sbg:revision": 4,
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:modifiedOn": 1467995167,
                "description": "",
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "y": 230.38462831423846,
                "stdout": "",
                "sbg:project": "gaurav/4dn",
                "label": "hictool-bam2hdf5",
                "sbg:createdOn": 1467989155,
                "temporaryFailCodes": [],
                "inputs": [
                    {
                        "id": "#output_dir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'"
                            },
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4
                        }
                    },
                    {
                        "required": true,
                        "type": [
                            "File"
                        ],
                        "id": "#input_bam2",
                        "sbg:fileTypes": "BAM",
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": false
                        }
                    },
                    {
                        "required": true,
                        "type": [
                            "File"
                        ],
                        "id": "#input_bam1",
                        "sbg:fileTypes": "BAM",
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": false
                        }
                    },
                    {
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#RE_bed",
                        "sbg:fileTypes": "BED",
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": false
                        }
                    }
                ],
                "arguments": [],
                "id": "gaurav/4dn/bam2hdf5/4",
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
                        "class": "DockerRequirement",
                        "dockerImageId": ""
                    }
                ],
                "sbg:image_url": null,
                "sbg:createdBy": "duplexa",
                "sbg:job": {
                    "inputs": {
                        "RE_bed": {
                            "secondaryFiles": [],
                            "path": "/path/to/RE_bed.ext",
                            "class": "File",
                            "size": 0
                        },
                        "input_bam1": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_bam1.bam",
                            "class": "File",
                            "size": 0
                        },
                        "input_bam2": {
                            "secondaryFiles": [],
                            "path": "/path/to/input_bam2.bam",
                            "class": "File",
                            "size": 0
                        },
                        "output_dir": "output_dir"
                    },
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    }
                },
                "sbg:modifiedBy": "duplexa",
                "stdin": ""
            },
            "sbg:x": 588.9231050931494,
            "id": "#hictool_bam2hdf5",
            "inputs": [
                {
                    "id": "#hictool_bam2hdf5.output_dir",
                    "default": "."
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
            "sbg:y": 228.6923403133314,
            "run": {
                "sbg:sbgMaintained": false,
                "sbg:latestRevision": 7,
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#observed_contact_matrix",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' "
                            }
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#normalized_fend_contact_matrix",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' "
                            }
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#normalized_enrich_contact_matrix",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' "
                            }
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#expected_fend_contact_matrix",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' "
                            }
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#expected_enrich_contact_matrix",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'"
                            }
                        }
                    }
                ],
                "class": "CommandLineTool",
                "baseCommand": [
                    "run.sh"
                ],
                "x": 1105.3846988706214,
                "successCodes": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1464816740,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1464818050,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1467989666,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": "docker hdf52matrix:v2"
                    },
                    {
                        "sbg:modifiedOn": 1467989698,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1467989823,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4,
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix"
                    },
                    {
                        "sbg:modifiedOn": 1467991994,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1467992019,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1467995451,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7,
                        "sbg:revisionNotes": null
                    }
                ],
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "sbg:revision": 7,
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "sbg:modifiedOn": 1467995451,
                "description": "",
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "y": 228.6923403133314,
                "stdout": "",
                "sbg:project": "gaurav/4dn",
                "label": "hictool-hdf52matrix",
                "sbg:createdOn": 1464816740,
                "temporaryFailCodes": [],
                "inputs": [
                    {
                        "required": false,
                        "id": "#output_dir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'"
                            },
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 5
                        }
                    },
                    {
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#fend_object_hdf5",
                        "sbg:fileTypes": "HDF5"
                    },
                    {
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "id": "#contact_matrix_binsize",
                        "required": true,
                        "sbg:includeInPorts": true,
                        "type": [
                            "int"
                        ],
                        "sbg:toolDefaultValue": "50000"
                    },
                    {
                        "required": true,
                        "sbg:includeInPorts": true,
                        "id": "#chromosome",
                        "type": [
                            {
                                "type": "array",
                                "items": "string"
                            }
                        ],
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": false
                        }
                    },
                    {
                        "required": false,
                        "id": "#chrlen_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "separate": false
                        }
                    },
                    {
                        "required": true,
                        "type": [
                            "File"
                        ],
                        "id": "#HiC_norm_binning_hdf5",
                        "sbg:fileTypes": "HDF5",
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": false
                        }
                    },
                    {
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#HiC_data_object_hdf5",
                        "sbg:fileTypes": "HDF5"
                    }
                ],
                "arguments": [],
                "id": "gaurav/4dn/bam2matrix2/7",
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
                        "class": "DockerRequirement",
                        "dockerImageId": ""
                    }
                ],
                "sbg:image_url": null,
                "sbg:createdBy": "gaurav",
                "sbg:job": {
                    "inputs": {
                        "contact_matrix_binsize": 0,
                        "HiC_norm_binning_hdf5": {
                            "secondaryFiles": [],
                            "path": "/path/to/HiC_norm_binning_hdf5.ext",
                            "class": "File",
                            "size": 0
                        },
                        "HiC_data_object_hdf5": {
                            "secondaryFiles": [],
                            "path": "/path/to/HiC_data_object_hdf5.ext",
                            "class": "File",
                            "size": 0
                        },
                        "output_dir": "output_dir",
                        "chrlen_file": {
                            "secondaryFiles": [],
                            "path": "/path/to/chrlen_file.ext",
                            "class": "File",
                            "size": 0
                        },
                        "chromosome": "chromosome",
                        "fend_object_hdf5": {
                            "secondaryFiles": [],
                            "path": "/path/to/fend_object_hdf5.ext",
                            "class": "File",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 8000
                    }
                },
                "sbg:modifiedBy": "duplexa",
                "stdin": ""
            },
            "sbg:x": 1105.3846988706214,
            "id": "#hictool_hdf52matrix",
            "inputs": [
                {
                    "id": "#hictool_hdf52matrix.output_dir",
                    "default": "."
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
            ]
        }
    ],
    "class": "Workflow",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274706,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6"
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:revision": 0,
    "requirements": [],
    "sbg:modifiedOn": 1473274706,
    "description": "",
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "inputs": [
        {
            "sbg:y": 66,
            "sbg:x": 83,
            "type": [
                "File"
            ],
            "label": "input_fastq2",
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq2"
        },
        {
            "sbg:y": 222.53847149702227,
            "sbg:x": 70.5384664352124,
            "type": [
                "File"
            ],
            "label": "input_fastq1",
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq1"
        },
        {
            "sbg:y": 389.46159979718914,
            "sbg:x": 89.53847718662128,
            "type": [
                "null",
                "File"
            ],
            "label": "bowtie_index",
            "sbg:fileTypes": "TGZ",
            "id": "#bowtie_index"
        },
        {
            "sbg:y": 496.33335367838555,
            "sbg:x": 420.99998982747405,
            "type": [
                "null",
                "File"
            ],
            "label": "RE_bed",
            "sbg:fileTypes": "BED",
            "id": "#RE_bed"
        },
        {
            "sbg:y": -18.188064069204135,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 749.7779160072636,
            "id": "#chrlen_file",
            "label": "chrlen_file"
        },
        {
            "sbg:y": -6.153860611323651,
            "sbg:x": 995.3846145833035,
            "label": "contact_matrix_binsize",
            "sbg:includeInPorts": true,
            "type": [
                "int"
            ],
            "id": "#contact_matrix_binsize"
        },
        {
            "sbg:y": 75.38460620338324,
            "sbg:x": 835.3847081280348,
            "label": "chromosome",
            "sbg:includeInPorts": true,
            "type": [
                {
                    "type": "array",
                    "items": "string"
                }
            ],
            "id": "#chromosome"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "label": "GITAR v0.2",
    "sbg:canvas_x": 1,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "hints": [],
    "sbg:image_url": null,
    "sbg:canvas_zoom": 0.6499999999999997,
    "sbg:projectName": "Dev",
    "sbg:createdBy": "duplexa",
    "sbg:canvas_y": 66,
    "sbg:createdOn": 1473274706,
    "sbg:modifiedBy": "duplexa",
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6"
}