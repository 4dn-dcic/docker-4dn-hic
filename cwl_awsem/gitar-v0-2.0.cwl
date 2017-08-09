{
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "label": "sorted_bam_pe",
            "required": false,
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ],
            "id": "#sorted_bam_pe"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "HiC_project_object_hdf5",
            "required": false,
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ],
            "id": "#HiC_project_object_hdf5"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "HiC_distance_function_hdf5",
            "required": false,
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ],
            "id": "#HiC_distance_function_hdf5"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "normalized_fend_contact_matrix",
            "required": false,
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ],
            "id": "#normalized_fend_contact_matrix"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "normalized_enrich_contact_matrix",
            "required": false,
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ],
            "id": "#normalized_enrich_contact_matrix"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "expected_enrich_contact_matrix",
            "required": false,
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ],
            "id": "#expected_enrich_contact_matrix"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "split_bam2",
            "required": false,
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ],
            "id": "#split_bam2"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "split_bam1",
            "required": false,
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ],
            "id": "#split_bam1"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "fend_object_hdf5",
            "required": false,
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ],
            "id": "#fend_object_hdf5"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "HiC_norm_binning_hdf5",
            "required": false,
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ],
            "id": "#HiC_norm_binning_hdf5"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "HiC_data_object_hdf5",
            "required": false,
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ],
            "id": "#HiC_data_object_hdf5"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "observed_contact_matrix",
            "required": false,
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ],
            "id": "#observed_contact_matrix"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "expected_fend_contact_matrix",
            "required": false,
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ],
            "id": "#expected_fend_contact_matrix"
        }
    ],
    "cwlVersion": "draft-3",
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
            "run": "fastq2bam.14.cwl"
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
            "run": "bam2hdf5.4.cwl"
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
            "run": "bam2matrix2.7.cwl"
        }
    ],
    "class": "Workflow",
    "inputs": [
        {
            "type": [
                "File"
            ],
            "label": "input_fastq2",
            "id": "#input_fastq2"
        },
        {
            "type": [
                "File"
            ],
            "label": "input_fastq1",
            "id": "#input_fastq1"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "bowtie_index",
            "id": "#bowtie_index"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "RE_bed",
            "id": "#RE_bed"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "chrlen_file",
            "id": "#chrlen_file"
        },
        {
            "type": [
                "int"
            ],
            "label": "contact_matrix_binsize",
            "id": "#contact_matrix_binsize"
        },
        {
            "type": [
                {
                    "type": "array",
                    "items": "string"
                }
            ],
            "label": "chromosome",
            "id": "#chromosome"
        }
    ],
    "requirements": []
}