{
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1473274706,
    "hints": [],
    "requirements": [],
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "type": [
                "File"
            ],
            "sbg:x": 83,
            "id": "#input_fastq2",
            "label": "input_fastq2",
            "sbg:y": 66
        },
        {
            "sbg:fileTypes": "FASTQ, FQ",
            "type": [
                "File"
            ],
            "sbg:x": 70.5384664352124,
            "id": "#input_fastq1",
            "label": "input_fastq1",
            "sbg:y": 222.53847149702227
        },
        {
            "sbg:fileTypes": "TGZ",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 89.53847718662128,
            "id": "#bowtie_index",
            "label": "bowtie_index",
            "sbg:y": 389.46159979718914
        },
        {
            "sbg:fileTypes": "BED",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 420.99998982747405,
            "id": "#RE_bed",
            "label": "RE_bed",
            "sbg:y": 496.33335367838555
        },
        {
            "id": "#chrlen_file",
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 749.7779160072636,
            "label": "chrlen_file",
            "sbg:y": -18.188064069204135
        },
        {
            "type": [
                "int"
            ],
            "sbg:x": 995.3846145833035,
            "id": "#contact_matrix_binsize",
            "sbg:includeInPorts": true,
            "label": "contact_matrix_binsize",
            "sbg:y": -6.153860611323651
        },
        {
            "type": [
                {
                    "type": "array",
                    "items": "string"
                }
            ],
            "sbg:x": 835.3847081280348,
            "id": "#chromosome",
            "sbg:includeInPorts": true,
            "label": "chromosome",
            "sbg:y": 75.38460620338324
        }
    ],
    "sbg:createdBy": "duplexa",
    "class": "Workflow",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1473274706
        }
    ],
    "sbg:image_url": null,
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "sbg:latestRevision": 0,
    "sbg:canvas_y": 66,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "sbg:sbgMaintained": false,
    "description": "",
    "sbg:modifiedBy": "duplexa",
    "steps": [
        {
            "sbg:x": 265,
            "id": "#hictool_fastq2bam",
            "run": {
                "sbg:modifiedOn": 1467992192,
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "hints": [
                    {
                        "value": 24000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "dockerPull": "duplexa/hictool-fastq2bam:v3",
                        "dockerImageId": "",
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
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#output_dir",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'"
                            }
                        },
                        "sbg:includeInPorts": false,
                        "sbg:toolDefaultValue": "."
                    },
                    {
                        "sbg:fileTypes": "FASTQ, FQ",
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "id": "#input_fastq2",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 3
                        }
                    },
                    {
                        "sbg:fileTypes": "FASTQ, FQ",
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "id": "#input_fastq1",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 2
                        }
                    },
                    {
                        "sbg:fileTypes": "TGZ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#bowtie_index",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 1
                        }
                    }
                ],
                "sbg:createdBy": "gaurav",
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "stdin": "",
                "class": "CommandLineTool",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1464804268
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1464816082
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1464816200
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1464816230
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1465323168
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1465400656
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1465844403
                    },
                    {
                        "sbg:revisionNotes": "r3.x4large",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1467828936
                    },
                    {
                        "sbg:revisionNotes": "docker image v2.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1467829775
                    },
                    {
                        "sbg:revisionNotes": "removed outprefix from output files",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1467832142
                    },
                    {
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1467832711
                    },
                    {
                        "sbg:revisionNotes": "bowtie_index redefined.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1467834125
                    },
                    {
                        "sbg:revisionNotes": "i2.xlarge",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1467838837
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1467989772
                    },
                    {
                        "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1467992192
                    }
                ],
                "sbg:image_url": null,
                "sbg:createdOn": 1464804268,
                "stdout": "",
                "y": 226,
                "sbg:validationErrors": [],
                "sbg:latestRevision": 14,
                "arguments": [],
                "successCodes": [],
                "id": "gaurav/4dn/fastq2bam/14",
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "sbg:sbgMaintained": false,
                "description": "",
                "sbg:modifiedBy": "duplexa",
                "temporaryFailCodes": [],
                "x": 265,
                "sbg:job": {
                    "inputs": {
                        "output_dir": "output_dir",
                        "input_fastq2": {
                            "size": 0,
                            "path": "/path/to/input_fastq2.fastq",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "input_fastq1": {
                            "size": 0,
                            "path": "/path/to/input_fastq1.fastq",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "bowtie_index": {
                            "size": 0,
                            "path": "/path/to/bowtie_index.ext",
                            "class": "File",
                            "secondaryFiles": []
                        }
                    },
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    }
                },
                "label": "hictool-fastq2bam",
                "sbg:project": "gaurav/4dn",
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/out_pair2.bam'"
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/out_pair1.bam'"
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'"
                            }
                        },
                        "id": "#sorted_bam_pe"
                    }
                ],
                "sbg:revision": 14
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
            "sbg:y": 226
        },
        {
            "sbg:x": 588.9231050931494,
            "id": "#hictool_bam2hdf5",
            "run": {
                "sbg:modifiedOn": 1467995167,
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
                        "dockerPull": "duplexa/hictool-bam2hdf5:v2",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'"
                            }
                        },
                        "id": "#output_dir"
                    },
                    {
                        "sbg:fileTypes": "BAM",
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "id": "#input_bam2",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 2
                        }
                    },
                    {
                        "sbg:fileTypes": "BAM",
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "id": "#input_bam1",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 1
                        }
                    },
                    {
                        "sbg:fileTypes": "BED",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#RE_bed",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 3
                        }
                    }
                ],
                "sbg:createdBy": "duplexa",
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "stdin": "",
                "class": "CommandLineTool",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1467989155
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1467989197
                    },
                    {
                        "sbg:revisionNotes": "docker bam2hdf5:v2",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1467989438
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1467989798
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1467995167
                    }
                ],
                "sbg:image_url": null,
                "sbg:createdOn": 1467989155,
                "stdout": "",
                "y": 230.38462831423846,
                "sbg:validationErrors": [],
                "sbg:latestRevision": 4,
                "arguments": [],
                "successCodes": [],
                "id": "gaurav/4dn/bam2hdf5/4",
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:sbgMaintained": false,
                "description": "",
                "sbg:modifiedBy": "duplexa",
                "temporaryFailCodes": [],
                "x": 588.9231050931494,
                "sbg:job": {
                    "inputs": {
                        "RE_bed": {
                            "size": 0,
                            "path": "/path/to/RE_bed.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "output_dir": "output_dir",
                        "input_bam2": {
                            "size": 0,
                            "path": "/path/to/input_bam2.bam",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "input_bam1": {
                            "size": 0,
                            "path": "/path/to/input_bam1.bam",
                            "class": "File",
                            "secondaryFiles": []
                        }
                    },
                    "allocatedResources": {
                        "mem": 24000,
                        "cpu": 4
                    }
                },
                "label": "hictool-bam2hdf5",
                "sbg:project": "gaurav/4dn",
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "duplexa"
                ],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/fend_object.hdf5'"
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' "
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'"
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'"
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'"
                            }
                        },
                        "id": "#HiC_data_object_hdf5"
                    }
                ],
                "sbg:revision": 4
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
            "sbg:y": 230.38462831423846
        },
        {
            "scatter": "#hictool_hdf52matrix.chromosome",
            "sbg:x": 1105.3846988706214,
            "id": "#hictool_hdf52matrix",
            "run": {
                "sbg:modifiedOn": 1467995451,
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
                        "dockerPull": "duplexa/hictool-hdf52matrix:v2",
                        "dockerImageId": "",
                        "class": "DockerRequirement"
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
                "inputs": [
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "required": false,
                        "id": "#output_dir",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 5,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'"
                            }
                        }
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
                        "required": true,
                        "sbg:includeInPorts": true,
                        "sbg:toolDefaultValue": "50000",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 3
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
                        "required": true,
                        "sbg:includeInPorts": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 2
                        }
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "id": "#chrlen_file",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4
                        }
                    },
                    {
                        "sbg:fileTypes": "HDF5",
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "id": "#HiC_norm_binning_hdf5",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 1
                        }
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
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "stdin": "",
                "class": "CommandLineTool",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1464816740
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1464818050
                    },
                    {
                        "sbg:revisionNotes": "docker hdf52matrix:v2",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1467989666
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1467989698
                    },
                    {
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1467989823
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1467991994
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1467992019
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1467995451
                    }
                ],
                "sbg:image_url": null,
                "sbg:createdOn": 1464816740,
                "stdout": "",
                "y": 228.6923403133314,
                "sbg:validationErrors": [],
                "sbg:latestRevision": 7,
                "arguments": [],
                "successCodes": [],
                "id": "gaurav/4dn/bam2matrix2/7",
                "baseCommand": [
                    "run.sh"
                ],
                "sbg:sbgMaintained": false,
                "description": "",
                "sbg:modifiedBy": "duplexa",
                "temporaryFailCodes": [],
                "x": 1105.3846988706214,
                "sbg:job": {
                    "inputs": {
                        "HiC_data_object_hdf5": {
                            "size": 0,
                            "path": "/path/to/HiC_data_object_hdf5.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "chromosome": "chromosome",
                        "HiC_norm_binning_hdf5": {
                            "size": 0,
                            "path": "/path/to/HiC_norm_binning_hdf5.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "fend_object_hdf5": {
                            "size": 0,
                            "path": "/path/to/fend_object_hdf5.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "output_dir": "output_dir",
                        "chrlen_file": {
                            "size": 0,
                            "path": "/path/to/chrlen_file.ext",
                            "class": "File",
                            "secondaryFiles": []
                        },
                        "contact_matrix_binsize": 0
                    },
                    "allocatedResources": {
                        "mem": 8000,
                        "cpu": 8
                    }
                },
                "label": "hictool-hdf52matrix",
                "sbg:project": "gaurav/4dn",
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' "
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' "
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' "
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' "
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'"
                            }
                        },
                        "id": "#expected_enrich_contact_matrix"
                    }
                ],
                "sbg:revision": 7
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
            "sbg:y": 228.6923403133314
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:createdOn": 1473274706,
    "sbg:validationErrors": [],
    "label": "GITAR v0.2",
    "sbg:canvas_zoom": 0.6499999999999997,
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
            "id": "#sorted_bam_pe",
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 391.6240561803214,
            "required": false,
            "sbg:includeInPorts": true,
            "label": "sorted_bam_pe",
            "sbg:y": 328.1196788763388
        },
        {
            "id": "#HiC_project_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 717.1795962773863,
            "required": false,
            "sbg:includeInPorts": true,
            "label": "HiC_project_object_hdf5",
            "sbg:y": 124.61539063086903
        },
        {
            "id": "#HiC_distance_function_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 939.2309175553464,
            "required": false,
            "sbg:includeInPorts": true,
            "label": "HiC_distance_function_hdf5",
            "sbg:y": 500.3419382689756
        },
        {
            "id": "#normalized_fend_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 1489.2308385555568,
            "required": false,
            "sbg:includeInPorts": true,
            "label": "normalized_fend_contact_matrix",
            "sbg:y": 190.94018009381435
        },
        {
            "id": "#normalized_enrich_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 1573.6754030664124,
            "required": false,
            "sbg:includeInPorts": true,
            "label": "normalized_enrich_contact_matrix",
            "sbg:y": 330.17099214681946
        },
        {
            "id": "#expected_enrich_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 1345.2138202308008,
            "required": false,
            "sbg:includeInPorts": true,
            "label": "expected_enrich_contact_matrix",
            "sbg:y": 530.5983404200941
        },
        {
            "id": "#split_bam2",
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 328.92306357163494,
            "required": false,
            "sbg:includeInPorts": true,
            "label": "split_bam2",
            "sbg:y": -50.256409131563785
        },
        {
            "id": "#split_bam1",
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 368.92312900836833,
            "required": false,
            "sbg:includeInPorts": true,
            "label": "split_bam1",
            "sbg:y": 59.384607461782
        },
        {
            "id": "#fend_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 666.1538890691907,
            "required": false,
            "sbg:includeInPorts": true,
            "label": "fend_object_hdf5",
            "sbg:y": 21.538473569430273
        },
        {
            "id": "#HiC_norm_binning_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 984.1028403502372,
            "required": false,
            "sbg:includeInPorts": true,
            "label": "HiC_norm_binning_hdf5",
            "sbg:y": 357.7436426095023
        },
        {
            "id": "#HiC_data_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 777.7437167478082,
            "required": false,
            "sbg:includeInPorts": true,
            "label": "HiC_data_object_hdf5",
            "sbg:y": 558.9744715323862
        },
        {
            "id": "#observed_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 1323.0770296232263,
            "required": false,
            "sbg:includeInPorts": true,
            "label": "observed_contact_matrix",
            "sbg:y": 86.15384043744288
        },
        {
            "id": "#expected_fend_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "type": [
                "null",
                "File"
            ],
            "sbg:x": 1520.0001224540429,
            "required": false,
            "sbg:includeInPorts": true,
            "label": "expected_fend_contact_matrix",
            "sbg:y": 470.76925607828014
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:canvas_x": 1,
    "sbg:revision": 0,
    "sbg:project": "4dn-dcic/dev"
}