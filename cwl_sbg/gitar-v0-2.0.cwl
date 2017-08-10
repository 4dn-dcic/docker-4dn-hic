{
    "outputs": [
        {
            "required": false,
            "id": "#sorted_bam_pe",
            "sbg:x": 391.6240561803214,
            "label": "sorted_bam_pe",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 328.1196788763388,
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ]
        },
        {
            "required": false,
            "id": "#HiC_project_object_hdf5",
            "sbg:x": 717.1795962773863,
            "label": "HiC_project_object_hdf5",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 124.61539063086903,
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ]
        },
        {
            "required": false,
            "id": "#HiC_distance_function_hdf5",
            "sbg:x": 939.2309175553464,
            "label": "HiC_distance_function_hdf5",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 500.3419382689756,
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ]
        },
        {
            "required": false,
            "id": "#normalized_fend_contact_matrix",
            "sbg:x": 1489.2308385555568,
            "label": "normalized_fend_contact_matrix",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 190.94018009381435,
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ]
        },
        {
            "required": false,
            "id": "#normalized_enrich_contact_matrix",
            "sbg:x": 1573.6754030664124,
            "label": "normalized_enrich_contact_matrix",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 330.17099214681946,
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ]
        },
        {
            "required": false,
            "id": "#expected_enrich_contact_matrix",
            "sbg:x": 1345.2138202308008,
            "label": "expected_enrich_contact_matrix",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 530.5983404200941,
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ]
        },
        {
            "required": false,
            "id": "#split_bam2",
            "sbg:x": 328.92306357163494,
            "label": "split_bam2",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": -50.256409131563785,
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ]
        },
        {
            "required": false,
            "id": "#split_bam1",
            "sbg:x": 368.92312900836833,
            "label": "split_bam1",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 59.384607461782,
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ]
        },
        {
            "required": false,
            "id": "#fend_object_hdf5",
            "sbg:x": 666.1538890691907,
            "label": "fend_object_hdf5",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 21.538473569430273,
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ]
        },
        {
            "required": false,
            "id": "#HiC_norm_binning_hdf5",
            "sbg:x": 984.1028403502372,
            "label": "HiC_norm_binning_hdf5",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 357.7436426095023,
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ]
        },
        {
            "required": false,
            "id": "#HiC_data_object_hdf5",
            "sbg:x": 777.7437167478082,
            "label": "HiC_data_object_hdf5",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 558.9744715323862,
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ]
        },
        {
            "required": false,
            "id": "#observed_contact_matrix",
            "sbg:x": 1323.0770296232263,
            "label": "observed_contact_matrix",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 86.15384043744288,
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ]
        },
        {
            "required": false,
            "id": "#expected_fend_contact_matrix",
            "sbg:x": 1520.0001224540429,
            "label": "expected_fend_contact_matrix",
            "sbg:includeInPorts": true,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 470.76925607828014,
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ]
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "sbg:x": 83,
            "label": "input_fastq2",
            "id": "#input_fastq2",
            "type": [
                "File"
            ],
            "sbg:y": 66
        },
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "sbg:x": 70.5384664352124,
            "label": "input_fastq1",
            "id": "#input_fastq1",
            "type": [
                "File"
            ],
            "sbg:y": 222.53847149702227
        },
        {
            "sbg:fileTypes": "TGZ",
            "sbg:x": 89.53847718662128,
            "label": "bowtie_index",
            "id": "#bowtie_index",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 389.46159979718914
        },
        {
            "sbg:fileTypes": "BED",
            "sbg:x": 420.99998982747405,
            "label": "RE_bed",
            "id": "#RE_bed",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 496.33335367838555
        },
        {
            "label": "chrlen_file",
            "id": "#chrlen_file",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": -18.188064069204135,
            "sbg:x": 749.7779160072636
        },
        {
            "id": "#contact_matrix_binsize",
            "sbg:x": 995.3846145833035,
            "label": "contact_matrix_binsize",
            "sbg:includeInPorts": true,
            "type": [
                "int"
            ],
            "sbg:y": -6.153860611323651
        },
        {
            "id": "#chromosome",
            "sbg:x": 835.3847081280348,
            "label": "chromosome",
            "sbg:includeInPorts": true,
            "type": [
                {
                    "type": "array",
                    "items": "string"
                }
            ],
            "sbg:y": 75.38460620338324
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:image_url": null,
    "sbg:canvas_y": 66,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:latestRevision": 0,
    "cwlVersion": "sbg:draft-2",
    "sbg:validationErrors": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1473274706,
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6"
        }
    ],
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "sbg:canvas_x": 1,
    "sbg:revision": 0,
    "description": "",
    "class": "Workflow",
    "sbg:sbgMaintained": false,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "sbg:createdOn": 1473274706,
    "sbg:modifiedBy": "duplexa",
    "sbg:createdBy": "duplexa",
    "hints": [],
    "label": "GITAR v0.2",
    "requirements": [],
    "sbg:appVersion": [
        "sbg:draft-2"
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
            "run": {
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/out_pair2.bam'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#split_bam2",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/out_pair1.bam'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#split_bam1",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#sorted_bam_pe",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "sbg:modifiedOn": 1467992192,
                "temporaryFailCodes": [],
                "arguments": [],
                "inputs": [
                    {
                        "sbg:toolDefaultValue": ".",
                        "sbg:includeInPorts": false,
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "valueFrom": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine"
                            },
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4
                        },
                        "id": "#output_dir"
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 3
                        },
                        "id": "#input_fastq2",
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "FASTQ, FQ"
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 2
                        },
                        "id": "#input_fastq1",
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "FASTQ, FQ"
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 1
                        },
                        "id": "#bowtie_index",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "TGZ"
                    }
                ],
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "sbg:project": "gaurav/4dn",
                "sbg:image_url": null,
                "sbg:modifiedBy": "duplexa",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "sbg:latestRevision": 14,
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464804268,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816082,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816200,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816230,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1465323168,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1465400656,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1465844403,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467828936,
                        "sbg:revisionNotes": "r3.x4large"
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467829775,
                        "sbg:revisionNotes": "docker image v2."
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467832142,
                        "sbg:revisionNotes": "removed outprefix from output files"
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467832711,
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem."
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467834125,
                        "sbg:revisionNotes": "bowtie_index redefined."
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467838837,
                        "sbg:revisionNotes": "i2.xlarge"
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989772,
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam"
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467992192,
                        "sbg:revisionNotes": "docker version 3. A sort step skipped."
                    }
                ],
                "successCodes": [],
                "sbg:job": {
                    "inputs": {
                        "bowtie_index": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/bowtie_index.ext"
                        },
                        "input_fastq1": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq1.fastq"
                        },
                        "output_dir": "output_dir",
                        "input_fastq2": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq2.fastq"
                        }
                    },
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    }
                },
                "sbg:revision": 14,
                "description": "",
                "class": "CommandLineTool",
                "sbg:sbgMaintained": false,
                "id": "gaurav/4dn/fastq2bam/14",
                "stdout": "",
                "sbg:createdOn": 1464804268,
                "y": 226,
                "x": 265,
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
                "label": "hictool-fastq2bam",
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
                "stdin": "",
                "sbg:revisionNotes": "docker version 3. A sort step skipped."
            },
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
            ],
            "id": "#hictool_fastq2bam",
            "sbg:y": 226
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
            "run": {
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#fend_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#HiC_project_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#HiC_norm_binning_hdf5",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#HiC_distance_function_hdf5",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#HiC_data_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "temporaryFailCodes": [],
                "arguments": [],
                "inputs": [
                    {
                        "inputBinding": {
                            "valueFrom": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine"
                            },
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4
                        },
                        "id": "#output_dir",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 2
                        },
                        "id": "#input_bam2",
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "BAM"
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 1
                        },
                        "id": "#input_bam1",
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "BAM"
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 3
                        },
                        "id": "#RE_bed",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "BED"
                    }
                ],
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "sbg:project": "gaurav/4dn",
                "sbg:image_url": null,
                "sbg:modifiedBy": "duplexa",
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:latestRevision": 4,
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989155,
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989197,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989438,
                        "sbg:revisionNotes": "docker bam2hdf5:v2"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989798,
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467995167,
                        "sbg:revisionNotes": null
                    }
                ],
                "successCodes": [],
                "sbg:job": {
                    "inputs": {
                        "input_bam1": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/input_bam1.bam"
                        },
                        "RE_bed": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/RE_bed.ext"
                        },
                        "input_bam2": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/input_bam2.bam"
                        },
                        "output_dir": "output_dir"
                    },
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    }
                },
                "sbg:revision": 4,
                "description": "",
                "class": "CommandLineTool",
                "sbg:sbgMaintained": false,
                "id": "gaurav/4dn/bam2hdf5/4",
                "stdout": "",
                "sbg:createdOn": 1467989155,
                "y": 230.38462831423846,
                "x": 588.9231050931494,
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
                "label": "hictool-bam2hdf5",
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
                "stdin": "",
                "sbg:modifiedOn": 1467995167
            },
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
            ],
            "id": "#hictool_bam2hdf5",
            "sbg:y": 230.38462831423846
        },
        {
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
            "run": {
                "outputs": [
                    {
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#observed_contact_matrix",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#normalized_fend_contact_matrix",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#normalized_enrich_contact_matrix",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#expected_fend_contact_matrix",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#expected_enrich_contact_matrix",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "temporaryFailCodes": [],
                "arguments": [],
                "inputs": [
                    {
                        "required": false,
                        "inputBinding": {
                            "valueFrom": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine"
                            },
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 5
                        },
                        "id": "#output_dir",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "required": false,
                        "id": "#fend_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "HDF5"
                    },
                    {
                        "required": true,
                        "sbg:toolDefaultValue": "50000",
                        "id": "#contact_matrix_binsize",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 3
                        },
                        "sbg:includeInPorts": true,
                        "type": [
                            "int"
                        ]
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 2
                        },
                        "sbg:includeInPorts": true,
                        "type": [
                            {
                                "type": "array",
                                "items": "string"
                            }
                        ],
                        "id": "#chromosome"
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4
                        },
                        "id": "#chrlen_file",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 1
                        },
                        "id": "#HiC_norm_binning_hdf5",
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "HDF5"
                    },
                    {
                        "required": false,
                        "id": "#HiC_data_object_hdf5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "HDF5"
                    }
                ],
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "sbg:project": "gaurav/4dn",
                "sbg:image_url": null,
                "sbg:modifiedBy": "duplexa",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "sbg:latestRevision": 7,
                "cwlVersion": "sbg:draft-2",
                "sbg:validationErrors": [],
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464816740,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:modifiedOn": 1464818050,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989666,
                        "sbg:revisionNotes": "docker hdf52matrix:v2"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989698,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467989823,
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix"
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467991994,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467992019,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1467995451,
                        "sbg:revisionNotes": null
                    }
                ],
                "successCodes": [],
                "sbg:job": {
                    "inputs": {
                        "HiC_data_object_hdf5": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/HiC_data_object_hdf5.ext"
                        },
                        "output_dir": "output_dir",
                        "HiC_norm_binning_hdf5": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/HiC_norm_binning_hdf5.ext"
                        },
                        "chrlen_file": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/chrlen_file.ext"
                        },
                        "fend_object_hdf5": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/fend_object_hdf5.ext"
                        },
                        "contact_matrix_binsize": 0,
                        "chromosome": "chromosome"
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    }
                },
                "sbg:revision": 7,
                "description": "",
                "class": "CommandLineTool",
                "sbg:sbgMaintained": false,
                "id": "gaurav/4dn/bam2matrix2/7",
                "stdout": "",
                "sbg:createdOn": 1464816740,
                "y": 228.6923403133314,
                "x": 1105.3846988706214,
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
                "label": "hictool-hdf52matrix",
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
                "stdin": "",
                "sbg:modifiedOn": 1467995451
            },
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
            ],
            "id": "#hictool_hdf52matrix",
            "sbg:y": 228.6923403133314
        }
    ],
    "sbg:canvas_zoom": 0.6499999999999997,
    "sbg:modifiedOn": 1473274706
}