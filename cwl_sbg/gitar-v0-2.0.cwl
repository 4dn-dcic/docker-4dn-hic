{
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "sbg:createdOn": 1473274706,
    "sbg:canvas_x": 1,
    "outputs": [
        {
            "sbg:y": 328.1196788763388,
            "label": "sorted_bam_pe",
            "type": [
                "null",
                "File"
            ],
            "id": "#sorted_bam_pe",
            "sbg:includeInPorts": true,
            "sbg:x": 391.6240561803214,
            "required": false,
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ]
        },
        {
            "sbg:y": 124.61539063086903,
            "label": "HiC_project_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_project_object_hdf5",
            "sbg:includeInPorts": true,
            "sbg:x": 717.1795962773863,
            "required": false,
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ]
        },
        {
            "sbg:y": 500.3419382689756,
            "label": "HiC_distance_function_hdf5",
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_distance_function_hdf5",
            "sbg:includeInPorts": true,
            "sbg:x": 939.2309175553464,
            "required": false,
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ]
        },
        {
            "sbg:y": 190.94018009381435,
            "label": "normalized_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_fend_contact_matrix",
            "sbg:includeInPorts": true,
            "sbg:x": 1489.2308385555568,
            "required": false,
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ]
        },
        {
            "sbg:y": 330.17099214681946,
            "label": "normalized_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_enrich_contact_matrix",
            "sbg:includeInPorts": true,
            "sbg:x": 1573.6754030664124,
            "required": false,
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ]
        },
        {
            "sbg:y": 530.5983404200941,
            "label": "expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_enrich_contact_matrix",
            "sbg:includeInPorts": true,
            "sbg:x": 1345.2138202308008,
            "required": false,
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ]
        },
        {
            "sbg:y": -50.256409131563785,
            "label": "split_bam2",
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam2",
            "sbg:includeInPorts": true,
            "sbg:x": 328.92306357163494,
            "required": false,
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ]
        },
        {
            "sbg:y": 59.384607461782,
            "label": "split_bam1",
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam1",
            "sbg:includeInPorts": true,
            "sbg:x": 368.92312900836833,
            "required": false,
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ]
        },
        {
            "sbg:y": 21.538473569430273,
            "label": "fend_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "id": "#fend_object_hdf5",
            "sbg:includeInPorts": true,
            "sbg:x": 666.1538890691907,
            "required": false,
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ]
        },
        {
            "sbg:y": 357.7436426095023,
            "label": "HiC_norm_binning_hdf5",
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_norm_binning_hdf5",
            "sbg:includeInPorts": true,
            "sbg:x": 984.1028403502372,
            "required": false,
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ]
        },
        {
            "sbg:y": 558.9744715323862,
            "label": "HiC_data_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_data_object_hdf5",
            "sbg:includeInPorts": true,
            "sbg:x": 777.7437167478082,
            "required": false,
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ]
        },
        {
            "sbg:y": 86.15384043744288,
            "label": "observed_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "id": "#observed_contact_matrix",
            "sbg:includeInPorts": true,
            "sbg:x": 1323.0770296232263,
            "required": false,
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ]
        },
        {
            "sbg:y": 470.76925607828014,
            "label": "expected_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_fend_contact_matrix",
            "sbg:includeInPorts": true,
            "sbg:x": 1520.0001224540429,
            "required": false,
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ]
        }
    ],
    "sbg:projectName": "Dev",
    "requirements": [],
    "inputs": [
        {
            "sbg:y": 66,
            "label": "input_fastq2",
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq2",
            "sbg:x": 83,
            "type": [
                "File"
            ]
        },
        {
            "sbg:y": 222.53847149702227,
            "label": "input_fastq1",
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq1",
            "sbg:x": 70.5384664352124,
            "type": [
                "File"
            ]
        },
        {
            "sbg:y": 389.46159979718914,
            "label": "bowtie_index",
            "sbg:fileTypes": "TGZ",
            "id": "#bowtie_index",
            "sbg:x": 89.53847718662128,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 496.33335367838555,
            "label": "RE_bed",
            "sbg:fileTypes": "BED",
            "id": "#RE_bed",
            "sbg:x": 420.99998982747405,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": -18.188064069204135,
            "label": "chrlen_file",
            "sbg:x": 749.7779160072636,
            "type": [
                "null",
                "File"
            ],
            "id": "#chrlen_file"
        },
        {
            "sbg:y": -6.153860611323651,
            "label": "contact_matrix_binsize",
            "id": "#contact_matrix_binsize",
            "sbg:includeInPorts": true,
            "sbg:x": 995.3846145833035,
            "type": [
                "int"
            ]
        },
        {
            "sbg:y": 75.38460620338324,
            "label": "chromosome",
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
    "sbg:createdBy": "duplexa",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274706
        }
    ],
    "sbg:revision": 0,
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "description": "",
    "sbg:image_url": null,
    "sbg:contributors": [
        "duplexa"
    ],
    "label": "GITAR v0.2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "sbg:canvas_zoom": 0.6499999999999997,
    "sbg:project": "4dn-dcic/dev",
    "sbg:canvas_y": 66,
    "class": "Workflow",
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1473274706,
    "steps": [
        {
            "sbg:y": 226,
            "id": "#hictool_fastq2bam",
            "sbg:x": 265,
            "run": {
                "sbg:validationErrors": [],
                "temporaryFailCodes": [],
                "stdin": "",
                "sbg:modifiedBy": "duplexa",
                "cwlVersion": "sbg:draft-2",
                "sbg:createdOn": 1464804268,
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "id": "#split_bam2"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "id": "#split_bam1"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "id": "#sorted_bam_pe"
                    }
                ],
                "label": "hictool-fastq2bam",
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
                "inputs": [
                    {
                        "sbg:includeInPorts": false,
                        "sbg:toolDefaultValue": ".",
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "id": "#output_dir"
                    },
                    {
                        "sbg:fileTypes": "FASTQ, FQ",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "required": true,
                        "id": "#input_fastq2"
                    },
                    {
                        "sbg:fileTypes": "FASTQ, FQ",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "required": true,
                        "id": "#input_fastq1"
                    },
                    {
                        "sbg:fileTypes": "TGZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "id": "#bowtie_index"
                    }
                ],
                "sbg:createdBy": "gaurav",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464804268
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816082
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816200
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816230
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1465323168
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1465400656
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1465844403
                    },
                    {
                        "sbg:revisionNotes": "r3.x4large",
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467828936
                    },
                    {
                        "sbg:revisionNotes": "docker image v2.",
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467829775
                    },
                    {
                        "sbg:revisionNotes": "removed outprefix from output files",
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467832142
                    },
                    {
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem.",
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467832711
                    },
                    {
                        "sbg:revisionNotes": "bowtie_index redefined.",
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467834125
                    },
                    {
                        "sbg:revisionNotes": "i2.xlarge",
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467838837
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam",
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989772
                    },
                    {
                        "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                        "sbg:revision": 14,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467992192
                    }
                ],
                "sbg:revision": 14,
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    },
                    "inputs": {
                        "bowtie_index": {
                            "path": "/path/to/bowtie_index.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "output_dir": "output_dir",
                        "input_fastq1": {
                            "path": "/path/to/input_fastq1.fastq",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "input_fastq2": {
                            "path": "/path/to/input_fastq2.fastq",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        }
                    }
                },
                "successCodes": [],
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "y": 226,
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "stdout": "",
                "id": "gaurav/4dn/fastq2bam/14",
                "sbg:project": "gaurav/4dn",
                "arguments": [],
                "x": 265,
                "class": "CommandLineTool",
                "sbg:id": "gaurav/4dn/fastq2bam/14",
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
                "sbg:sbgMaintained": false,
                "sbg:image_url": null,
                "description": "",
                "sbg:latestRevision": 14,
                "sbg:modifiedOn": 1467992192
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
            ]
        },
        {
            "sbg:y": 230.38462831423846,
            "id": "#hictool_bam2hdf5",
            "sbg:x": 588.9231050931494,
            "run": {
                "sbg:validationErrors": [],
                "temporaryFailCodes": [],
                "stdin": "",
                "sbg:modifiedBy": "duplexa",
                "cwlVersion": "sbg:draft-2",
                "sbg:createdOn": 1467989155,
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "id": "#fend_object_hdf5"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "id": "#HiC_project_object_hdf5"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "id": "#HiC_norm_binning_hdf5"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "id": "#HiC_distance_function_hdf5"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "id": "#HiC_data_object_hdf5"
                    }
                ],
                "label": "hictool-bam2hdf5",
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
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "id": "#output_dir"
                    },
                    {
                        "sbg:fileTypes": "BAM",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "required": true,
                        "id": "#input_bam2"
                    },
                    {
                        "sbg:fileTypes": "BAM",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "required": true,
                        "id": "#input_bam1"
                    },
                    {
                        "sbg:fileTypes": "BED",
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "id": "#RE_bed"
                    }
                ],
                "sbg:createdBy": "duplexa",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3",
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989155
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989197
                    },
                    {
                        "sbg:revisionNotes": "docker bam2hdf5:v2",
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989438
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5",
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989798
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467995167
                    }
                ],
                "sbg:revision": 4,
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    },
                    "inputs": {
                        "input_bam1": {
                            "path": "/path/to/input_bam1.bam",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "input_bam2": {
                            "path": "/path/to/input_bam2.bam",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "output_dir": "output_dir",
                        "RE_bed": {
                            "path": "/path/to/RE_bed.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        }
                    }
                },
                "successCodes": [],
                "sbg:contributors": [
                    "duplexa"
                ],
                "y": 230.38462831423846,
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "stdout": "",
                "id": "gaurav/4dn/bam2hdf5/4",
                "sbg:project": "gaurav/4dn",
                "arguments": [],
                "x": 588.9231050931494,
                "class": "CommandLineTool",
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/hictool-bam2hdf5:v2",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:sbgMaintained": false,
                "sbg:image_url": null,
                "description": "",
                "sbg:latestRevision": 4,
                "sbg:modifiedOn": 1467995167
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
            ]
        },
        {
            "sbg:y": 228.6923403133314,
            "id": "#hictool_hdf52matrix",
            "sbg:x": 1105.3846988706214,
            "run": {
                "sbg:validationErrors": [],
                "temporaryFailCodes": [],
                "stdin": "",
                "sbg:modifiedBy": "duplexa",
                "cwlVersion": "sbg:draft-2",
                "sbg:createdOn": 1464816740,
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "id": "#observed_contact_matrix"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "id": "#normalized_fend_contact_matrix"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "id": "#normalized_enrich_contact_matrix"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "id": "#expected_fend_contact_matrix"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "id": "#expected_enrich_contact_matrix"
                    }
                ],
                "label": "hictool-hdf52matrix",
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
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 5,
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            }
                        },
                        "required": false,
                        "id": "#output_dir"
                    },
                    {
                        "sbg:fileTypes": "HDF5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#fend_object_hdf5"
                    },
                    {
                        "type": [
                            "int"
                        ],
                        "id": "#contact_matrix_binsize",
                        "sbg:includeInPorts": true,
                        "sbg:toolDefaultValue": "50000",
                        "inputBinding": {
                            "separate": false,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "required": true
                    },
                    {
                        "sbg:includeInPorts": true,
                        "type": [
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "required": true,
                        "id": "#chromosome"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 4,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "id": "#chrlen_file"
                    },
                    {
                        "sbg:fileTypes": "HDF5",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "separate": false,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "required": true,
                        "id": "#HiC_norm_binning_hdf5"
                    },
                    {
                        "sbg:fileTypes": "HDF5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#HiC_data_object_hdf5"
                    }
                ],
                "sbg:createdBy": "gaurav",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816740
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464818050
                    },
                    {
                        "sbg:revisionNotes": "docker hdf52matrix:v2",
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989666
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989698
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix",
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989823
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467991994
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467992019
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467995451
                    }
                ],
                "sbg:revision": 7,
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 8000
                    },
                    "inputs": {
                        "contact_matrix_binsize": 0,
                        "fend_object_hdf5": {
                            "path": "/path/to/fend_object_hdf5.ext",
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
                        "chromosome": "chromosome",
                        "HiC_data_object_hdf5": {
                            "path": "/path/to/HiC_data_object_hdf5.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "HiC_norm_binning_hdf5": {
                            "path": "/path/to/HiC_norm_binning_hdf5.ext",
                            "size": 0,
                            "secondaryFiles": [],
                            "class": "File"
                        }
                    }
                },
                "successCodes": [],
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "y": 228.6923403133314,
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "stdout": "",
                "id": "gaurav/4dn/bam2matrix2/7",
                "sbg:project": "gaurav/4dn",
                "arguments": [],
                "x": 1105.3846988706214,
                "class": "CommandLineTool",
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/hictool-hdf52matrix:v2",
                        "class": "DockerRequirement"
                    }
                ],
                "sbg:sbgMaintained": false,
                "sbg:image_url": null,
                "description": "",
                "sbg:latestRevision": 7,
                "sbg:modifiedOn": 1467995451
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
            ]
        }
    ],
    "hints": [],
    "sbg:latestRevision": 0
}