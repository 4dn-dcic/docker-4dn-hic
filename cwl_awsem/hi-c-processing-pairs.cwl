{
    "fdn_meta": {
        "title": "Generation of multiresolution Hi-C contact matrices from a set of contact lists",
        "name": "hi-c-processing-pairs",
        "data_types": [ "Hi-C" ],
        "category": "merging + aggregation + normalization",
        "workflow_type": "Hi-C data analysis",
        "description": "This is a subworkflow of the Hi-C data analysis pipeline. It takes pairs files for all replicates of a sample, merges them and then produces multi-resolution Hi-c matrices for visualization. The pipeline produces 4 output files. 1) Replicated merged pairs file 2) Contact matrices in .hic format 3) Multiresolution mcool file and 4) normalization vector of mcool files for visualization in juicebox."
    },
    "requirements": [
        {
            "class": "ScatterFeatureRequirement"
        },
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "outputs": [
        {
            "id": "#merged_pairs",
            "type": [
                "File"
            ],
            "source": "#merge-pairs.merged_pairs",
            "fdn_format": "pairs",
            "fdn_output_type": "processed"
        },
        {
            "id": "#hic",
            "type": [
                "File"
            ],
            "source": "#pairs2hic.hic",
            "fdn_format": "hic",
            "fdn_output_type": "processed"
        },
        {
            "id": "#mcool",
            "type": [
                "File"
            ],
            "source": "#add_hic_normvector_to_mcool.mcool_with_hicnorm",
            "fdn_format": "mcool",
            "fdn_output_type": "processed"
        },
        {
            "id": "#cooler_normvector",
            "type": [
                "File"
            ],
            "source": "#extract_mcool_normvector_for_juicebox.cooler_normvector",
            "fdn_format": "normvector_juicerformat",
            "fdn_output_type": "processed"
        }
    ],
    "inputs": [
        {
            "id": "#input_pairs",
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "fdn_format": "pairs"
        },
        {
            "id": "#chromsizes",
            "type": [
                "File"
            ],
            "fdn_format": "chromsize"
        },
        {
            "id": "#restriction_file",
            "type": [
                "null",
                "File"
            ],
            "fdn_format": "juicer_format_restriction_site_file"
        },
        {
            "id": "#nthreads_cooler",
            "default": 8,
            "type": [
                "int"
            ]
        },
        {
            "id": "#min_res",
            "type": [
                "int"
            ],
            "default": 1000
        },
        {
            "id": "#maxmem",
            "type": [
                "string"
            ],
            "default": "14g"
        },
        {
            "id": "#higlass",
            "type": [
                "boolean"
            ],
            "default": false
        },
        {
            "id": "#juicer_res",
            "type": [
                "boolean"
            ],
            "default": false
        },
        {
            "id": "#custom_res",
            "type": [
                "string"
            ],
            "default": "1000,2000,5000,10000,25000,50000,100000,250000,500000,1000000,2500000,5000000,10000000"
        },
        {
            "id": "#nres",
            "default": 13,
            "type": [
                "int"
            ]
        },
        {
            "id": "#nthreads_juicebox",
            "default": 4,
            "type": [
                "int"
            ]
        },
        {
            "id": "#chunksize",
            "default": 10000000,
            "type": [
                "int"
            ]
        },
        {
            "id": "#mapqfilter_juicer",
            "default": 0,
            "type": [
                "int"
            ]
        },
        {
            "id": "#max_split_cooler",
            "default": 2,
            "type": [
                "int"
            ]
        },
        {
            "id": "#nofrag",
            "default": false,
            "type": [
                "boolean"
            ]
        }
    ],
    "class": "Workflow",
    "cwlVersion": "draft-3",
    "steps": [
        {
            "fdn_step_meta": {
                "software_used": [ "pairix_0.3.3" ],
                "description": "Merging pair files",
                "analysis_step_types": [ "merging" ]
            },
            "outputs": [
                {
                    "id": "#merge-pairs.merged_pairs",
                    "fdn_format": "pairs"
                }
            ],
            "inputs": [
                {
                    "source": "#input_pairs",
                    "id": "#merge-pairs.input_pairs"
                }
            ],
            "run": "merge-pairs.cwl",
            "id": "#merge-pairs"
        },
        {
            "fdn_step_meta": {
                "software_used": [ "pairix_0.3.3" ],    
                "description": "Adding restriction enzyme site information to the pairs file",
                "analysis_step_types": [ "annotation" ]
            },
            "outputs": [
                {
                    "id": "#addfragtopairs.pairs_with_frags"
                }
            ],
            "inputs": [
                {
                    "id": "#addfragtopairs.input_pairs",
                    "source": "#merge-pairs.merged_pairs"
                },
                {
                    "id": "#addfragtopairs.restriction_file",
                    "source": "#restriction_file"
                },
                {
                    "id": "#addfragtopairs.donothing",
                    "source": "#nofrag"
                }
            ],
            "run": "addfragtopairs.cwl",
            "id": "#addfragtopairs"
        },
        {
            "fdn_step_meta": {
                "software_used": [ "cooler_0.7.6" ],
                "description": "Merged Pairs file is processed using Cooler",
                "analysis_step_types": [ "aggregation" ]
            },
            "outputs": [
                {
                    "id": "#cooler.cool",
                    "fdn_format": "cool"
                }
            ],
            "inputs": [
                {
                    "id": "#cooler.pairs",
                    "source": "#merge-pairs.merged_pairs"
                },
                {
                    "id": "#cooler.chrsizes",
                    "source": "#chromsizes"
                },
                {
                    "id": "#cooler.binsize",
                    "source": "#min_res"
                },
                {
                    "id": "#cooler.ncores",
                    "source": "#nthreads_cooler"
                },
                {
                    "id": "#cooler.max_split",
                    "source": "#max_split_cooler"
                }
            ],
            "run": "cooler.cwl",
            "id": "#cooler"
        },
        {
            "fdn_step_meta": {
                "software_used": [ "juicer_tools_1.8.9-cuda8" ],  
                "description": "Merged Pairs file is processed using Juicebox",
                "analysis_step_types": [ "aggregation", "normalization" ]
            },
            "outputs": [
                {
                    "id": "#pairs2hic.hic"
                }
            ],
            "inputs": [
                {
                    "source": "#addfragtopairs.pairs_with_frags",
                    "id": "#pairs2hic.input_pairs",
                    "fdn_format": "pairs"
                },
                {
                    "source": "#chromsizes",
                    "id": "#pairs2hic.chromsizes"
                },
                {
                    "source": "#min_res",
                    "id": "#pairs2hic.min_res"
                },
                {
                    "source": "#higlass",
                    "id": "#pairs2hic.higlass"
                },
                {
                    "source": "#custom_res",
                    "id": "#pairs2hic.custom_res"
                },
                {
                    "source": "#maxmem",
                    "id": "#pairs2hic.maxmem"
                },
                {
                    "source": "#mapqfilter_juicer",
                    "id": "#pairs2hic.mapqfilter"
                }
            ],
            "run": "pairs2hic.cwl",
            "id": "#pairs2hic"
        },
        {
            "fdn_step_meta": {
                "software_used": [ "cooler" ],
                "description": "Cooler file is converted to mcool",
                "analysis_step_types": [ "aggregation", "normalization", "file format conversion" ]
            },
            "outputs": [
                {
                    "id": "#cool2mcool.mcool",
                    "fdn_format": "mcool"
                }
            ],
            "inputs": [
                {
                    "id": "#cool2mcool.input_cool",
                    "source": "#cooler.cool"
                },
                {
                    "id": "#cool2mcool.ncores",
                    "source": "#nthreads_juicebox"
                },
                {
                    "id": "#cool2mcool.chunksize",
                    "source": "#chunksize"
                },
                {
                    "id": "#cool2mcool.juicer_res",
                    "source": "#juicer_res"
                },
                {
                    "id": "#cool2mcool.custom_res",
                    "source": "#custom_res"
                }
            ],
            "run": "cool2mcool.cwl",
            "id": "#cool2mcool"
        },
        {
            "fdn_step_meta": {
                "software_used": [ "hic2cool_0.4.1" ], 
                "description": "HiC normalization vector is added to mcooler",
                "analysis_step_types": [ "file format conversion" ]
            },
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.mcool_with_hicnorm",
                    "fdn_format": "mcool"
                }
            ],
            "inputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.input_mcool",
                    "source": "#cool2mcool.mcool"
                },
                {
                    "id": "#add_hic_normvector_to_mcool.input_hic",
                    "source": "#pairs2hic.hic"
                }
            ],
            "run": "add-hic-normvector-to-mcool.cwl",
            "id": "#add_hic_normvector_to_mcool"
        },
        {
            "fdn_step_meta": {
                "software_used": [ "mcool2hic_f2d128" ],
                "description": "Extracting HiC normalization vector",
                "analysis_step_types": [ "file format conversion" ]
            },
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.cooler_normvector",
                    "fdn_format": "normvector_juicerformat"

                }
            ],
            "inputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.custom_res",
                    "source": "#custom_res"
                },
                {
                    "id": "#extract_mcool_normvector_for_juicebox.chromsize",
                    "source": "#chromsizes"
                },
                {
                    "id": "#extract_mcool_normvector_for_juicebox.input_mcool",
                    "source": "#add_hic_normvector_to_mcool.mcool_with_hicnorm"
                }            
            ],
            "run": "extract-mcool-normvector-for-juicebox.cwl",
            "id": "#extract-mcool-normvector-for-juicebox"
        }
    ]
}
