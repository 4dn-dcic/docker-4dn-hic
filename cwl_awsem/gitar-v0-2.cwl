{
    "inputs": [
        {
            "type": [
                "File"
            ],
            "id": "#input_fastq2"
        },
        {
            "type": [
                "File"
            ],
            "id": "#input_fastq1"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#bowtie_index"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#RE_bed"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#chrlen_file"
        },
        {
            "type": [
                "int"
            ],
            "id": "#contact_matrix_binsize"
        },
        {
            "type": [
                {
                    "items": "string",
                    "type": "array"
                }
            ],
            "id": "#chromosome"
        }
    ],
    "class": "Workflow",
    "cwlVersion": "draft-3",
    "outputs": [
        {
            "source": "#hictool_fastq2bam.sorted_bam_pe",
            "type": [
                "null",
                "File"
            ],
            "id": "#sorted_bam_pe"
        },
        {
            "source": "#hictool_bam2hdf5.HiC_project_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_project_object_hdf5"
        },
        {
            "source": "#hictool_bam2hdf5.HiC_distance_function_hdf5",
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_distance_function_hdf5"
        },
        {
            "source": "#hictool_hdf52matrix.normalized_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_fend_contact_matrix"
        },
        {
            "source": "#hictool_hdf52matrix.normalized_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "id": "#normalized_enrich_contact_matrix"
        },
        {
            "source": "#hictool_hdf52matrix.expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_enrich_contact_matrix"
        },
        {
            "source": "#hictool_fastq2bam.split_bam2",
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam2"
        },
        {
            "source": "#hictool_fastq2bam.split_bam1",
            "type": [
                "null",
                "File"
            ],
            "id": "#split_bam1"
        },
        {
            "source": "#hictool_bam2hdf5.fend_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "id": "#fend_object_hdf5"
        },
        {
            "source": "#hictool_bam2hdf5.HiC_norm_binning_hdf5",
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_norm_binning_hdf5"
        },
        {
            "source": "#hictool_bam2hdf5.HiC_data_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "id": "#HiC_data_object_hdf5"
        },
        {
            "source": "#hictool_hdf52matrix.observed_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "id": "#observed_contact_matrix"
        },
        {
            "source": "#hictool_hdf52matrix.expected_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "id": "#expected_fend_contact_matrix"
        }
    ],
    "steps": [
        {
            "run": "fastq2bam.cwl",
            "inputs": [
                {
                    "id": "#hictool_fastq2bam.output_dir"
                },
                {
                    "source": "#input_fastq2",
                    "id": "#hictool_fastq2bam.input_fastq2"
                },
                {
                    "source": "#input_fastq1",
                    "id": "#hictool_fastq2bam.input_fastq1"
                },
                {
                    "source": "#bowtie_index",
                    "id": "#hictool_fastq2bam.bowtie_index"
                }
            ],
            "id": "#hictool_fastq2bam",
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
            "run": "bam2hdf5.cwl",
            "inputs": [
                {
                    "id": "#hictool_bam2hdf5.output_dir"
                },
                {
                    "source": "#hictool_fastq2bam.split_bam2",
                    "id": "#hictool_bam2hdf5.input_bam2"
                },
                {
                    "source": "#hictool_fastq2bam.split_bam1",
                    "id": "#hictool_bam2hdf5.input_bam1"
                },
                {
                    "source": "#RE_bed",
                    "id": "#hictool_bam2hdf5.RE_bed"
                }
            ],
            "id": "#hictool_bam2hdf5",
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
            "inputs": [
                {
                    "id": "#hictool_hdf52matrix.output_dir"
                },
                {
                    "source": "#hictool_bam2hdf5.fend_object_hdf5",
                    "id": "#hictool_hdf52matrix.fend_object_hdf5"
                },
                {
                    "source": "#contact_matrix_binsize",
                    "id": "#hictool_hdf52matrix.contact_matrix_binsize"
                },
                {
                    "source": "#chromosome",
                    "id": "#hictool_hdf52matrix.chromosome"
                },
                {
                    "source": "#chrlen_file",
                    "id": "#hictool_hdf52matrix.chrlen_file"
                },
                {
                    "source": "#hictool_bam2hdf5.HiC_norm_binning_hdf5",
                    "id": "#hictool_hdf52matrix.HiC_norm_binning_hdf5"
                },
                {
                    "source": "#hictool_bam2hdf5.HiC_data_object_hdf5",
                    "id": "#hictool_hdf52matrix.HiC_data_object_hdf5"
                }
            ],
            "scatter": "#hictool_hdf52matrix.chromosome",
            "run": "bam2matrix2.cwl",
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
            ]
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ]
}
