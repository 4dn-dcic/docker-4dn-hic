{
    "class": "Workflow",
    "description": "",
    "sbg:image_url": null,
    "inputs": [
        {
            "sbg:y": 66,
            "sbg:x": 83,
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq2",
            "label": "input_fastq2",
            "type": [
                "File"
            ]
        },
        {
            "sbg:y": 222.53847149702227,
            "sbg:x": 70.5384664352124,
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq1",
            "label": "input_fastq1",
            "type": [
                "File"
            ]
        },
        {
            "sbg:y": 389.46159979718914,
            "sbg:x": 89.53847718662128,
            "sbg:fileTypes": "TGZ",
            "id": "#bowtie_index",
            "label": "bowtie_index",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 496.33335367838555,
            "sbg:x": 420.99998982747405,
            "sbg:fileTypes": "BED",
            "id": "#RE_bed",
            "label": "RE_bed",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": -18.188064069204135,
            "sbg:x": 749.7779160072636,
            "type": [
                "null",
                "File"
            ],
            "label": "chrlen_file",
            "id": "#chrlen_file"
        },
        {
            "sbg:y": -6.153860611323651,
            "sbg:x": 995.3846145833035,
            "sbg:includeInPorts": true,
            "id": "#contact_matrix_binsize",
            "label": "contact_matrix_binsize",
            "type": [
                "int"
            ]
        },
        {
            "sbg:y": 75.38460620338324,
            "sbg:x": 835.3847081280348,
            "sbg:includeInPorts": true,
            "id": "#chromosome",
            "label": "chromosome",
            "type": [
                {
                    "items": "string",
                    "type": "array"
                }
            ]
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:canvas_x": 1,
    "sbg:revision": 0,
    "label": "GITAR v0.2",
    "sbg:projectName": "Dev",
    "hints": [],
    "outputs": [
        {
            "sbg:y": 328.1196788763388,
            "sbg:x": 391.6240561803214,
            "required": false,
            "sbg:includeInPorts": true,
            "id": "#sorted_bam_pe",
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "label": "sorted_bam_pe",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 124.61539063086903,
            "sbg:x": 717.1795962773863,
            "required": false,
            "sbg:includeInPorts": true,
            "id": "#HiC_project_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "label": "HiC_project_object_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 500.3419382689756,
            "sbg:x": 939.2309175553464,
            "required": false,
            "sbg:includeInPorts": true,
            "id": "#HiC_distance_function_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "label": "HiC_distance_function_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 190.94018009381435,
            "sbg:x": 1489.2308385555568,
            "required": false,
            "sbg:includeInPorts": true,
            "id": "#normalized_fend_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "label": "normalized_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 330.17099214681946,
            "sbg:x": 1573.6754030664124,
            "required": false,
            "sbg:includeInPorts": true,
            "id": "#normalized_enrich_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "label": "normalized_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 530.5983404200941,
            "sbg:x": 1345.2138202308008,
            "required": false,
            "sbg:includeInPorts": true,
            "id": "#expected_enrich_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "label": "expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": -50.256409131563785,
            "sbg:x": 328.92306357163494,
            "required": false,
            "sbg:includeInPorts": true,
            "id": "#split_bam2",
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "label": "split_bam2",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 59.384607461782,
            "sbg:x": 368.92312900836833,
            "required": false,
            "sbg:includeInPorts": true,
            "id": "#split_bam1",
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "label": "split_bam1",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 21.538473569430273,
            "sbg:x": 666.1538890691907,
            "required": false,
            "sbg:includeInPorts": true,
            "id": "#fend_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "label": "fend_object_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 357.7436426095023,
            "sbg:x": 984.1028403502372,
            "required": false,
            "sbg:includeInPorts": true,
            "id": "#HiC_norm_binning_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "label": "HiC_norm_binning_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 558.9744715323862,
            "sbg:x": 777.7437167478082,
            "required": false,
            "sbg:includeInPorts": true,
            "id": "#HiC_data_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "label": "HiC_data_object_hdf5",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 86.15384043744288,
            "sbg:x": 1323.0770296232263,
            "required": false,
            "sbg:includeInPorts": true,
            "id": "#observed_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "label": "observed_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 470.76925607828014,
            "sbg:x": 1520.0001224540429,
            "required": false,
            "sbg:includeInPorts": true,
            "id": "#expected_fend_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "label": "expected_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "requirements": [],
    "sbg:modifiedOn": 1473274706,
    "sbg:latestRevision": 0,
    "sbg:modifiedBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "cwlVersion": "sbg:draft-2",
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "sbg:canvas_zoom": 0.6499999999999997,
    "sbg:sbgMaintained": false,
    "sbg:validationErrors": [],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:canvas_y": 66,
    "sbg:createdOn": 1473274706,
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274706,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "steps": [
        {
            "sbg:y": 226,
            "run": {
                "class": "CommandLineTool",
                "description": "",
                "sbg:image_url": null,
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                "stdout": "",
                "label": "hictool-fastq2bam",
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "sbg:job": {
                    "inputs": {
                        "input_fastq1": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq1.fastq",
                            "size": 0
                        },
                        "bowtie_index": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/bowtie_index.ext",
                            "size": 0
                        },
                        "output_dir": "output_dir",
                        "input_fastq2": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq2.fastq",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    }
                },
                "temporaryFailCodes": [],
                "sbg:createdBy": "gaurav",
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "stdin": "",
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
                "y": 226,
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine"
                    }
                ],
                "sbg:modifiedOn": 1467992192,
                "sbg:latestRevision": 14,
                "sbg:modifiedBy": "duplexa",
                "id": "gaurav/4dn/fastq2bam/14",
                "arguments": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:createdOn": 1464804268,
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
                                "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                                "engine": "#cwl-js-engine"
                            }
                        }
                    }
                ],
                "x": 265,
                "successCodes": [],
                "sbg:sbgMaintained": false,
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1464804268,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1464816082,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1464816200,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1464816230,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1465323168,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1465400656,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1465844403,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "r3.x4large",
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1467828936,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "docker image v2.",
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1467829775,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "removed outprefix from output files",
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1467832142,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem.",
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1467832711,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "bowtie_index redefined.",
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1467834125,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "i2.xlarge",
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1467838837,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam",
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1467989772,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1467992192,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "sbg:revision": 14,
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:toolDefaultValue": ".",
                        "sbg:includeInPorts": false,
                        "id": "#output_dir"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 3
                        },
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "sbg:fileTypes": "FASTQ, FQ",
                        "id": "#input_fastq2"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 2
                        },
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "sbg:fileTypes": "FASTQ, FQ",
                        "id": "#input_fastq1"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 1
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "sbg:fileTypes": "TGZ",
                        "id": "#bowtie_index"
                    }
                ],
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "sbg:project": "gaurav/4dn"
            },
            "sbg:x": 265,
            "id": "#hictool_fastq2bam",
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
                "class": "CommandLineTool",
                "description": "",
                "sbg:image_url": null,
                "stdout": "",
                "label": "hictool-bam2hdf5",
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "sbg:job": {
                    "inputs": {
                        "input_bam2": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_bam2.bam",
                            "size": 0
                        },
                        "output_dir": "output_dir",
                        "RE_bed": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/RE_bed.ext",
                            "size": 0
                        },
                        "input_bam1": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_bam1.bam",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    }
                },
                "temporaryFailCodes": [],
                "sbg:createdBy": "duplexa",
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "stdin": "",
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
                "y": 230.38462831423846,
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine"
                    }
                ],
                "sbg:modifiedOn": 1467995167,
                "sbg:latestRevision": 4,
                "sbg:modifiedBy": "duplexa",
                "id": "gaurav/4dn/bam2hdf5/4",
                "arguments": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:createdOn": 1467989155,
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
                                "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                                "engine": "#cwl-js-engine"
                            }
                        }
                    }
                ],
                "x": 588.9231050931494,
                "successCodes": [],
                "sbg:sbgMaintained": false,
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1467989155,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1467989197,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "docker bam2hdf5:v2",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1467989438,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1467989798,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1467995167,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "sbg:revision": 4,
                "inputs": [
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#output_dir"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 2
                        },
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "sbg:fileTypes": "BAM",
                        "id": "#input_bam2"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 1
                        },
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "sbg:fileTypes": "BAM",
                        "id": "#input_bam1"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 3
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "sbg:fileTypes": "BED",
                        "id": "#RE_bed"
                    }
                ],
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:project": "gaurav/4dn"
            },
            "sbg:x": 588.9231050931494,
            "id": "#hictool_bam2hdf5",
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
                "class": "CommandLineTool",
                "description": "",
                "sbg:image_url": null,
                "stdout": "",
                "label": "hictool-hdf52matrix",
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "sbg:job": {
                    "inputs": {
                        "chromosome": "chromosome",
                        "chrlen_file": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/chrlen_file.ext",
                            "size": 0
                        },
                        "HiC_data_object_hdf5": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/HiC_data_object_hdf5.ext",
                            "size": 0
                        },
                        "output_dir": "output_dir",
                        "contact_matrix_binsize": 0,
                        "fend_object_hdf5": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/fend_object_hdf5.ext",
                            "size": 0
                        },
                        "HiC_norm_binning_hdf5": {
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/HiC_norm_binning_hdf5.ext",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    }
                },
                "temporaryFailCodes": [],
                "sbg:createdBy": "gaurav",
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "stdin": "",
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
                "y": 228.6923403133314,
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine"
                    }
                ],
                "sbg:modifiedOn": 1467995451,
                "sbg:latestRevision": 7,
                "sbg:modifiedBy": "duplexa",
                "id": "gaurav/4dn/bam2matrix2/7",
                "arguments": [],
                "cwlVersion": "sbg:draft-2",
                "sbg:createdOn": 1464816740,
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
                                "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine"
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
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                                "engine": "#cwl-js-engine"
                            }
                        }
                    }
                ],
                "x": 1105.3846988706214,
                "successCodes": [],
                "sbg:sbgMaintained": false,
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1464816740,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1464818050,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:revisionNotes": "docker hdf52matrix:v2",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1467989666,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1467989698,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix",
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1467989823,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1467991994,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1467992019,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1467995451,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "sbg:revision": 7,
                "inputs": [
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 5,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "required": false,
                        "id": "#output_dir"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "sbg:fileTypes": "HDF5",
                        "id": "#fend_object_hdf5"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 3
                        },
                        "sbg:includeInPorts": true,
                        "id": "#contact_matrix_binsize",
                        "sbg:toolDefaultValue": "50000",
                        "required": true,
                        "type": [
                            "int"
                        ]
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 2
                        },
                        "type": [
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "sbg:includeInPorts": true,
                        "required": true,
                        "id": "#chromosome"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#chrlen_file"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 1
                        },
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "sbg:fileTypes": "HDF5",
                        "id": "#HiC_norm_binning_hdf5"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "sbg:fileTypes": "HDF5",
                        "id": "#HiC_data_object_hdf5"
                    }
                ],
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:project": "gaurav/4dn"
            },
            "sbg:x": 1105.3846988706214,
            "scatter": "#hictool_hdf52matrix.chromosome",
            "id": "#hictool_hdf52matrix",
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
    "sbg:createdBy": "duplexa"
}