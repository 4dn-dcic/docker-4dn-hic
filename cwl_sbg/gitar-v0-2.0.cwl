{
    "sbg:createdOn": 1473274706,
    "sbg:canvas_x": 1,
    "sbg:image_url": null,
    "sbg:revision": 0,
    "sbg:validationErrors": [],
    "sbg:modifiedOn": 1473274706,
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedBy": "duplexa",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274706
        }
    ],
    "sbg:canvas_y": 66,
    "requirements": [],
    "sbg:sbgMaintained": false,
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "sbg:latestRevision": 0,
    "outputs": [
        {
            "sbg:y": 328.1196788763388,
            "required": false,
            "sbg:x": 391.6240561803214,
            "label": "sorted_bam_pe",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "id": "#sorted_bam_pe"
        },
        {
            "sbg:y": 124.61539063086903,
            "required": false,
            "sbg:x": 717.1795962773863,
            "label": "HiC_project_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "id": "#HiC_project_object_hdf5"
        },
        {
            "sbg:y": 500.3419382689756,
            "required": false,
            "sbg:x": 939.2309175553464,
            "label": "HiC_distance_function_hdf5",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "id": "#HiC_distance_function_hdf5"
        },
        {
            "sbg:y": 190.94018009381435,
            "required": false,
            "sbg:x": 1489.2308385555568,
            "label": "normalized_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "id": "#normalized_fend_contact_matrix"
        },
        {
            "sbg:y": 330.17099214681946,
            "required": false,
            "sbg:x": 1573.6754030664124,
            "label": "normalized_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "id": "#normalized_enrich_contact_matrix"
        },
        {
            "sbg:y": 530.5983404200941,
            "required": false,
            "sbg:x": 1345.2138202308008,
            "label": "expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "id": "#expected_enrich_contact_matrix"
        },
        {
            "sbg:y": -50.256409131563785,
            "required": false,
            "sbg:x": 328.92306357163494,
            "label": "split_bam2",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "id": "#split_bam2"
        },
        {
            "sbg:y": 59.384607461782,
            "required": false,
            "sbg:x": 368.92312900836833,
            "label": "split_bam1",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "id": "#split_bam1"
        },
        {
            "sbg:y": 21.538473569430273,
            "required": false,
            "sbg:x": 666.1538890691907,
            "label": "fend_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "id": "#fend_object_hdf5"
        },
        {
            "sbg:y": 357.7436426095023,
            "required": false,
            "sbg:x": 984.1028403502372,
            "label": "HiC_norm_binning_hdf5",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "id": "#HiC_norm_binning_hdf5"
        },
        {
            "sbg:y": 558.9744715323862,
            "required": false,
            "sbg:x": 777.7437167478082,
            "label": "HiC_data_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "id": "#HiC_data_object_hdf5"
        },
        {
            "sbg:y": 86.15384043744288,
            "required": false,
            "sbg:x": 1323.0770296232263,
            "label": "observed_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "id": "#observed_contact_matrix"
        },
        {
            "sbg:y": 470.76925607828014,
            "required": false,
            "sbg:x": 1520.0001224540429,
            "label": "expected_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "id": "#expected_fend_contact_matrix"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "sbg:canvas_zoom": 0.6499999999999997,
    "label": "GITAR v0.2",
    "class": "Workflow",
    "inputs": [
        {
            "sbg:y": 66,
            "id": "#input_fastq2",
            "sbg:x": 83,
            "label": "input_fastq2",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "sbg:y": 222.53847149702227,
            "id": "#input_fastq1",
            "sbg:x": 70.5384664352124,
            "label": "input_fastq1",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "sbg:y": 389.46159979718914,
            "id": "#bowtie_index",
            "sbg:x": 89.53847718662128,
            "label": "bowtie_index",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "TGZ"
        },
        {
            "sbg:y": 496.33335367838555,
            "id": "#RE_bed",
            "sbg:x": 420.99998982747405,
            "label": "RE_bed",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "BED"
        },
        {
            "label": "chrlen_file",
            "sbg:y": -18.188064069204135,
            "id": "#chrlen_file",
            "sbg:x": 749.7779160072636,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": -6.153860611323651,
            "id": "#contact_matrix_binsize",
            "sbg:x": 995.3846145833035,
            "label": "contact_matrix_binsize",
            "type": [
                "int"
            ],
            "sbg:includeInPorts": true
        },
        {
            "sbg:y": 75.38460620338324,
            "id": "#chromosome",
            "sbg:x": 835.3847081280348,
            "label": "chromosome",
            "type": [
                {
                    "type": "array",
                    "items": "string"
                }
            ],
            "sbg:includeInPorts": true
        }
    ],
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:createdBy": "duplexa",
    "steps": [
        {
            "run": {
                "sbg:createdOn": 1464804268,
                "sbg:image_url": null,
                "sbg:revision": 14,
                "sbg:validationErrors": [],
                "sbg:project": "gaurav/4dn",
                "x": 265,
                "stdout": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464804268
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816082
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816200
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816230
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1465323168
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1465400656
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1465844403
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:revisionNotes": "r3.x4large",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467828936
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:revisionNotes": "docker image v2.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467829775
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:revisionNotes": "removed outprefix from output files",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467832142
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467832711
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:revisionNotes": "bowtie_index redefined.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467834125
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:revisionNotes": "i2.xlarge",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467838837
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989772
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467992192
                    }
                ],
                "requirements": [
                    {
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine"
                    }
                ],
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    },
                    "inputs": {
                        "input_fastq2": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq2.fastq"
                        },
                        "input_fastq1": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq1.fastq"
                        },
                        "output_dir": "output_dir",
                        "bowtie_index": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/bowtie_index.ext"
                        }
                    }
                },
                "cwlVersion": "sbg:draft-2",
                "sbg:modifiedOn": 1467992192,
                "sbg:latestRevision": 14,
                "outputs": [
                    {
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#sorted_bam_pe"
                    }
                ],
                "temporaryFailCodes": [],
                "class": "CommandLineTool",
                "id": "gaurav/4dn/fastq2bam/14",
                "sbg:sbgMaintained": false,
                "label": "hictool-fastq2bam",
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                "y": 226,
                "inputs": [
                    {
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
                        },
                        "id": "#output_dir",
                        "sbg:toolDefaultValue": "."
                    },
                    {
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": false
                        },
                        "required": true,
                        "id": "#input_fastq2",
                        "sbg:fileTypes": "FASTQ, FQ"
                    },
                    {
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": false
                        },
                        "required": true,
                        "id": "#input_fastq1",
                        "sbg:fileTypes": "FASTQ, FQ"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": false
                        },
                        "required": false,
                        "id": "#bowtie_index",
                        "sbg:fileTypes": "TGZ"
                    }
                ],
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "sbg:modifiedBy": "duplexa",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "sbg:createdBy": "gaurav",
                "arguments": [],
                "stdin": "",
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
                "description": "",
                "successCodes": [],
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq"
            },
            "id": "#hictool_fastq2bam",
            "sbg:x": 265,
            "sbg:y": 226,
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
            "run": {
                "sbg:createdOn": 1467989155,
                "sbg:image_url": null,
                "sbg:revision": 4,
                "sbg:validationErrors": [],
                "sbg:project": "gaurav/4dn",
                "x": 588.9231050931494,
                "stdout": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989155
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989197
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:revisionNotes": "docker bam2hdf5:v2",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989438
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989798
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467995167
                    }
                ],
                "requirements": [
                    {
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine"
                    }
                ],
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    },
                    "inputs": {
                        "input_bam2": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_bam2.bam"
                        },
                        "input_bam1": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_bam1.bam"
                        },
                        "output_dir": "output_dir",
                        "RE_bed": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/RE_bed.ext"
                        }
                    }
                },
                "cwlVersion": "sbg:draft-2",
                "sbg:modifiedOn": 1467995167,
                "sbg:latestRevision": 4,
                "outputs": [
                    {
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#HiC_data_object_hdf5"
                    }
                ],
                "temporaryFailCodes": [],
                "class": "CommandLineTool",
                "id": "gaurav/4dn/bam2hdf5/4",
                "sbg:sbgMaintained": false,
                "label": "hictool-bam2hdf5",
                "stdin": "",
                "inputs": [
                    {
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
                        },
                        "id": "#output_dir"
                    },
                    {
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": false
                        },
                        "required": true,
                        "id": "#input_bam2",
                        "sbg:fileTypes": "BAM"
                    },
                    {
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": false
                        },
                        "required": true,
                        "id": "#input_bam1",
                        "sbg:fileTypes": "BAM"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": false
                        },
                        "required": false,
                        "id": "#RE_bed",
                        "sbg:fileTypes": "BED"
                    }
                ],
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "sbg:modifiedBy": "duplexa",
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:createdBy": "duplexa",
                "arguments": [],
                "y": 230.38462831423846,
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
                "description": "",
                "successCodes": [],
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam"
            },
            "id": "#hictool_bam2hdf5",
            "sbg:x": 588.9231050931494,
            "sbg:y": 230.38462831423846,
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
            "run": {
                "sbg:createdOn": 1464816740,
                "sbg:image_url": null,
                "sbg:revision": 7,
                "sbg:validationErrors": [],
                "sbg:project": "gaurav/4dn",
                "x": 1105.3846988706214,
                "stdout": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816740
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464818050
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:revisionNotes": "docker hdf52matrix:v2",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989666
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989698
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989823
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467991994
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467992019
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467995451
                    }
                ],
                "requirements": [
                    {
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine"
                    }
                ],
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
                        "chrlen_file": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/chrlen_file.ext"
                        },
                        "output_dir": "output_dir",
                        "HiC_norm_binning_hdf5": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/HiC_norm_binning_hdf5.ext"
                        },
                        "HiC_data_object_hdf5": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/HiC_data_object_hdf5.ext"
                        },
                        "fend_object_hdf5": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/fend_object_hdf5.ext"
                        },
                        "chromosome": "chromosome"
                    }
                },
                "cwlVersion": "sbg:draft-2",
                "sbg:modifiedOn": 1467995451,
                "sbg:latestRevision": 7,
                "outputs": [
                    {
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
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
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#expected_enrich_contact_matrix"
                    }
                ],
                "temporaryFailCodes": [],
                "class": "CommandLineTool",
                "id": "gaurav/4dn/bam2matrix2/7",
                "sbg:sbgMaintained": false,
                "label": "hictool-hdf52matrix",
                "stdin": "",
                "inputs": [
                    {
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
                        "required": false,
                        "id": "#output_dir"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#fend_object_hdf5",
                        "sbg:fileTypes": "HDF5"
                    },
                    {
                        "required": true,
                        "type": [
                            "int"
                        ],
                        "sbg:includeInPorts": true,
                        "sbg:toolDefaultValue": "50000",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": false
                        },
                        "id": "#contact_matrix_binsize"
                    },
                    {
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
                        "required": true,
                        "id": "#chromosome"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 4,
                            "separate": false
                        },
                        "required": false,
                        "id": "#chrlen_file"
                    },
                    {
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": false
                        },
                        "required": true,
                        "id": "#HiC_norm_binning_hdf5",
                        "sbg:fileTypes": "HDF5"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#HiC_data_object_hdf5",
                        "sbg:fileTypes": "HDF5"
                    }
                ],
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "sbg:modifiedBy": "duplexa",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "sbg:createdBy": "gaurav",
                "arguments": [],
                "y": 228.6923403133314,
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
                "description": "",
                "successCodes": [],
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0"
            },
            "id": "#hictool_hdf52matrix",
            "sbg:x": 1105.3846988706214,
            "sbg:y": 228.6923403133314,
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
    "hints": [],
    "description": "",
    "sbg:projectName": "Dev",
    "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
    "sbg:appVersion": [
        "sbg:draft-2"
    ]
}