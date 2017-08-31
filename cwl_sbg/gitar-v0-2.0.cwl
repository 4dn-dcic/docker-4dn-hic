{
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274706,
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:sbgMaintained": false,
    "class": "Workflow",
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "cwlVersion": "sbg:draft-2",
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "sbg:modifiedOn": 1473274706,
    "sbg:project": "4dn-dcic/dev",
    "outputs": [
        {
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 328.1196788763388,
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "sbg:x": 391.6240561803214,
            "id": "#sorted_bam_pe",
            "required": false,
            "label": "sorted_bam_pe"
        },
        {
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 124.61539063086903,
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "sbg:x": 717.1795962773863,
            "id": "#HiC_project_object_hdf5",
            "required": false,
            "label": "HiC_project_object_hdf5"
        },
        {
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 500.3419382689756,
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "sbg:x": 939.2309175553464,
            "id": "#HiC_distance_function_hdf5",
            "required": false,
            "label": "HiC_distance_function_hdf5"
        },
        {
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 190.94018009381435,
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "sbg:x": 1489.2308385555568,
            "id": "#normalized_fend_contact_matrix",
            "required": false,
            "label": "normalized_fend_contact_matrix"
        },
        {
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 330.17099214681946,
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "sbg:x": 1573.6754030664124,
            "id": "#normalized_enrich_contact_matrix",
            "required": false,
            "label": "normalized_enrich_contact_matrix"
        },
        {
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 530.5983404200941,
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "sbg:x": 1345.2138202308008,
            "id": "#expected_enrich_contact_matrix",
            "required": false,
            "label": "expected_enrich_contact_matrix"
        },
        {
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": -50.256409131563785,
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "sbg:x": 328.92306357163494,
            "id": "#split_bam2",
            "required": false,
            "label": "split_bam2"
        },
        {
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 59.384607461782,
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "sbg:x": 368.92312900836833,
            "id": "#split_bam1",
            "required": false,
            "label": "split_bam1"
        },
        {
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 21.538473569430273,
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "sbg:x": 666.1538890691907,
            "id": "#fend_object_hdf5",
            "required": false,
            "label": "fend_object_hdf5"
        },
        {
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 357.7436426095023,
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "sbg:x": 984.1028403502372,
            "id": "#HiC_norm_binning_hdf5",
            "required": false,
            "label": "HiC_norm_binning_hdf5"
        },
        {
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 558.9744715323862,
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "sbg:x": 777.7437167478082,
            "id": "#HiC_data_object_hdf5",
            "required": false,
            "label": "HiC_data_object_hdf5"
        },
        {
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 86.15384043744288,
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "sbg:x": 1323.0770296232263,
            "id": "#observed_contact_matrix",
            "required": false,
            "label": "observed_contact_matrix"
        },
        {
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 470.76925607828014,
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "sbg:x": 1520.0001224540429,
            "id": "#expected_fend_contact_matrix",
            "required": false,
            "label": "expected_fend_contact_matrix"
        }
    ],
    "sbg:image_url": null,
    "sbg:canvas_x": 1,
    "sbg:modifiedBy": "duplexa",
    "sbg:revision": 0,
    "inputs": [
        {
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ",
            "label": "input_fastq2",
            "sbg:y": 66,
            "id": "#input_fastq2",
            "sbg:x": 83
        },
        {
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ",
            "label": "input_fastq1",
            "sbg:y": 222.53847149702227,
            "id": "#input_fastq1",
            "sbg:x": 70.5384664352124
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "TGZ",
            "label": "bowtie_index",
            "sbg:y": 389.46159979718914,
            "id": "#bowtie_index",
            "sbg:x": 89.53847718662128
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BED",
            "label": "RE_bed",
            "sbg:y": 496.33335367838555,
            "id": "#RE_bed",
            "sbg:x": 420.99998982747405
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 749.7779160072636,
            "id": "#chrlen_file",
            "sbg:y": -18.188064069204135,
            "label": "chrlen_file"
        },
        {
            "sbg:includeInPorts": true,
            "type": [
                "int"
            ],
            "sbg:y": -6.153860611323651,
            "label": "contact_matrix_binsize",
            "id": "#contact_matrix_binsize",
            "sbg:x": 995.3846145833035
        },
        {
            "sbg:includeInPorts": true,
            "type": [
                {
                    "type": "array",
                    "items": "string"
                }
            ],
            "sbg:y": 75.38460620338324,
            "label": "chromosome",
            "id": "#chromosome",
            "sbg:x": 835.3847081280348
        }
    ],
    "steps": [
        {
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
            "sbg:y": 226,
            "run": {
                "arguments": [],
                "sbg:sbgMaintained": false,
                "class": "CommandLineTool",
                "x": 265,
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "sbg:modifiedOn": 1467992192,
                "sbg:project": "gaurav/4dn",
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/out_pair2.bam'",
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
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/out_pair1.bam'",
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
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
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
                "sbg:image_url": null,
                "sbg:latestRevision": 14,
                "sbg:modifiedBy": "duplexa",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    },
                    "inputs": {
                        "bowtie_index": {
                            "path": "/path/to/bowtie_index.ext",
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0
                        },
                        "input_fastq1": {
                            "path": "/path/to/input_fastq1.fastq",
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0
                        },
                        "input_fastq2": {
                            "path": "/path/to/input_fastq2.fastq",
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0
                        },
                        "output_dir": "output_dir"
                    }
                },
                "stdout": "",
                "y": 226,
                "sbg:revision": 14,
                "inputs": [
                    {
                        "sbg:includeInPorts": false,
                        "sbg:toolDefaultValue": ".",
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#output_dir",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression"
                            },
                            "separate": false,
                            "position": 4
                        }
                    },
                    {
                        "sbg:fileTypes": "FASTQ, FQ",
                        "type": [
                            "File"
                        ],
                        "id": "#input_fastq2",
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": false
                        }
                    },
                    {
                        "sbg:fileTypes": "FASTQ, FQ",
                        "type": [
                            "File"
                        ],
                        "id": "#input_fastq1",
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": false
                        }
                    },
                    {
                        "sbg:fileTypes": "TGZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#bowtie_index",
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": false
                        }
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1464804268,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1464816082,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1464816200,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1464816230,
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1465323168,
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1465400656,
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1465844403,
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467828936,
                        "sbg:revision": 7,
                        "sbg:revisionNotes": "r3.x4large",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467829775,
                        "sbg:revision": 8,
                        "sbg:revisionNotes": "docker image v2.",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467832142,
                        "sbg:revision": 9,
                        "sbg:revisionNotes": "removed outprefix from output files",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467832711,
                        "sbg:revision": 10,
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem.",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467834125,
                        "sbg:revision": 11,
                        "sbg:revisionNotes": "bowtie_index redefined.",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467838837,
                        "sbg:revision": 12,
                        "sbg:revisionNotes": "i2.xlarge",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989772,
                        "sbg:revision": 13,
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467992192,
                        "sbg:revision": 14,
                        "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
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
                "sbg:createdOn": 1464804268,
                "successCodes": [],
                "description": "",
                "temporaryFailCodes": [],
                "sbg:validationErrors": [],
                "label": "hictool-fastq2bam",
                "sbg:createdBy": "gaurav",
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
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "id": "gaurav/4dn/fastq2bam/14",
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ]
            },
            "id": "#hictool_fastq2bam",
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
            "sbg:x": 265
        },
        {
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
            "sbg:y": 230.38462831423846,
            "run": {
                "arguments": [],
                "sbg:sbgMaintained": false,
                "class": "CommandLineTool",
                "x": 588.9231050931494,
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "sbg:modifiedOn": 1467995167,
                "sbg:project": "gaurav/4dn",
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
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
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
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
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
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
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
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
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
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
                "sbg:image_url": null,
                "sbg:latestRevision": 4,
                "sbg:modifiedBy": "duplexa",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    },
                    "inputs": {
                        "RE_bed": {
                            "path": "/path/to/RE_bed.ext",
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0
                        },
                        "input_bam1": {
                            "path": "/path/to/input_bam1.bam",
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0
                        },
                        "output_dir": "output_dir",
                        "input_bam2": {
                            "path": "/path/to/input_bam2.bam",
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0
                        }
                    }
                },
                "stdout": "",
                "y": 230.38462831423846,
                "sbg:revision": 4,
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#output_dir",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression"
                            },
                            "separate": false,
                            "position": 4
                        }
                    },
                    {
                        "sbg:fileTypes": "BAM",
                        "type": [
                            "File"
                        ],
                        "id": "#input_bam2",
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": false
                        }
                    },
                    {
                        "sbg:fileTypes": "BAM",
                        "type": [
                            "File"
                        ],
                        "id": "#input_bam1",
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": false
                        }
                    },
                    {
                        "sbg:fileTypes": "BED",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#RE_bed",
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": false
                        }
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1467989155,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989197,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989438,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": "docker bam2hdf5:v2",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989798,
                        "sbg:revision": 3,
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467995167,
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
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
                "sbg:createdOn": 1467989155,
                "successCodes": [],
                "description": "",
                "temporaryFailCodes": [],
                "sbg:validationErrors": [],
                "label": "hictool-bam2hdf5",
                "sbg:createdBy": "duplexa",
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
                "baseCommand": [
                    "run.sh"
                ],
                "id": "gaurav/4dn/bam2hdf5/4",
                "sbg:contributors": [
                    "duplexa"
                ]
            },
            "id": "#hictool_bam2hdf5",
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
            "sbg:x": 588.9231050931494
        },
        {
            "scatter": "#hictool_hdf52matrix.chromosome",
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
            "run": {
                "arguments": [],
                "sbg:sbgMaintained": false,
                "class": "CommandLineTool",
                "x": 1105.3846988706214,
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "sbg:modifiedOn": 1467995451,
                "sbg:project": "gaurav/4dn",
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
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
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
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
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
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
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
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
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
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
                "sbg:image_url": null,
                "sbg:latestRevision": 7,
                "sbg:modifiedBy": "duplexa",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    },
                    "inputs": {
                        "chromosome": "chromosome",
                        "HiC_norm_binning_hdf5": {
                            "path": "/path/to/HiC_norm_binning_hdf5.ext",
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0
                        },
                        "contact_matrix_binsize": 0,
                        "chrlen_file": {
                            "path": "/path/to/chrlen_file.ext",
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0
                        },
                        "fend_object_hdf5": {
                            "path": "/path/to/fend_object_hdf5.ext",
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0
                        },
                        "output_dir": "output_dir",
                        "HiC_data_object_hdf5": {
                            "path": "/path/to/HiC_data_object_hdf5.ext",
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0
                        }
                    }
                },
                "stdout": "",
                "y": 228.6923403133314,
                "sbg:revision": 7,
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#output_dir",
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'",
                                "class": "Expression"
                            },
                            "separate": false,
                            "position": 5
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#fend_object_hdf5",
                        "sbg:fileTypes": "HDF5",
                        "required": false
                    },
                    {
                        "sbg:includeInPorts": true,
                        "sbg:toolDefaultValue": "50000",
                        "type": [
                            "int"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": false
                        },
                        "id": "#contact_matrix_binsize",
                        "required": true
                    },
                    {
                        "sbg:includeInPorts": true,
                        "type": [
                            {
                                "type": "array",
                                "items": "string"
                            }
                        ],
                        "id": "#chromosome",
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": false
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#chrlen_file",
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 4,
                            "separate": false
                        }
                    },
                    {
                        "sbg:fileTypes": "HDF5",
                        "type": [
                            "File"
                        ],
                        "id": "#HiC_norm_binning_hdf5",
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": false
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#HiC_data_object_hdf5",
                        "sbg:fileTypes": "HDF5",
                        "required": false
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1464816740,
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1464818050,
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1467989666,
                        "sbg:revision": 2,
                        "sbg:revisionNotes": "docker hdf52matrix:v2",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989698,
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989823,
                        "sbg:revision": 4,
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix",
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467991994,
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467992019,
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467995451,
                        "sbg:revision": 7,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
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
                "sbg:createdOn": 1464816740,
                "successCodes": [],
                "description": "",
                "temporaryFailCodes": [],
                "sbg:validationErrors": [],
                "label": "hictool-hdf52matrix",
                "sbg:createdBy": "gaurav",
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
                "baseCommand": [
                    "run.sh"
                ],
                "id": "gaurav/4dn/bam2matrix2/7",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ]
            },
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
            "sbg:x": 1105.3846988706214
        }
    ],
    "sbg:createdOn": 1473274706,
    "hints": [],
    "sbg:createdBy": "duplexa",
    "description": "",
    "sbg:canvas_y": 66,
    "sbg:latestRevision": 0,
    "sbg:validationErrors": [],
    "label": "GITAR v0.2",
    "sbg:canvas_zoom": 0.6499999999999997,
    "sbg:projectName": "Dev",
    "requirements": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "sbg:contributors": [
        "duplexa"
    ]
}