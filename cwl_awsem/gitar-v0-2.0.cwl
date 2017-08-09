{
    "inputs": [
        {
            "id": "#input_fastq2",
            "label": "input_fastq2",
            "type": [
                "File"
            ]
        },
        {
            "id": "#input_fastq1",
            "label": "input_fastq1",
            "type": [
                "File"
            ]
        },
        {
            "id": "#bowtie_index",
            "label": "bowtie_index",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#RE_bed",
            "label": "RE_bed",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#chrlen_file",
            "label": "chrlen_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#contact_matrix_binsize",
            "label": "contact_matrix_binsize",
            "type": [
                "int"
            ]
        },
        {
            "id": "#chromosome",
            "label": "chromosome",
            "type": [
                {
                    "items": "string",
                    "type": "array"
                }
            ]
        }
    ],
    "cwlVersion": "draft3",
    "requirements": [],
    "outputs": [
        {
            "required": false,
            "id": "#sorted_bam_pe",
            "label": "sorted_bam_pe",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ]
        },
        {
            "required": false,
            "id": "#HiC_project_object_hdf5",
            "label": "HiC_project_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ]
        },
        {
            "required": false,
            "id": "#HiC_distance_function_hdf5",
            "label": "HiC_distance_function_hdf5",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ]
        },
        {
            "required": false,
            "id": "#normalized_fend_contact_matrix",
            "label": "normalized_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ]
        },
        {
            "required": false,
            "id": "#normalized_enrich_contact_matrix",
            "label": "normalized_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ]
        },
        {
            "required": false,
            "id": "#expected_enrich_contact_matrix",
            "label": "expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ]
        },
        {
            "required": false,
            "id": "#split_bam2",
            "label": "split_bam2",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ]
        },
        {
            "required": false,
            "id": "#split_bam1",
            "label": "split_bam1",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ]
        },
        {
            "required": false,
            "id": "#fend_object_hdf5",
            "label": "fend_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ]
        },
        {
            "required": false,
            "id": "#HiC_norm_binning_hdf5",
            "label": "HiC_norm_binning_hdf5",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ]
        },
        {
            "required": false,
            "id": "#HiC_data_object_hdf5",
            "label": "HiC_data_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ]
        },
        {
            "required": false,
            "id": "#observed_contact_matrix",
            "label": "observed_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ]
        },
        {
            "required": false,
            "id": "#expected_fend_contact_matrix",
            "label": "expected_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ]
        }
    ],
    "class": "Workflow"
}