{
    "fdn_meta": {
        "title": "Generation of multiresolution Hi-C contact matrices",
        "name": "hi-c-processing-pairs",
        "data_types": [ "Hi-C" ],
        "category": "process",
        "workflow_type": "Hi-C data analysis",
        "description": "This is a subworkflow of the Hi-C data analysis pipeline. It takes pairs files for all replicates of a sample, merge them and then produces multi-resolution Hi-c matrices for visualization. The pipeline produces 4 output files. 1) Replicated merged pairs file 2) cool format file 3) Multiresolution mCool file and 4) Juicer normalization vector"
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
            "fdn_format": "normvect",
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
            "fdn_format": "chromsizes"
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
                "null",
                "int"
            ],
            "default": 5000
        },
        {
            "id": "#binsize",
            "type": [
                "null",
                "int"
            ],
            "default": 500000
        },
        {
            "id": "#maxmem",
            "type": [
                "null",
                "string"
            ],
            "default": "14g"
        },
        {
            "id": "#higlass",
            "type": [
                "boolean"
            ],
            "default": true
        },
        {
            "id": "#juicer_res",
            "type": [
                "boolean"
            ],
            "default": false
        },
        {
            "id": "#restriction_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#nres",
            "default": 13,
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#nthreads_juicebox",
            "default": 4,
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#chunksize",
            "default": 10000000,
            "type": [
                "null",
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
                "software_used": [ "pairsamtools_eccd21" ],
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
                "software_used": [ "run-addfrag2pairs.sh" ],    
                "description": "Adding RE description to the pairs file",
                "analysis_step_types": [ "AddFragments" ]
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
                "software_used": [ "Cooler" ],
                "description": "Merged Pairs file is processed using Cooler",
                "analysis_step_types": [ "CoolerProcessing" ]
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
                    "source": "#binsize"
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
                "software_used": [ "Juicebox" ],  
                "description": "Merged Pairs file is processed using Juicebox",
                "analysis_step_types": [ "Juicebox Processing" ]
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
                "analysis_step_types": [ "cooler Processing" ]
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
                }
            ],
            "run": "cool2mcool.cwl",
            "id": "#cool2mcool"
        },
        {
            "fdn_step_meta": {
                "software_used": [ "Juicebox" ], 
                "description": "HiC normalization vector is added to mcooler",
                "analysis_step_types": [ "Juicebox Processing" ]
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
                "software_used": [ "Juicebox" ],
                "description": "Extracting HiC normalization vector",
                "analysis_step_types": [ "Extracting normalization vector" ]
            },
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.cooler_normvector",
                    "fdn_format": "normvect"

                }
            ],
            "inputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox.nres",
                    "source": "#nres"
                },
                {
                    "id": "#extract_mcool_normvector_for_juicebox.min_res",
                    "source": "#min_res"
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
