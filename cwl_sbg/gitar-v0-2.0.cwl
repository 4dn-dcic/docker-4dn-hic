{
    "sbg:image_url": null,
    "sbg:createdBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "description": "",
    "sbg:validationErrors": [],
    "sbg:sbgMaintained": false,
    "sbg:canvas_x": 1,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:createdOn": 1473274706,
    "sbg:canvas_y": 66,
    "class": "Workflow",
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "cwlVersion": "sbg:draft-2",
    "sbg:revision": 0,
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_fastq2",
            "sbg:fileTypes": "FASTQ, FQ",
            "label": "input_fastq2",
            "sbg:x": 83,
            "sbg:y": 66
        },
        {
            "type": [
                "File"
            ],
            "id": "#input_fastq1",
            "sbg:fileTypes": "FASTQ, FQ",
            "label": "input_fastq1",
            "sbg:x": 70.5384664352124,
            "sbg:y": 222.53847149702227
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#bowtie_index",
            "sbg:fileTypes": "TGZ",
            "label": "bowtie_index",
            "sbg:x": 89.53847718662128,
            "sbg:y": 389.46159979718914
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#RE_bed",
            "sbg:fileTypes": "BED",
            "label": "RE_bed",
            "sbg:x": 420.99998982747405,
            "sbg:y": 496.33335367838555
        },
        {
            "label": "chrlen_file",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 749.7779160072636,
            "id": "#chrlen_file",
            "sbg:y": -18.188064069204135
        },
        {
            "type": [
                "int"
            ],
            "id": "#contact_matrix_binsize",
            "sbg:includeInPorts": true,
            "label": "contact_matrix_binsize",
            "sbg:x": 995.3846145833035,
            "sbg:y": -6.153860611323651
        },
        {
            "type": [
                {
                    "type": "array",
                    "items": "string"
                }
            ],
            "id": "#chromosome",
            "sbg:includeInPorts": true,
            "label": "chromosome",
            "sbg:x": 835.3847081280348,
            "sbg:y": 75.38460620338324
        }
    ],
    "requirements": [],
    "sbg:latestRevision": 0,
    "label": "GITAR v0.2",
    "hints": [],
    "sbg:project": "4dn-dcic/dev",
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "id": "#sorted_bam_pe",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "sorted_bam_pe",
            "sbg:x": 391.6240561803214,
            "sbg:y": 328.1196788763388
        },
        {
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "id": "#HiC_project_object_hdf5",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "HiC_project_object_hdf5",
            "sbg:x": 717.1795962773863,
            "sbg:y": 124.61539063086903
        },
        {
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "id": "#HiC_distance_function_hdf5",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "HiC_distance_function_hdf5",
            "sbg:x": 939.2309175553464,
            "sbg:y": 500.3419382689756
        },
        {
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "id": "#normalized_fend_contact_matrix",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "normalized_fend_contact_matrix",
            "sbg:x": 1489.2308385555568,
            "sbg:y": 190.94018009381435
        },
        {
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "id": "#normalized_enrich_contact_matrix",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "normalized_enrich_contact_matrix",
            "sbg:x": 1573.6754030664124,
            "sbg:y": 330.17099214681946
        },
        {
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "id": "#expected_enrich_contact_matrix",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "expected_enrich_contact_matrix",
            "sbg:x": 1345.2138202308008,
            "sbg:y": 530.5983404200941
        },
        {
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "id": "#split_bam2",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "split_bam2",
            "sbg:x": 328.92306357163494,
            "sbg:y": -50.256409131563785
        },
        {
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "id": "#split_bam1",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "split_bam1",
            "sbg:x": 368.92312900836833,
            "sbg:y": 59.384607461782
        },
        {
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "id": "#fend_object_hdf5",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "fend_object_hdf5",
            "sbg:x": 666.1538890691907,
            "sbg:y": 21.538473569430273
        },
        {
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "id": "#HiC_norm_binning_hdf5",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "HiC_norm_binning_hdf5",
            "sbg:x": 984.1028403502372,
            "sbg:y": 357.7436426095023
        },
        {
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "id": "#HiC_data_object_hdf5",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "HiC_data_object_hdf5",
            "sbg:x": 777.7437167478082,
            "sbg:y": 558.9744715323862
        },
        {
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "id": "#observed_contact_matrix",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "observed_contact_matrix",
            "sbg:x": 1323.0770296232263,
            "sbg:y": 86.15384043744288
        },
        {
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "id": "#expected_fend_contact_matrix",
            "sbg:includeInPorts": true,
            "required": false,
            "label": "expected_fend_contact_matrix",
            "sbg:x": 1520.0001224540429,
            "sbg:y": 470.76925607828014
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274706
        }
    ],
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
            "id": "#hictool_fastq2bam",
            "run": {
                "sbg:image_url": null,
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
                "id": "gaurav/4dn/fastq2bam/14",
                "y": 226,
                "sbg:createdBy": "gaurav",
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                "class": "CommandLineTool",
                "sbg:job": {
                    "inputs": {
                        "bowtie_index": {
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/bowtie_index.ext",
                            "size": 0
                        },
                        "input_fastq1": {
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_fastq1.fastq",
                            "size": 0
                        },
                        "output_dir": "output_dir",
                        "input_fastq2": {
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_fastq2.fastq",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    }
                },
                "sbg:validationErrors": [],
                "description": "",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ]
                    }
                ],
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
                "sbg:sbgMaintained": false,
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "x": 265,
                "cwlVersion": "sbg:draft-2",
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#output_dir",
                        "sbg:toolDefaultValue": ".",
                        "inputBinding": {
                            "position": 4,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine"
                            },
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:includeInPorts": false
                    },
                    {
                        "type": [
                            "File"
                        ],
                        "id": "#input_fastq2",
                        "sbg:fileTypes": "FASTQ, FQ",
                        "inputBinding": {
                            "position": 3,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "required": true
                    },
                    {
                        "type": [
                            "File"
                        ],
                        "id": "#input_fastq1",
                        "sbg:fileTypes": "FASTQ, FQ",
                        "inputBinding": {
                            "position": 2,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "required": true
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#bowtie_index",
                        "sbg:fileTypes": "TGZ",
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    }
                ],
                "sbg:createdOn": 1464804268,
                "temporaryFailCodes": [],
                "label": "hictool-fastq2bam",
                "sbg:modifiedBy": "duplexa",
                "sbg:revision": 14,
                "sbg:project": "gaurav/4dn",
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
                "successCodes": [],
                "sbg:latestRevision": 14,
                "stdin": "",
                "arguments": [],
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "sbg:modifiedOn": 1467992192,
                "stdout": ""
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
            "sbg:x": 265,
            "sbg:y": 226
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
            "id": "#hictool_bam2hdf5",
            "run": {
                "sbg:image_url": null,
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
                "id": "gaurav/4dn/bam2hdf5/4",
                "y": 230.38462831423846,
                "sbg:createdBy": "duplexa",
                "class": "CommandLineTool",
                "sbg:job": {
                    "inputs": {
                        "input_bam1": {
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_bam1.bam",
                            "size": 0
                        },
                        "output_dir": "output_dir",
                        "input_bam2": {
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/input_bam2.bam",
                            "size": 0
                        },
                        "RE_bed": {
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/RE_bed.ext",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    }
                },
                "sbg:validationErrors": [],
                "description": "",
                "sbg:contributors": [
                    "duplexa"
                ],
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ]
                    }
                ],
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
                "sbg:sbgMaintained": false,
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "x": 588.9231050931494,
                "cwlVersion": "sbg:draft-2",
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#output_dir",
                        "inputBinding": {
                            "position": 4,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine"
                            },
                            "separate": false,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "type": [
                            "File"
                        ],
                        "id": "#input_bam2",
                        "sbg:fileTypes": "BAM",
                        "inputBinding": {
                            "position": 2,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "required": true
                    },
                    {
                        "type": [
                            "File"
                        ],
                        "id": "#input_bam1",
                        "sbg:fileTypes": "BAM",
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "required": true
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#RE_bed",
                        "sbg:fileTypes": "BED",
                        "inputBinding": {
                            "position": 3,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    }
                ],
                "sbg:createdOn": 1467989155,
                "temporaryFailCodes": [],
                "label": "hictool-bam2hdf5",
                "sbg:modifiedBy": "duplexa",
                "sbg:revision": 4,
                "sbg:project": "gaurav/4dn",
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
                "successCodes": [],
                "sbg:latestRevision": 4,
                "stdin": "",
                "arguments": [],
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:modifiedOn": 1467995167,
                "stdout": ""
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
            "sbg:x": 588.9231050931494,
            "sbg:y": 230.38462831423846
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
                "sbg:image_url": null,
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
                "id": "gaurav/4dn/bam2matrix2/7",
                "y": 228.6923403133314,
                "sbg:createdBy": "gaurav",
                "class": "CommandLineTool",
                "sbg:job": {
                    "inputs": {
                        "HiC_norm_binning_hdf5": {
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/HiC_norm_binning_hdf5.ext",
                            "size": 0
                        },
                        "fend_object_hdf5": {
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/fend_object_hdf5.ext",
                            "size": 0
                        },
                        "HiC_data_object_hdf5": {
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/HiC_data_object_hdf5.ext",
                            "size": 0
                        },
                        "chromosome": "chromosome",
                        "output_dir": "output_dir",
                        "contact_matrix_binsize": 0,
                        "chrlen_file": {
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/chrlen_file.ext",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 8000
                    }
                },
                "sbg:validationErrors": [],
                "description": "",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ]
                    }
                ],
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
                "sbg:sbgMaintained": false,
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "x": 1105.3846988706214,
                "cwlVersion": "sbg:draft-2",
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#output_dir",
                        "inputBinding": {
                            "position": 5,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine"
                            },
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "HDF5",
                        "id": "#fend_object_hdf5",
                        "required": false
                    },
                    {
                        "type": [
                            "int"
                        ],
                        "id": "#contact_matrix_binsize",
                        "sbg:includeInPorts": true,
                        "required": true,
                        "sbg:toolDefaultValue": "50000",
                        "inputBinding": {
                            "position": 3,
                            "separate": false,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "type": [
                            {
                                "type": "array",
                                "items": "string"
                            }
                        ],
                        "id": "#chromosome",
                        "inputBinding": {
                            "position": 2,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:includeInPorts": true,
                        "required": true
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#chrlen_file",
                        "inputBinding": {
                            "position": 4,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "required": false
                    },
                    {
                        "type": [
                            "File"
                        ],
                        "id": "#HiC_norm_binning_hdf5",
                        "sbg:fileTypes": "HDF5",
                        "inputBinding": {
                            "position": 1,
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "required": true
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "HDF5",
                        "id": "#HiC_data_object_hdf5",
                        "required": false
                    }
                ],
                "sbg:createdOn": 1464816740,
                "temporaryFailCodes": [],
                "label": "hictool-hdf52matrix",
                "sbg:modifiedBy": "duplexa",
                "sbg:revision": 7,
                "sbg:project": "gaurav/4dn",
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
                "successCodes": [],
                "sbg:latestRevision": 7,
                "stdin": "",
                "arguments": [],
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:modifiedOn": 1467995451,
                "stdout": ""
            },
            "sbg:y": 228.6923403133314
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:modifiedBy": "duplexa",
    "sbg:modifiedOn": 1473274706,
    "sbg:canvas_zoom": 0.6499999999999997
}