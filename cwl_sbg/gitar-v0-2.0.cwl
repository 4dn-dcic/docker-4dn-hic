{
    "sbg:canvas_x": 1,
    "sbg:id": "4dn-dcic/dev/gitar-v0-2/0",
    "label": "GITAR v0.2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/gitar-v0-2/0/raw/",
    "sbg:image_url": null,
    "sbg:copyOf": "gaurav/4dn/gitar-v0-2/6",
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "duplexa"
    ],
    "requirements": [],
    "description": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:revision": 0,
    "sbg:createdBy": "duplexa",
    "sbg:canvas_zoom": 0.6499999999999997,
    "cwlVersion": "sbg:draft-2",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:projectName": "Dev",
    "sbg:latestRevision": 0,
    "inputs": [
        {
            "sbg:y": 66,
            "type": [
                "File"
            ],
            "label": "input_fastq2",
            "sbg:x": 83,
            "id": "#input_fastq2",
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "sbg:y": 222.53847149702227,
            "type": [
                "File"
            ],
            "label": "input_fastq1",
            "sbg:x": 70.5384664352124,
            "id": "#input_fastq1",
            "sbg:fileTypes": "FASTQ, FQ"
        },
        {
            "sbg:y": 389.46159979718914,
            "type": [
                "null",
                "File"
            ],
            "label": "bowtie_index",
            "sbg:x": 89.53847718662128,
            "id": "#bowtie_index",
            "sbg:fileTypes": "TGZ"
        },
        {
            "sbg:y": 496.33335367838555,
            "type": [
                "null",
                "File"
            ],
            "label": "RE_bed",
            "sbg:x": 420.99998982747405,
            "id": "#RE_bed",
            "sbg:fileTypes": "BED"
        },
        {
            "sbg:x": 749.7779160072636,
            "sbg:y": -18.188064069204135,
            "type": [
                "null",
                "File"
            ],
            "id": "#chrlen_file",
            "label": "chrlen_file"
        },
        {
            "sbg:y": -6.153860611323651,
            "type": [
                "int"
            ],
            "sbg:includeInPorts": true,
            "label": "contact_matrix_binsize",
            "sbg:x": 995.3846145833035,
            "id": "#contact_matrix_binsize"
        },
        {
            "sbg:y": 75.38460620338324,
            "type": [
                {
                    "items": "string",
                    "type": "array"
                }
            ],
            "sbg:includeInPorts": true,
            "label": "chromosome",
            "sbg:x": 835.3847081280348,
            "id": "#chromosome"
        }
    ],
    "class": "Workflow",
    "sbg:modifiedOn": 1473274706,
    "sbg:canvas_y": 66,
    "hints": [],
    "sbg:createdOn": 1473274706,
    "sbg:modifiedBy": "duplexa",
    "outputs": [
        {
            "sbg:y": 328.1196788763388,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "sorted_bam_pe",
            "sbg:x": 391.6240561803214,
            "id": "#sorted_bam_pe",
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "required": false
        },
        {
            "sbg:y": 124.61539063086903,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "HiC_project_object_hdf5",
            "sbg:x": 717.1795962773863,
            "id": "#HiC_project_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "required": false
        },
        {
            "sbg:y": 500.3419382689756,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "HiC_distance_function_hdf5",
            "sbg:x": 939.2309175553464,
            "id": "#HiC_distance_function_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "required": false
        },
        {
            "sbg:y": 190.94018009381435,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "normalized_fend_contact_matrix",
            "sbg:x": 1489.2308385555568,
            "id": "#normalized_fend_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "required": false
        },
        {
            "sbg:y": 330.17099214681946,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "normalized_enrich_contact_matrix",
            "sbg:x": 1573.6754030664124,
            "id": "#normalized_enrich_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "required": false
        },
        {
            "sbg:y": 530.5983404200941,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "expected_enrich_contact_matrix",
            "sbg:x": 1345.2138202308008,
            "id": "#expected_enrich_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "required": false
        },
        {
            "sbg:y": -50.256409131563785,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "split_bam2",
            "sbg:x": 328.92306357163494,
            "id": "#split_bam2",
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "required": false
        },
        {
            "sbg:y": 59.384607461782,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "split_bam1",
            "sbg:x": 368.92312900836833,
            "id": "#split_bam1",
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "required": false
        },
        {
            "sbg:y": 21.538473569430273,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "fend_object_hdf5",
            "sbg:x": 666.1538890691907,
            "id": "#fend_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "required": false
        },
        {
            "sbg:y": 357.7436426095023,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "HiC_norm_binning_hdf5",
            "sbg:x": 984.1028403502372,
            "id": "#HiC_norm_binning_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "required": false
        },
        {
            "sbg:y": 558.9744715323862,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "HiC_data_object_hdf5",
            "sbg:x": 777.7437167478082,
            "id": "#HiC_data_object_hdf5",
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "required": false
        },
        {
            "sbg:y": 86.15384043744288,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "observed_contact_matrix",
            "sbg:x": 1323.0770296232263,
            "id": "#observed_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "required": false
        },
        {
            "sbg:y": 470.76925607828014,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "expected_fend_contact_matrix",
            "sbg:x": 1520.0001224540429,
            "id": "#expected_fend_contact_matrix",
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "required": false
        }
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1473274706,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of gaurav/4dn/gitar-v0-2/6",
            "sbg:revision": 0
        }
    ],
    "sbg:validationErrors": [],
    "steps": [
        {
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
            "run": {
                "sbg:id": "gaurav/4dn/fastq2bam/14",
                "temporaryFailCodes": [],
                "label": "hictool-fastq2bam",
                "stdin": "",
                "id": "gaurav/4dn/fastq2bam/14",
                "sbg:image_url": null,
                "cwlVersion": "sbg:draft-2",
                "sbg:sbgMaintained": false,
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "arguments": [],
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
                "successCodes": [],
                "baseCommand": [
                    "preprocessing.sh"
                ],
                "description": "",
                "sbg:project": "gaurav/4dn",
                "sbg:revision": 14,
                "sbg:latestRevision": 14,
                "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
                "y": 226,
                "sbg:modifiedOn": 1467992192,
                "sbg:job": {
                    "inputs": {
                        "bowtie_index": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/bowtie_index.ext"
                        },
                        "input_fastq1": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq1.fastq"
                        },
                        "input_fastq2": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq2.fastq"
                        },
                        "output_dir": "output_dir"
                    },
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    }
                },
                "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                "inputs": [
                    {
                        "sbg:toolDefaultValue": ".",
                        "id": "#output_dir",
                        "sbg:includeInPorts": false,
                        "inputBinding": {
                            "position": 4,
                            "separate": false,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'"
                            },
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "required": true,
                        "id": "#input_fastq2",
                        "sbg:fileTypes": "FASTQ, FQ",
                        "inputBinding": {
                            "separate": false,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "required": true,
                        "id": "#input_fastq1",
                        "sbg:fileTypes": "FASTQ, FQ",
                        "inputBinding": {
                            "separate": false,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "required": false,
                        "id": "#bowtie_index",
                        "sbg:fileTypes": "TGZ",
                        "inputBinding": {
                            "separate": false,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "class": "CommandLineTool",
                "stdout": "",
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
                "sbg:createdOn": 1464804268,
                "sbg:modifiedBy": "duplexa",
                "outputs": [
                    {
                        "id": "#split_bam2",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1464804268,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1464816082,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedOn": 1464816200,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedOn": 1464816230,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedOn": 1465323168,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedOn": 1465400656,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedOn": 1465844403,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6
                    },
                    {
                        "sbg:modifiedOn": 1467828936,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "r3.x4large",
                        "sbg:revision": 7
                    },
                    {
                        "sbg:modifiedOn": 1467829775,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker image v2.",
                        "sbg:revision": 8
                    },
                    {
                        "sbg:modifiedOn": 1467832142,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "removed outprefix from output files",
                        "sbg:revision": 9
                    },
                    {
                        "sbg:modifiedOn": 1467832711,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem.",
                        "sbg:revision": 10
                    },
                    {
                        "sbg:modifiedOn": 1467834125,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "bowtie_index redefined.",
                        "sbg:revision": 11
                    },
                    {
                        "sbg:modifiedOn": 1467838837,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "i2.xlarge",
                        "sbg:revision": 12
                    },
                    {
                        "sbg:modifiedOn": 1467989772,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-fastq2bam",
                        "sbg:revision": 13
                    },
                    {
                        "sbg:modifiedOn": 1467992192,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker version 3. A sort step skipped.",
                        "sbg:revision": 14
                    }
                ],
                "sbg:createdBy": "gaurav",
                "sbg:validationErrors": [],
                "x": 265
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
            "id": "#hictool_fastq2bam"
        },
        {
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
            "run": {
                "sbg:id": "gaurav/4dn/bam2hdf5/4",
                "temporaryFailCodes": [],
                "label": "hictool-bam2hdf5",
                "stdin": "",
                "id": "gaurav/4dn/bam2hdf5/4",
                "sbg:image_url": null,
                "cwlVersion": "sbg:draft-2",
                "sbg:sbgMaintained": false,
                "sbg:contributors": [
                    "duplexa"
                ],
                "arguments": [],
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
                "successCodes": [],
                "baseCommand": [
                    "run.sh"
                ],
                "description": "",
                "sbg:project": "gaurav/4dn",
                "sbg:revision": 4,
                "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
                "y": 230.38462831423846,
                "sbg:modifiedOn": 1467995167,
                "sbg:job": {
                    "inputs": {
                        "RE_bed": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/RE_bed.ext"
                        },
                        "input_bam1": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_bam1.bam"
                        },
                        "input_bam2": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_bam2.bam"
                        },
                        "output_dir": "output_dir"
                    },
                    "allocatedResources": {
                        "cpu": 4,
                        "mem": 24000
                    }
                },
                "sbg:latestRevision": 4,
                "inputs": [
                    {
                        "id": "#output_dir",
                        "inputBinding": {
                            "position": 4,
                            "separate": false,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'"
                            },
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "required": true,
                        "id": "#input_bam2",
                        "sbg:fileTypes": "BAM",
                        "inputBinding": {
                            "separate": false,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "required": true,
                        "id": "#input_bam1",
                        "sbg:fileTypes": "BAM",
                        "inputBinding": {
                            "separate": false,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "required": false,
                        "id": "#RE_bed",
                        "sbg:fileTypes": "BED",
                        "inputBinding": {
                            "separate": false,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "class": "CommandLineTool",
                "stdout": "",
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
                "sbg:createdOn": 1467989155,
                "sbg:modifiedBy": "duplexa",
                "outputs": [
                    {
                        "id": "#fend_object_hdf5",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1467989155,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1467989197,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedOn": 1467989438,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker bam2hdf5:v2",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedOn": 1467989798,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-bam2hdf5",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedOn": 1467995167,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4
                    }
                ],
                "sbg:createdBy": "duplexa",
                "sbg:validationErrors": [],
                "x": 588.9231050931494
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
            "id": "#hictool_bam2hdf5"
        },
        {
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
            "run": {
                "sbg:id": "gaurav/4dn/bam2matrix2/7",
                "temporaryFailCodes": [],
                "label": "hictool-hdf52matrix",
                "stdin": "",
                "id": "gaurav/4dn/bam2matrix2/7",
                "sbg:image_url": null,
                "cwlVersion": "sbg:draft-2",
                "sbg:sbgMaintained": false,
                "sbg:contributors": [
                    "duplexa",
                    "gaurav"
                ],
                "arguments": [],
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
                "successCodes": [],
                "baseCommand": [
                    "run.sh"
                ],
                "description": "",
                "sbg:project": "gaurav/4dn",
                "sbg:revision": 7,
                "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
                "y": 228.6923403133314,
                "sbg:modifiedOn": 1467995451,
                "sbg:job": {
                    "inputs": {
                        "contact_matrix_binsize": 0,
                        "HiC_data_object_hdf5": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/HiC_data_object_hdf5.ext"
                        },
                        "HiC_norm_binning_hdf5": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/HiC_norm_binning_hdf5.ext"
                        },
                        "fend_object_hdf5": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/fend_object_hdf5.ext"
                        },
                        "output_dir": "output_dir",
                        "chromosome": "chromosome",
                        "chrlen_file": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/chrlen_file.ext"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 8000
                    }
                },
                "sbg:latestRevision": 7,
                "inputs": [
                    {
                        "id": "#output_dir",
                        "required": false,
                        "inputBinding": {
                            "position": 5,
                            "separate": false,
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir || '.'"
                            },
                            "sbg:cmdInclude": true
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
                        "type": [
                            "int"
                        ],
                        "sbg:includeInPorts": true,
                        "sbg:toolDefaultValue": "50000",
                        "id": "#contact_matrix_binsize",
                        "inputBinding": {
                            "separate": false,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "required": true
                    },
                    {
                        "id": "#chromosome",
                        "required": true,
                        "sbg:includeInPorts": true,
                        "inputBinding": {
                            "separate": false,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "id": "#chrlen_file",
                        "required": false,
                        "inputBinding": {
                            "separate": false,
                            "position": 4,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "required": true,
                        "id": "#HiC_norm_binning_hdf5",
                        "sbg:fileTypes": "HDF5",
                        "inputBinding": {
                            "separate": false,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "File"
                        ]
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
                "class": "CommandLineTool",
                "stdout": "",
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
                "sbg:createdOn": 1464816740,
                "sbg:modifiedBy": "duplexa",
                "outputs": [
                    {
                        "id": "#observed_contact_matrix",
                        "outputBinding": {
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
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
                                "engine": "#cwl-js-engine",
                                "class": "Expression",
                                "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1464816740,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1464818050,
                        "sbg:modifiedBy": "gaurav",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedOn": 1467989666,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "docker hdf52matrix:v2",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedOn": 1467989698,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedOn": 1467989823,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "label changed to hictool-hdf52matrix",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedOn": 1467991994,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedOn": 1467992019,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6
                    },
                    {
                        "sbg:modifiedOn": 1467995451,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 7
                    }
                ],
                "sbg:createdBy": "gaurav",
                "sbg:validationErrors": [],
                "x": 1105.3846988706214
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
            "scatter": "#hictool_hdf52matrix.chromosome"
        }
    ]
}