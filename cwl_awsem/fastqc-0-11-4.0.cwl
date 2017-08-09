{
    "cwlVersion": "draft-3",
    "baseCommand": [
        "fastqc"
    ],
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ],
            "class": "ExpressionEngineRequirement"
        }
    ],
    "outputs": [
        {
            "id": "#report_zip",
            "description": "Zip archive of the report.",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "CommandLineTool",
    "inputs": [
        {
            "id": "#input_fastq",
            "description": "Input file.",
            "type": [
                "File"
            ]
        },
        {
            "id": "#kmers",
            "description": "Specifies the length of Kmer to look for in the Kmer content module. Specified Kmer length must be between 2 and 10. Default length is 7 if not specified.",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#limits_file",
            "description": "Specifies a non-default file which contains a set of criteria which will be used to determine the warn/error limits for the various modules.  This file can also be used to selectively remove some modules from the output all together.  The format needs to mirror the default limits.txt file found in the Configuration folder.",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#adapters_file",
            "description": "Specifies a non-default file which contains the list of adapter sequences which will be explicity searched against the library. The file must contain sets of named adapters in the form name[tab]sequence.  Lines prefixed with a hash will be ignored.",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#contaminants_file",
            "description": "Specifies a non-default file which contains the list of contaminants to screen overrepresented sequences against. The file must contain sets of named contaminants in the form name[tab]sequence.  Lines prefixed with a hash will be ignored.",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#format",
            "description": "Bypasses the normal sequence file format detection and forces the program to use the specified format.  Valid formats are BAM, SAM, BAM_mapped, SAM_mapped and FASTQ.",
            "type": [
                "null",
                {
                    "symbols": [
                        "bam",
                        "sam",
                        "bam_mapped",
                        "sam_mapped",
                        "fastq"
                    ],
                    "name": "format",
                    "type": "enum"
                }
            ]
        },
        {
            "id": "#nogroup",
            "description": "Disable grouping of bases for reads >50bp. All reports will show data for every base in the read.  WARNING: Using this option will cause fastqc to crash and burn if you use it on really long reads, and your plots may end up a ridiculous size. You have been warned.",
            "type": [
                "null",
                "boolean"
            ]
        },
        {
            "id": "#nano",
            "description": "Files come from naopore sequences and are in fast5 format. In this mode you can pass in directories to process and the program will take in all fast5 files within those directories and produce a single output file from the sequences found in all files.",
            "type": [
                "null",
                "boolean"
            ]
        },
        {
            "id": "#casava",
            "description": "Files come from raw casava output. Files in the same sample group (differing only by the group number) will be analysed as a set rather than individually. Sequences with the filter flag set in the header will be excluded from the analysis. Files must have the same names given to them by casava (including being gzipped and ending with .gz) otherwise they won't be grouped together correctly.",
            "type": [
                "null",
                "boolean"
            ]
        },
        {
            "id": "#threads",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "id": "#quiet",
            "description": "Supress all progress messages on stdout and only report errors.",
            "type": [
                "null",
                "boolean"
            ]
        }
    ],
    "arguments": [
        {
            "separate": true,
            "valueFrom": "--noextract",
            "prefix": ""
        },
        {
            "separate": true,
            "valueFrom": ".",
            "prefix": "--outdir"
        }
    ],
    "hints": [
        {
            "dockerPull": "images.sbgenomics.com/mladenlsbg/fastqc:0.11.4",
            "class": "DockerRequirement"
        }
    ]
}