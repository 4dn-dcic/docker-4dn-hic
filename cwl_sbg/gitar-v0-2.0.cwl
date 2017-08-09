{
    "outputs": [
        {
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 391.6240561803214,
            "label": "sorted_bam_pe",
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "sbg:y": 328.1196788763388,
            "sbg:includeInPorts": true,
            "id": "#sorted_bam_pe"
        },
        {
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 717.1795962773863,
            "label": "HiC_project_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "sbg:y": 124.61539063086903,
            "sbg:includeInPorts": true,
            "id": "#HiC_project_object_hdf5"
        },
        {
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 939.2309175553464,
            "label": "HiC_distance_function_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "sbg:y": 500.3419382689756,
            "sbg:includeInPorts": true,
            "id": "#HiC_distance_function_hdf5"
        },
        {
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 1489.2308385555568,
            "label": "normalized_fend_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "sbg:y": 190.94018009381435,
            "sbg:includeInPorts": true,
            "id": "#normalized_fend_contact_matrix"
        },
        {
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 1573.6754030664124,
            "label": "normalized_enrich_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "sbg:y": 330.17099214681946,
            "sbg:includeInPorts": true,
            "id": "#normalized_enrich_contact_matrix"
        },
        {
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 1345.2138202308008,
            "label": "expected_enrich_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "sbg:y": 530.5983404200941,
            "sbg:includeInPorts": true,
            "id": "#expected_enrich_contact_matrix"
        },
        {
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 328.92306357163494,
            "label": "split_bam2",
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "sbg:y": -50.256409131563785,
            "sbg:includeInPorts": true,
            "id": "#split_bam2"
        },
        {
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 368.92312900836833,
            "label": "split_bam1",
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "sbg:y": 59.384607461782,
            "sbg:includeInPorts": true,
            "id": "#split_bam1"
        },
        {
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 666.1538890691907,
            "label": "fend_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "sbg:y": 21.538473569430273,
            "sbg:includeInPorts": true,
            "id": "#fend_object_hdf5"
        },
        {
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 984.1028403502372,
            "label": "HiC_norm_binning_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "sbg:y": 357.7436426095023,
            "sbg:includeInPorts": true,
            "id": "#HiC_norm_binning_hdf5"
        },
        {
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 777.7437167478082,
            "label": "HiC_data_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "sbg:y": 558.9744715323862,
            "sbg:includeInPorts": true,
            "id": "#HiC_data_object_hdf5"
        },
        {
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 1323.0770296232263,
            "label": "observed_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "sbg:y": 86.15384043744288,
            "sbg:includeInPorts": true,
            "id": "#observed_contact_matrix"
        },
        {
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 1520.0001224540429,
            "label": "expected_fend_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "sbg:y": 470.76925607828014,
            "sbg:includeInPorts": true,
            "id": "#expected_fend_contact_matrix"
        }
    ],
    "sbg:modifiedOn": 1473274706,
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "type": [
                "File"
            ],
            "sbg:x": 83,
            "label": "input_fastq2",
            "sbg:y": 66,
            "id": "#input_fastq2"
        },
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "type": [
                "File"
            ],
            "sbg:x": 70.5384664352124,
            "label": "input_fastq1",
            "sbg:y": 222.53847149702227,
            "id": "#input_fastq1"
        },
        {
            "sbg:fileTypes": "TGZ",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 89.53847718662128,
            "label": "bowtie_index",
            "sbg:y": 389.46159979718914,
            "id": "#bowtie_index"
        },
        {
            "sbg:fileTypes": "BED",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 420.99998982747405,
            "label": "RE_bed",
            "sbg:y": 496.33335367838555,
            "id": "#RE_bed"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 749.7779160072636,
            "label": "chrlen_file",
            "sbg:y": -18.188064069204135,
            "id": "#chrlen_file"
        },
        {
            "type": [
                "int"
            ],
            "sbg:x": 995.3846145833035,
            "label": "contact_matrix_binsize",
            "sbg:y": -6.153860611323651,
            "sbg:includeInPorts": true,
            "id": "#contact_matrix_binsize"
        },
        {
            "type": [
                {
                    "items": "string",
                    "type": "array"
                }
            ],
            "sbg:x": 835.3847081280348,
            "label": "chromosome",
            "sbg:y": 75.38460620338324,
            "sbg:includeInPorts": true,
            "id": "#chromosome"
        }
    ],
    "sbg:createdOn": 1473274706,
    "sbg:modifiedBy": "duplexa",
    "sbg:image_url": null,
    "label": "GITAR v0.2",
    "cwlVersion": "sbg:draft-2",
    "sbg:contributors": [
        "duplexa"
    ],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:sbgMaintained": false,
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
            "sbg:x": 265,
            "run": {
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/out_pair2.bam'",
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/out_pair1.bam'",
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#sorted_bam_pe"
                    }
                ],
                "hints": [
                    {
                        "class": "sbg:MemRequirement",
                        "value": 24000
                    },
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "",
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
                "stdout": "",
                "arguments": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1464804268,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1464816082,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1464816200,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1464816230,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1465323168,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1465400656,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1465844403,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467828936,
                        "sbg:revisionNotes": "r3.x4large",
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467829775,
                        "sbg:revisionNotes": "docker image v2.",
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467832142,
                        "sbg:revisionNotes": "removed outprefix from output files",
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467832711,
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem.",
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467834125,
                        "sbg:revisionNotes": "bowtie_index redefined.",
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467838837,
                        "sbg:revisionNotes": "i2.xlarge",
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989772,
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam",
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467992192,
                        "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                        "sbg:revision": 14,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine"
                            },
                            "separate": false
                        },
                        "sbg:toolDefaultValue": ".",
                        "sbg:includeInPorts": false,
                        "id": "#output_dir"
                    },
                    {
                        "required": true,
                        "sbg:fileTypes": "FASTQ, FQ",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": false
                        },
                        "id": "#input_fastq2"
                    },
                    {
                        "required": true,
                        "sbg:fileTypes": "FASTQ, FQ",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": false
                        },
                        "id": "#input_fastq1"
                    },
                    {
                        "required": false,
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
                        "id": "#bowtie_index"
                    }
                ],
                "sbg:createdOn": 1464804268,
                "x": 265,
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                "sbg:image_url": null,
                "baseCommand": [
                    "preprocessing.sh"
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
                "sbg:latestRevision": 14,
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "sbg:modifiedBy": "duplexa",
                "sbg:sbgMaintained": false,
                "class": "CommandLineTool",
                "sbg:validationErrors": [],
                "sbg:modifiedOn": 1467992192,
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "y": 226,
                "stdin": "",
                "id": "gaurav/4dn/fastq2bam/14",
                "successCodes": [],
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    },
                    "inputs": {
                        "input_fastq1": {
                            "class": "File",
                            "path": "/path/to/input_fastq1.fastq",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "output_dir": "output_dir",
                        "bowtie_index": {
                            "class": "File",
                            "path": "/path/to/bowtie_index.ext",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "input_fastq2": {
                            "class": "File",
                            "path": "/path/to/input_fastq2.fastq",
                            "secondaryFiles": [],
                            "size": 0
                        }
                    }
                },
                "sbg:createdBy": "gaurav",
                "temporaryFailCodes": [],
                "sbg:project": "gaurav/4dn",
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "sbg:revision": 14,
                "description": ""
            },
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
            "sbg:y": 226,
            "id": "#hictool_fastq2bam"
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
            "sbg:x": 588.9231050931494,
            "run": {
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#HiC_data_object_hdf5"
                    }
                ],
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/hictool-bam2hdf5:v2"
                    }
                ],
                "stdout": "",
                "arguments": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1467989155,
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3",
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989197,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989438,
                        "sbg:revisionNotes": "docker bam2hdf5:v2",
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989798,
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5",
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467995167,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine"
                            },
                            "separate": false
                        },
                        "id": "#output_dir"
                    },
                    {
                        "required": true,
                        "sbg:fileTypes": "BAM",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": false
                        },
                        "id": "#input_bam2"
                    },
                    {
                        "required": true,
                        "sbg:fileTypes": "BAM",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": false
                        },
                        "id": "#input_bam1"
                    },
                    {
                        "required": false,
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
                        "id": "#RE_bed"
                    }
                ],
                "sbg:createdOn": 1467989155,
                "x": 588.9231050931494,
                "sbg:modifiedBy": "duplexa",
                "sbg:image_url": null,
                "baseCommand": [
                    "run.sh"
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
                "sbg:latestRevision": 4,
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "duplexa"
                ],
                "sbg:sbgMaintained": false,
                "class": "CommandLineTool",
                "sbg:validationErrors": [],
                "sbg:modifiedOn": 1467995167,
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "y": 230.38462831423846,
                "stdin": "",
                "id": "gaurav/4dn/bam2hdf5/4",
                "successCodes": [],
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    },
                    "inputs": {
                        "input_bam1": {
                            "class": "File",
                            "path": "/path/to/input_bam1.bam",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "output_dir": "output_dir",
                        "input_bam2": {
                            "class": "File",
                            "path": "/path/to/input_bam2.bam",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "RE_bed": {
                            "class": "File",
                            "path": "/path/to/RE_bed.ext",
                            "secondaryFiles": [],
                            "size": 0
                        }
                    }
                },
                "sbg:createdBy": "duplexa",
                "temporaryFailCodes": [],
                "sbg:project": "gaurav/4dn",
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "sbg:revision": 4,
                "description": ""
            },
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
            "sbg:y": 230.38462831423846,
            "id": "#hictool_bam2hdf5"
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
            "sbg:x": 1105.3846988706214,
            "scatter": "#hictool_hdf52matrix.chromosome",
            "run": {
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
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
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "id": "#expected_enrich_contact_matrix"
                    }
                ],
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
                        "dockerImageId": "",
                        "dockerPull": "duplexa/hictool-hdf52matrix:v2"
                    }
                ],
                "stdout": "",
                "arguments": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1464816740,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1464818050,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "gaurav"
                    },
                    {
                        "sbg:modifiedOn": 1467989666,
                        "sbg:revisionNotes": "docker hdf52matrix:v2",
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989698,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467989823,
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix",
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467991994,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467992019,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1467995451,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "duplexa"
                    }
                ],
                "inputs": [
                    {
                        "required": false,
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 5,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'",
                                "engine": "#cwl-js-engine"
                            },
                            "separate": false
                        },
                        "id": "#output_dir"
                    },
                    {
                        "required": false,
                        "sbg:fileTypes": "HDF5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#fend_object_hdf5"
                    },
                    {
                        "required": true,
                        "type": [
                            "int"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": false
                        },
                        "sbg:toolDefaultValue": "50000",
                        "sbg:includeInPorts": true,
                        "id": "#contact_matrix_binsize"
                    },
                    {
                        "required": true,
                        "type": [
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": false
                        },
                        "sbg:includeInPorts": true,
                        "id": "#chromosome"
                    },
                    {
                        "required": false,
                        "type": [
                            "null",
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 4,
                            "separate": false
                        },
                        "id": "#chrlen_file"
                    },
                    {
                        "required": true,
                        "sbg:fileTypes": "HDF5",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": false
                        },
                        "id": "#HiC_norm_binning_hdf5"
                    },
                    {
                        "required": false,
                        "sbg:fileTypes": "HDF5",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#HiC_data_object_hdf5"
                    }
                ],
                "sbg:createdOn": 1464816740,
                "x": 1105.3846988706214,
                "sbg:modifiedBy": "duplexa",
                "sbg:image_url": null,
                "baseCommand": [
                    "run.sh"
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
                "sbg:latestRevision": 7,
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "sbg:sbgMaintained": false,
                "class": "CommandLineTool",
                "sbg:validationErrors": [],
                "sbg:modifiedOn": 1467995451,
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "y": 228.6923403133314,
                "stdin": "",
                "id": "gaurav/4dn/bam2matrix2/7",
                "successCodes": [],
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    },
                    "inputs": {
                        "fend_object_hdf5": {
                            "class": "File",
                            "path": "/path/to/fend_object_hdf5.ext",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "chrlen_file": {
                            "class": "File",
                            "path": "/path/to/chrlen_file.ext",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "output_dir": "output_dir",
                        "HiC_norm_binning_hdf5": {
                            "class": "File",
                            "path": "/path/to/HiC_norm_binning_hdf5.ext",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "HiC_data_object_hdf5": {
                            "class": "File",
                            "path": "/path/to/HiC_data_object_hdf5.ext",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "chromosome": "chromosome",
                        "contact_matrix_binsize": 0
                    }
                },
                "sbg:createdBy": "gaurav",
                "temporaryFailCodes": [],
                "sbg:project": "gaurav/4dn",
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "sbg:revision": 7,
                "description": ""
            },
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
            "sbg:y": 228.6923403133314,
            "id": "#hictool_hdf52matrix"
        }
    ],
    "class": "Workflow",
    "sbg:canvas_y": 66,
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "hints": [],
    "requirements": [],
    "sbg:projectName": "Dev",
    "sbg:validationErrors": [],
    "sbg:canvas_zoom": 0.6499999999999997,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274706,
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "sbg:canvas_x": 1,
    "sbg:project": "4dn-dcic/dev",
    "sbg:latestRevision": 0,
    "sbg:revision": 0,
    "description": ""
}