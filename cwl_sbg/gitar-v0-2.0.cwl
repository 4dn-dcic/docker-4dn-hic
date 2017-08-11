{
    "sbg:image_url": null,
    "sbg:revision": 0,
    "sbg:canvas_y": 66,
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "sbg:latestRevision": 0,
    "sbg:validationErrors": [],
    "sbg:canvas_x": 1,
    "class": "Workflow",
    "inputs": [
        {
            "label": "input_fastq2",
            "sbg:y": 66,
            "sbg:fileTypes": "FASTQ, FQ",
            "type": [
                "File"
            ],
            "id": "#input_fastq2",
            "sbg:x": 83
        },
        {
            "label": "input_fastq1",
            "sbg:y": 222.53847149702227,
            "sbg:fileTypes": "FASTQ, FQ",
            "type": [
                "File"
            ],
            "id": "#input_fastq1",
            "sbg:x": 70.5384664352124
        },
        {
            "label": "bowtie_index",
            "sbg:y": 389.46159979718914,
            "sbg:fileTypes": "TGZ",
            "type": [
                "null",
                "File"
            ],
            "id": "#bowtie_index",
            "sbg:x": 89.53847718662128
        },
        {
            "label": "RE_bed",
            "sbg:y": 496.33335367838555,
            "sbg:fileTypes": "BED",
            "type": [
                "null",
                "File"
            ],
            "id": "#RE_bed",
            "sbg:x": 420.99998982747405
        },
        {
            "label": "chrlen_file",
            "sbg:y": -18.188064069204135,
            "sbg:x": 749.7779160072636,
            "type": [
                "null",
                "File"
            ],
            "id": "#chrlen_file"
        },
        {
            "label": "contact_matrix_binsize",
            "sbg:y": -6.153860611323651,
            "sbg:includeInPorts": true,
            "type": [
                "int"
            ],
            "id": "#contact_matrix_binsize",
            "sbg:x": 995.3846145833035
        },
        {
            "label": "chromosome",
            "sbg:y": 75.38460620338324,
            "sbg:includeInPorts": true,
            "type": [
                {
                    "items": "string",
                    "type": "array"
                }
            ],
            "id": "#chromosome",
            "sbg:x": 835.3847081280348
        }
    ],
    "sbg:createdBy": "duplexa",
    "hints": [],
    "sbg:canvas_zoom": 0.6499999999999997,
    "sbg:contributors": [
        "duplexa"
    ],
    "outputs": [
        {
            "label": "sorted_bam_pe",
            "sbg:y": 328.1196788763388,
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#sorted_bam_pe",
            "sbg:x": 391.6240561803214,
            "required": false
        },
        {
            "label": "HiC_project_object_hdf5",
            "sbg:y": 124.61539063086903,
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_project_object_hdf5",
            "sbg:x": 717.1795962773863,
            "required": false
        },
        {
            "label": "HiC_distance_function_hdf5",
            "sbg:y": 500.3419382689756,
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_distance_function_hdf5",
            "sbg:x": 939.2309175553464,
            "required": false
        },
        {
            "label": "normalized_fend_contact_matrix",
            "sbg:y": 190.94018009381435,
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_fend_contact_matrix",
            "sbg:x": 1489.2308385555568,
            "required": false
        },
        {
            "label": "normalized_enrich_contact_matrix",
            "sbg:y": 330.17099214681946,
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_enrich_contact_matrix",
            "sbg:x": 1573.6754030664124,
            "required": false
        },
        {
            "label": "expected_enrich_contact_matrix",
            "sbg:y": 530.5983404200941,
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_enrich_contact_matrix",
            "sbg:x": 1345.2138202308008,
            "required": false
        },
        {
            "label": "split_bam2",
            "sbg:y": -50.256409131563785,
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam2",
            "sbg:x": 328.92306357163494,
            "required": false
        },
        {
            "label": "split_bam1",
            "sbg:y": 59.384607461782,
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam1",
            "sbg:x": 368.92312900836833,
            "required": false
        },
        {
            "label": "fend_object_hdf5",
            "sbg:y": 21.538473569430273,
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#fend_object_hdf5",
            "sbg:x": 666.1538890691907,
            "required": false
        },
        {
            "label": "HiC_norm_binning_hdf5",
            "sbg:y": 357.7436426095023,
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_norm_binning_hdf5",
            "sbg:x": 984.1028403502372,
            "required": false
        },
        {
            "label": "HiC_data_object_hdf5",
            "sbg:y": 558.9744715323862,
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_data_object_hdf5",
            "sbg:x": 777.7437167478082,
            "required": false
        },
        {
            "label": "observed_contact_matrix",
            "sbg:y": 86.15384043744288,
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#observed_contact_matrix",
            "sbg:x": 1323.0770296232263,
            "required": false
        },
        {
            "label": "expected_fend_contact_matrix",
            "sbg:y": 470.76925607828014,
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_fend_contact_matrix",
            "sbg:x": 1520.0001224540429,
            "required": false
        }
    ],
    "label": "GITAR v0.2",
    "sbg:project": "4dn-dcic/dev",
    "sbg:createdOn": 1473274706,
    "sbg:modifiedOn": 1473274706,
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "requirements": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:projectName": "Dev",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274706,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6"
        }
    ],
    "sbg:sbgMaintained": false,
    "description": "",
    "sbg:modifiedBy": "duplexa",
    "steps": [
        {
            "id": "#hictool_fastq2bam",
            "sbg:y": 226,
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
            ],
            "sbg:x": 265,
            "run": {
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "sbg:image_url": null,
                "sbg:revision": 14,
                "stdout": "",
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "sbg:latestRevision": 14,
                "sbg:validationErrors": [],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    },
                    "inputs": {
                        "output_dir": "output_dir",
                        "input_fastq1": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_fastq1.fastq",
                            "class": "File"
                        },
                        "input_fastq2": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_fastq2.fastq",
                            "class": "File"
                        },
                        "bowtie_index": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/bowtie_index.ext",
                            "class": "File"
                        }
                    }
                },
                "class": "CommandLineTool",
                "inputs": [
                    {
                        "id": "#output_dir",
                        "sbg:toolDefaultValue": ".",
                        "sbg:includeInPorts": false,
                        "inputBinding": {
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'"
                            }
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#input_fastq2",
                        "required": true,
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "FASTQ, FQ"
                    },
                    {
                        "id": "#input_fastq1",
                        "required": true,
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "FASTQ, FQ"
                    },
                    {
                        "id": "#bowtie_index",
                        "required": false,
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "TGZ"
                    }
                ],
                "sbg:createdBy": "gaurav",
                "hints": [
                    {
                        "class": "sbg:MemRequirement",
                        "value": 24000
                    },
                    {
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/hictool-fastq2bam:v3",
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
                "sbg:project": "gaurav/4dn",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "outputs": [
                    {
                        "id": "#split_bam2",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "label": "hictool-fastq2bam",
                "x": 265,
                "id": "gaurav/4dn/fastq2bam/14",
                "arguments": [],
                "stdin": "",
                "sbg:createdOn": 1464804268,
                "sbg:modifiedOn": 1467992192,
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
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
                "successCodes": [],
                "y": 226,
                "cwlVersion": "sbg:draft-2",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1464804268,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1464816082,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1464816200,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1464816230,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1465323168,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1465400656,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1465844403,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1467828936,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "r3.x4large"
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1467829775,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker image v2."
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1467832142,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "removed outprefix from output files"
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1467832711,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem."
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1467834125,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "bowtie_index redefined."
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1467838837,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "i2.xlarge"
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1467989772,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam"
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1467992192,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker version 3. A sort step skipped."
                    }
                ],
                "temporaryFailCodes": [],
                "sbg:sbgMaintained": false,
                "description": "",
                "sbg:modifiedBy": "duplexa",
                "sbg:revisionNotes": "docker version 3. A sort step skipped."
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
            ]
        },
        {
            "id": "#hictool_bam2hdf5",
            "sbg:y": 230.38462831423846,
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
            ],
            "sbg:x": 588.9231050931494,
            "run": {
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:image_url": null,
                "sbg:revision": 4,
                "stdout": "",
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "sbg:latestRevision": 4,
                "sbg:validationErrors": [],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    },
                    "inputs": {
                        "RE_bed": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/RE_bed.ext",
                            "class": "File"
                        },
                        "input_bam1": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_bam1.bam",
                            "class": "File"
                        },
                        "output_dir": "output_dir",
                        "input_bam2": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/input_bam2.bam",
                            "class": "File"
                        }
                    }
                },
                "class": "CommandLineTool",
                "inputs": [
                    {
                        "id": "#output_dir",
                        "inputBinding": {
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'"
                            }
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#input_bam2",
                        "required": true,
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "BAM"
                    },
                    {
                        "id": "#input_bam1",
                        "required": true,
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "BAM"
                    },
                    {
                        "id": "#RE_bed",
                        "required": false,
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "BED"
                    }
                ],
                "sbg:createdBy": "duplexa",
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
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/hictool-bam2hdf5:v2",
                        "dockerImageId": ""
                    }
                ],
                "sbg:project": "gaurav/4dn",
                "sbg:contributors": [
                    "duplexa"
                ],
                "outputs": [
                    {
                        "id": "#fend_object_hdf5",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "label": "hictool-bam2hdf5",
                "x": 588.9231050931494,
                "id": "gaurav/4dn/bam2hdf5/4",
                "arguments": [],
                "stdin": "",
                "sbg:createdOn": 1467989155,
                "sbg:modifiedOn": 1467995167,
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
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
                "successCodes": [],
                "y": 230.38462831423846,
                "cwlVersion": "sbg:draft-2",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1467989155,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1467989197,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1467989438,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker bam2hdf5:v2"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1467989798,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1467995167,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    }
                ],
                "sbg:sbgMaintained": false,
                "description": "",
                "sbg:modifiedBy": "duplexa",
                "temporaryFailCodes": []
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
            ]
        },
        {
            "id": "#hictool_hdf52matrix",
            "sbg:y": 228.6923403133314,
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
            "sbg:x": 1105.3846988706214,
            "scatter": "#hictool_hdf52matrix.chromosome",
            "run": {
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:image_url": null,
                "sbg:revision": 7,
                "stdout": "",
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "sbg:latestRevision": 7,
                "sbg:validationErrors": [],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 8000
                    },
                    "inputs": {
                        "chromosome": "chromosome",
                        "fend_object_hdf5": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/fend_object_hdf5.ext",
                            "class": "File"
                        },
                        "output_dir": "output_dir",
                        "HiC_norm_binning_hdf5": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/HiC_norm_binning_hdf5.ext",
                            "class": "File"
                        },
                        "contact_matrix_binsize": 0,
                        "chrlen_file": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/chrlen_file.ext",
                            "class": "File"
                        },
                        "HiC_data_object_hdf5": {
                            "secondaryFiles": [],
                            "size": 0,
                            "path": "/path/to/HiC_data_object_hdf5.ext",
                            "class": "File"
                        }
                    }
                },
                "class": "CommandLineTool",
                "inputs": [
                    {
                        "id": "#output_dir",
                        "required": false,
                        "inputBinding": {
                            "position": 5,
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir || '.'"
                            }
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#fend_object_hdf5",
                        "required": false,
                        "sbg:fileTypes": "HDF5",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#contact_matrix_binsize",
                        "sbg:includeInPorts": true,
                        "type": [
                            "int"
                        ],
                        "sbg:toolDefaultValue": "50000",
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "required": true
                    },
                    {
                        "id": "#chromosome",
                        "sbg:includeInPorts": true,
                        "inputBinding": {
                            "position": 2,
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "type": [
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "required": true
                    },
                    {
                        "id": "#chrlen_file",
                        "required": false,
                        "inputBinding": {
                            "position": 4,
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#HiC_norm_binning_hdf5",
                        "required": true,
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "HDF5"
                    },
                    {
                        "id": "#HiC_data_object_hdf5",
                        "required": false,
                        "sbg:fileTypes": "HDF5",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:createdBy": "gaurav",
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
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/hictool-hdf52matrix:v2",
                        "dockerImageId": ""
                    }
                ],
                "sbg:project": "gaurav/4dn",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "outputs": [
                    {
                        "id": "#observed_contact_matrix",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "label": "hictool-hdf52matrix",
                "x": 1105.3846988706214,
                "id": "gaurav/4dn/bam2matrix2/7",
                "arguments": [],
                "stdin": "",
                "sbg:createdOn": 1464816740,
                "sbg:modifiedOn": 1467995451,
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
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
                "successCodes": [],
                "y": 228.6923403133314,
                "cwlVersion": "sbg:draft-2",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1464816740,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1464818050,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1467989666,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker hdf52matrix:v2"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1467989698,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1467989823,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix"
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1467991994,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1467992019,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1467995451,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null
                    }
                ],
                "sbg:sbgMaintained": false,
                "description": "",
                "sbg:modifiedBy": "duplexa",
                "temporaryFailCodes": []
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
            ]
        }
    ]
}