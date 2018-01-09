{
    "fdn_meta": {
        "data_types": [ "Hi-C" ],
        "category": "filter",
        "workflow_type": "Hi-C data processing",
        "description": "Hi-C data processing pipeline"
    },
    "outputs": [
        {
            "id": "#merged_annotated_bam",
            "type": [
                "File"
            ],
            "source": "#pairsam-filter.lossless_bamfile",
            "fdn_format": "bam",
            "fdn_output_type": "processed"
        },
        {
            "id": "#out_pairs",
            "type": [
                "File"
            ],
            "source": "#addfragtopairs.out_pairs",
            "fdn_format": "pairs",
            "fdn_output_type": "processed"
        }
    ],
    "cwlVersion": "draft-3",
    "steps": [
        {
            "fdn_step_meta": {
                "software_used": [ "pairsamtools_49489c" ],
                "description": "Parsing and sorting bam file",
                "analysis_step_types": [ "annotation", "sorting" ]
            },
            "outputs": [
                {
                    "id": "#pairsam-parse-sort.out_pairsam"
                }
            ],
            "inputs": [
                {
                    "id": "#pairsam-parse-sort.bam",
                    "source": "#input_bams"
                },
                {
                    "id": "#pairsam-parse-sort.chromsize",
                    "source": "#chromsize"
                },
                {
                    "id": "#pairsam-parse-sort.Threads",
                    "source": "#nthreads_parse_sort"
                }
            ],
            "run": "pairsam-parse-sort.cwl",
            "id": "#pairsam-parse-sort",
            "scatter": "#pairsam-parse-sort.bam"
        },
        {
            "fdn_step_meta": {
                "software_used": [ "pairsamtools_49489c" ],
                "description": "Merging pairsam files",
                "analysis_step_types": [ "merging" ]
            },
            "outputs": [
                {
                    "id": "#pairsam-merge.merged_pairsam"
                }
            ],
            "inputs": [
                {
                    "id": "#pairsam-merge.input_pairsams",
                    "source": "#pairsam-parse-sort.out_pairsam"
                },
                {
                    "id": "#pairsam-merge.nThreads",
                    "source": "#nthreads_merge"
                }
            ],
            "run": "pairsam-merge.cwl",
            "id": "#pairsam-merge"
        },
        {
            "fdn_step_meta": {
                "software_used": [ "pairsamtools_49489c" ],
                "description": "Marking duplicates to pairsam file",
                "analysis_step_types": [ "filter" ]
            },
            "outputs": [
                {
                    "id": "#pairsam-markasdup.out_markedpairsam"
                }
            ],
            "inputs": [
                {
                    "id": "#pairsam-markasdup.input_pairsam",
                    "source": "#pairsam-merge.merged_pairsam"
                }
            ],
            "run": "pairsam-markasdup.cwl",
            "id": "#pairsam-markasdup"
        },
        {
            "fdn_step_meta": {
                "software_used": [ "pairsamtools_49489c" ],
                "description": "Filtering duplicate and invalid reads",
                "analysis_step_types": [ "filter", "file format conversion" ]
            },
            "outputs": [
                {
                    "id": "#pairsam-filter.lossless_bamfile"
                },
                {
                    "id": "#pairsam-filter.dedup_pairs"
                }
            ],
            "inputs": [
                {
                    "id": "#pairsam-filter.input_pairsam",
                    "source": "#pairsam-markasdup.out_markedpairsam"
                },
                {
                    "id": "#pairsam-filter.chromsize",
                    "source": "#chromsize"
                }
            ],
            "run": "pairsam-filter.cwl",
            "id": "#pairsam-filter"
        },
        {
            "fdn_step_meta": {
                "software_used": [ "pairix_0.3.3" ],
                "description": "Adding restriction enzyme site information",
                "analysis_step_types": [ "annotation" ]
            },
            "outputs": [
                {
                    "id": "#addfragtopairs.out_pairs"
                }
            ],
            "inputs": [
                {
                    "id": "#addfragtopairs.input_pairs",
                    "source": "#pairsam-filter.dedup_pairs"
                },
                {
                    "id": "#addfragtopairs.restriction_file",
                    "source": "#restriction_file"
                }
            ],
            "run": "addfragtopairs.cwl",
            "id": "#addfragtopairs"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        },
        {
            "class": "ScatterFeatureRequirement"
        }
    ],
    "class": "Workflow",
    "inputs": [
        {
            "id": "#input_bams",
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "fdn_format": "bam"
        },
        {
            "id": "#chromsize",
            "type": [
                "File"
            ],
            "fdn_format": "chromsizes"
        },
        {
            "id": "#restriction_file",
            "type": [
                "File"
            ],
            "fdn_format": "juicer_format_restriction_site_file"
        },
        {
            "default": 8,
            "type": [
                "int"
            ],
            "id": "#nthreads_parse_sort"
        },
        {
            "default": 8,
            "type": [
                "int"
            ],
            "id": "#nthreads_merge"
        }
    ]
}
