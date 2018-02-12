{
    "fdn_meta": {
        "title": "Hi-C Post-alignment Processing",
        "name": "hi-c-processing-bam",
        "data_types": [ "Hi-C" ],
        "category": "filter",
        "workflow_type": "Hi-C data analysis",
        "description": "This is a subworkflow of the Hi-C data processing pipeline. It takes a bam file as input and performs parsing, sorting, filtering and deduping. It produces two output files, a lossless, filter-annotated bam file and a filtered pairs (contact list) file."
    },
    "outputs": [
        {
            "id": "#annotated_bam",
            "type": [
                "File"
            ],
            "source": "#pairsam-filter.lossless_bamfile",
            "fdn_format": "bam",
            "fdn_output_type": "processed"
        },
        {
            "id": "#filtered_pairs",
            "type": [
                "File"
            ],
            "source": "#pairsam-filter.filtered_pairs",
            "fdn_format": "pairs",
            "fdn_output_type": "processed",
            "fdn_secondary_file_formats": ["pairs_px2"]
        }
    ],
    "cwlVersion": "draft-3",
    "steps": [
        {
            "fdn_step_meta": {
                "software_used": [ "pairsamtools_eccd21" ],
                "description": "Parsing and sorting bam file",
                "analysis_step_types": [ "annotation", "sorting" ]
            },
            "outputs": [
                {
                    "id": "#pairsam-parse-sort.sorted_pairsam",
                    "fdn_format": "pairsam"
                }
            ],
            "inputs": [
                {
                    "id": "#pairsam-parse-sort.bam",
                    "source": "#input_bams",
                    "fdn_format": "bam"
                },
                {
                    "id": "#pairsam-parse-sort.chromsize",
                    "source": "#chromsize",
                    "fdn_format": "chromsize"
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
                "software_used": [ "pairsamtools_eccd21" ],
                "description": "Merging pairsam files",
                "analysis_step_types": [ "merging" ]
            },
            "outputs": [
                {
                    "id": "#pairsam-merge.merged_pairsam",
                    "fdn_format": "pairsam"
                }
            ],
            "inputs": [
                {
                    "id": "#pairsam-merge.input_pairsams",
                    "source": "#pairsam-parse-sort.sorted_pairsam",
                    "fdn_format": "pairsam"
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
                "software_used": [ "pairsamtools_eccd21" ],
                "description": "Marking duplicates to pairsam file",
                "analysis_step_types": [ "filter" ]
            },
            "outputs": [
                {
                    "id": "#pairsam-markasdup.dupmarked_pairsam",
                    "fdn_format": "pairsam"
                }
            ],
            "inputs": [
                {
                    "id": "#pairsam-markasdup.input_pairsam",
                    "source": "#pairsam-merge.merged_pairsam",
                    "fdn_format": "pairsam"
                }
            ],
            "run": "pairsam-markasdup.cwl",
            "id": "#pairsam-markasdup"
        },
        {
            "fdn_step_meta": {
                "software_used": [ "pairsamtools_eccd21" ],
                "description": "Filtering duplicate and invalid reads",
                "analysis_step_types": [ "filter", "file format conversion" ]
            },
            "outputs": [
                {
                    "id": "#pairsam-filter.lossless_bamfile",
                    "fdn_format": "bam"
                },
                {
                    "id": "#pairsam-filter.filtered_pairs",
                    "fdn_format": "pairs"
                }
            ],
            "inputs": [
                {
                    "id": "#pairsam-filter.input_pairsam",
                    "source": "#pairsam-markasdup.dupmarked_pairsam",
                    "fdn_format": "pairsam"
                },
                {
                    "id": "#pairsam-filter.chromsize",
                    "source": "#chromsize",
                    "fdn_format": "chromsize"
                }
            ],
            "run": "pairsam-filter.cwl",
            "id": "#pairsam-filter"
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
