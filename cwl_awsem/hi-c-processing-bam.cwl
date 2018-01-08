{
    "outputs": [
        {
            "id": "#merged_annotated_bam",
            "type": [
                "File"
            ],
            "source": "#pairsam-filter.lossless_bamfile"
        },
        {
            "id": "#out_pairs",
            "type": [
                "File"
            ],
            "source": "#addfragtopairs.out_pairs"
        }
    ],
    "cwlVersion": "draft-3",
    "steps": [
        {
            "outputs": [
                {
                    "id": "#pairsam-parse-sort.out_pairsam"
                }
            ],
            "inputs": [
                {
                    "id": "#pairsam-parse-sort.input_bam",
                    "source": "#input_bam"
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
            "scatter": "#input_bam"
        },
        {
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
        }
    ],
    "class": "Workflow",
    "inputs": [
        {
            "id": "#input_bam",
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ]
        },
        {
            "id": "#chromsize",
            "type": [
                "File"
            ]
        },
        {
            "id": "#restriction_file",
            "type": [
                "File"
            ]
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
