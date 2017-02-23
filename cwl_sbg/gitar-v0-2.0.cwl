{
    "sbg:sbgMaintained": false,
    "sbg:canvas_y": 66,
    "sbg:canvas_x": 1,
    "sbg:contributors": [
        "duplexa"
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "label": "sorted_bam_pe",
            "sbg:x": 391.6240561803214,
            "id": "#sorted_bam_pe",
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "sbg:y": 328.1196788763388,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "label": "HiC_project_object_hdf5",
            "sbg:x": 717.1795962773863,
            "id": "#HiC_project_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "sbg:y": 124.61539063086903,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "label": "HiC_distance_function_hdf5",
            "sbg:x": 939.2309175553464,
            "id": "#HiC_distance_function_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "sbg:y": 500.3419382689756,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "label": "normalized_fend_contact_matrix",
            "sbg:x": 1489.2308385555568,
            "id": "#normalized_fend_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "sbg:y": 190.94018009381435,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "label": "normalized_enrich_contact_matrix",
            "sbg:x": 1573.6754030664124,
            "id": "#normalized_enrich_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "sbg:y": 330.17099214681946,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "label": "expected_enrich_contact_matrix",
            "sbg:x": 1345.2138202308008,
            "id": "#expected_enrich_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "sbg:y": 530.5983404200941,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "label": "split_bam2",
            "sbg:x": 328.92306357163494,
            "id": "#split_bam2",
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "sbg:y": -50.256409131563785,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "label": "split_bam1",
            "sbg:x": 368.92312900836833,
            "id": "#split_bam1",
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "sbg:y": 59.384607461782,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "label": "fend_object_hdf5",
            "sbg:x": 666.1538890691907,
            "id": "#fend_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "sbg:y": 21.538473569430273,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "label": "HiC_norm_binning_hdf5",
            "sbg:x": 984.1028403502372,
            "id": "#HiC_norm_binning_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "sbg:y": 357.7436426095023,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "label": "HiC_data_object_hdf5",
            "sbg:x": 777.7437167478082,
            "id": "#HiC_data_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "sbg:y": 558.9744715323862,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "label": "observed_contact_matrix",
            "sbg:x": 1323.0770296232263,
            "id": "#observed_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "sbg:y": 86.15384043744288,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                "null",
                "File"
            ],
            "required": false,
            "label": "expected_fend_contact_matrix",
            "sbg:x": 1520.0001224540429,
            "id": "#expected_fend_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "sbg:y": 470.76925607828014,
            "sbg:includeInPorts": true
        }
    ],
    "description": "",
    "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
    "hints": [],
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "sbg:createdBy": "duplexa",
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "sbg:validationErrors": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274706,
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:revision": 0
        }
    ],
    "sbg:modifiedOn": 1473274706,
    "sbg:modifiedBy": "duplexa",
    "sbg:revision": 0,
    "sbg:createdOn": 1473274706,
    "sbg:canvas_zoom": 0.6499999999999997,
    "steps": [
        {
            "run": {
                "y": 226,
                "x": 265,
                "stdin": "",
                "sbg:sbgMaintained": false,
                "description": "",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "outputs": [
                    {
                        "id": "#split_bam2",
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                                "class": "Expression",
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
                                "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                                "class": "Expression",
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
                                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                        "sbg:toolDefaultValue": ".",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:includeInPorts": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 4,
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            },
                            "separate": false
                        }
                    },
                    {
                        "id": "#input_fastq2",
                        "sbg:fileTypes": "FASTQ, FQ",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": false
                        },
                        "required": true
                    },
                    {
                        "id": "#input_fastq1",
                        "sbg:fileTypes": "FASTQ, FQ",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": false
                        },
                        "required": true
                    },
                    {
                        "id": "#bowtie_index",
                        "sbg:fileTypes": "TGZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": false
                        },
                        "required": false
                    }
                ],
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                "hints": [
                    {
                        "class": "sbg:MemRequirement",
                        "value": 24000
                    },
                    {
                        "dockerImageId": "",
                        "class": "DockerRequirement",
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
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "sbg:job": {
                    "inputs": {
                        "output_dir": "output_dir",
                        "input_fastq2": {
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/input_fastq2.fastq",
                            "secondaryFiles": []
                        },
                        "input_fastq1": {
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/input_fastq1.fastq",
                            "secondaryFiles": []
                        },
                        "bowtie_index": {
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/bowtie_index.ext",
                            "secondaryFiles": []
                        }
                    },
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    }
                },
                "sbg:createdBy": "gaurav",
                "sbg:validationErrors": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464804268,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816082,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816200,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816230,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1465323168,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1465400656,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1465844403,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467828936,
                        "sbg:revisionNotes": "r3.x4large",
                        "sbg:revision": 7
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467829775,
                        "sbg:revisionNotes": "docker image v2.",
                        "sbg:revision": 8
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467832142,
                        "sbg:revisionNotes": "removed outprefix from output files",
                        "sbg:revision": 9
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467832711,
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem.",
                        "sbg:revision": 10
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467834125,
                        "sbg:revisionNotes": "bowtie_index redefined.",
                        "sbg:revision": 11
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467838837,
                        "sbg:revisionNotes": "i2.xlarge",
                        "sbg:revision": 12
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989772,
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam",
                        "sbg:revision": 13
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467992192,
                        "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                        "sbg:revision": 14
                    }
                ],
                "sbg:latestRevision": 14,
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
                "sbg:modifiedBy": "duplexa",
                "sbg:revision": 14,
                "sbg:createdOn": 1464804268,
                "sbg:image_url": null,
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "id": "gaurav/4dn/fastq2bam/14",
                "arguments": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:modifiedOn": 1467992192,
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "temporaryFailCodes": [],
                "stdout": "",
                "sbg:project": "gaurav/4dn",
                "label": "hictool-fastq2bam",
                "class": "CommandLineTool",
                "successCodes": []
            },
            "sbg:x": 265,
            "id": "#hictool_fastq2bam",
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
            "run": {
                "y": 230.38462831423846,
                "x": 588.9231050931494,
                "stdin": "",
                "sbg:sbgMaintained": false,
                "sbg:contributors": [
                    "duplexa"
                ],
                "outputs": [
                    {
                        "id": "#fend_object_hdf5",
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                                "class": "Expression",
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
                                "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                                "class": "Expression",
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
                                "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                                "class": "Expression",
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
                                "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                                "class": "Expression",
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
                                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "description": "",
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
                        "dockerImageId": "",
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/hictool-bam2hdf5:v2"
                    }
                ],
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:job": {
                    "inputs": {
                        "input_bam1": {
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/input_bam1.bam",
                            "secondaryFiles": []
                        },
                        "output_dir": "output_dir",
                        "input_bam2": {
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/input_bam2.bam",
                            "secondaryFiles": []
                        },
                        "RE_bed": {
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/RE_bed.ext",
                            "secondaryFiles": []
                        }
                    },
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    }
                },
                "sbg:createdBy": "duplexa",
                "sbg:validationErrors": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989155,
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989197,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989438,
                        "sbg:revisionNotes": "docker bam2hdf5:v2",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989798,
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467995167,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4
                    }
                ],
                "sbg:latestRevision": 4,
                "sbg:modifiedOn": 1467995167,
                "sbg:modifiedBy": "duplexa",
                "sbg:revision": 4,
                "sbg:createdOn": 1467989155,
                "sbg:image_url": null,
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
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "id": "gaurav/4dn/bam2hdf5/4",
                "arguments": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "temporaryFailCodes": [],
                "stdout": "",
                "sbg:project": "gaurav/4dn",
                "label": "hictool-bam2hdf5",
                "inputs": [
                    {
                        "id": "#output_dir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 4,
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            },
                            "separate": false
                        }
                    },
                    {
                        "id": "#input_bam2",
                        "sbg:fileTypes": "BAM",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": false
                        },
                        "required": true
                    },
                    {
                        "id": "#input_bam1",
                        "sbg:fileTypes": "BAM",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": false
                        },
                        "required": true
                    },
                    {
                        "id": "#RE_bed",
                        "sbg:fileTypes": "BED",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": false
                        },
                        "required": false
                    }
                ],
                "class": "CommandLineTool",
                "successCodes": []
            },
            "sbg:x": 588.9231050931494,
            "id": "#hictool_bam2hdf5",
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
            "scatter": "#hictool_hdf52matrix.chromosome",
            "run": {
                "y": 228.6923403133314,
                "x": 1105.3846988706214,
                "stdin": "",
                "sbg:sbgMaintained": false,
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "outputs": [
                    {
                        "id": "#observed_contact_matrix",
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                                "class": "Expression",
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
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                                "class": "Expression",
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
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                                "class": "Expression",
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
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                                "class": "Expression",
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
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "description": "",
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
                        "dockerImageId": "",
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/hictool-hdf52matrix:v2"
                    }
                ],
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:job": {
                    "inputs": {
                        "HiC_norm_binning_hdf5": {
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/HiC_norm_binning_hdf5.ext",
                            "secondaryFiles": []
                        },
                        "chromosome": "chromosome",
                        "HiC_data_object_hdf5": {
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/HiC_data_object_hdf5.ext",
                            "secondaryFiles": []
                        },
                        "chrlen_file": {
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/chrlen_file.ext",
                            "secondaryFiles": []
                        },
                        "contact_matrix_binsize": 0,
                        "fend_object_hdf5": {
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/fend_object_hdf5.ext",
                            "secondaryFiles": []
                        },
                        "output_dir": "output_dir"
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    }
                },
                "sbg:createdBy": "gaurav",
                "sbg:validationErrors": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816740,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464818050,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989666,
                        "sbg:revisionNotes": "docker hdf52matrix:v2",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989698,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989823,
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467991994,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467992019,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6
                    },
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467995451,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 7
                    }
                ],
                "sbg:latestRevision": 7,
                "sbg:modifiedOn": 1467995451,
                "sbg:modifiedBy": "duplexa",
                "sbg:revision": 7,
                "sbg:createdOn": 1464816740,
                "sbg:image_url": null,
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
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "id": "gaurav/4dn/bam2matrix2/7",
                "arguments": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "temporaryFailCodes": [],
                "stdout": "",
                "sbg:project": "gaurav/4dn",
                "label": "hictool-hdf52matrix",
                "inputs": [
                    {
                        "id": "#output_dir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 5,
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            },
                            "separate": false
                        },
                        "required": false
                    },
                    {
                        "id": "#fend_object_hdf5",
                        "sbg:fileTypes": "HDF5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false
                    },
                    {
                        "sbg:toolDefaultValue": "50000",
                        "type": [
                            "int"
                        ],
                        "required": true,
                        "id": "#contact_matrix_binsize",
                        "sbg:includeInPorts": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": false
                        }
                    },
                    {
                        "id": "#chromosome",
                        "type": [
                            {
                                "type": "array",
                                "items": "string"
                            }
                        ],
                        "sbg:includeInPorts": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": false
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
                            "sbg:cmdInclude": true,
                            "position": 4,
                            "separate": false
                        },
                        "required": false
                    },
                    {
                        "id": "#HiC_norm_binning_hdf5",
                        "sbg:fileTypes": "HDF5",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": false
                        },
                        "required": true
                    },
                    {
                        "id": "#HiC_data_object_hdf5",
                        "sbg:fileTypes": "HDF5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false
                    }
                ],
                "class": "CommandLineTool",
                "successCodes": []
            },
            "sbg:x": 1105.3846988706214,
            "id": "#hictool_hdf52matrix",
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
            ]
        }
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "sbg:latestRevision": 0,
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "label": "input_fastq2",
            "sbg:x": 83,
            "id": "#input_fastq2",
            "sbg:y": 66,
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "label": "input_fastq1",
            "sbg:x": 70.5384664352124,
            "id": "#input_fastq1",
            "sbg:y": 222.53847149702227,
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "label": "bowtie_index",
            "sbg:x": 89.53847718662128,
            "id": "#bowtie_index",
            "sbg:y": 389.46159979718914,
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "TGZ"
        },
        {
            "label": "RE_bed",
            "sbg:x": 420.99998982747405,
            "id": "#RE_bed",
            "sbg:y": 496.33335367838555,
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BED"
        },
        {
            "id": "#chrlen_file",
            "sbg:y": -18.188064069204135,
            "type": [
                "null",
                "File"
            ],
            "label": "chrlen_file",
            "sbg:x": 749.7779160072636
        },
        {
            "type": [
                "int"
            ],
            "label": "contact_matrix_binsize",
            "sbg:x": 995.3846145833035,
            "id": "#contact_matrix_binsize",
            "sbg:y": -6.153860611323651,
            "sbg:includeInPorts": true
        },
        {
            "type": [
                {
                    "type": "array",
                    "items": "string"
                }
            ],
            "label": "chromosome",
            "sbg:x": 835.3847081280348,
            "id": "#chromosome",
            "sbg:y": 75.38460620338324,
            "sbg:includeInPorts": true
        }
    ],
    "requirements": [],
    "sbg:project": "4dn-dcic/dev",
    "label": "GITAR v0.2",
    "sbg:image_url": null,
    "class": "Workflow"
}