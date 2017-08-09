{
    "sbg:validationErrors": [],
    "temporaryFailCodes": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1475785113,
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12",
            "sbg:modifiedBy": "duplexa"
        }
    ],
    "arguments": [
        {
            "prefix": "",
            "valueFrom": "--noextract",
            "separate": true
        },
        {
            "prefix": "--outdir",
            "valueFrom": ".",
            "separate": true
        }
    ],
    "label": "FastQC",
    "successCodes": [],
    "sbg:modifiedOn": 1475785113,
    "sbg:update": "admin/sbg-public-data/fastqc-0-11-4/18",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "baseCommand": [
        "fastqc"
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedBy": "duplexa",
    "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data.\n\nFastQC is a tool which takes a FastQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.",
    "sbg:copyOf": "admin/sbg-public-data/fastqc-0-11-4/12",
    "sbg:createdOn": 1475785113,
    "class": "CommandLineTool",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4/0/raw/",
    "sbg:cmdPreview": "fastqc  --noextract --outdir .  /root/dir/example.fastq",
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/0",
    "sbg:createdBy": "duplexa",
    "sbg:latestRevision": 0,
    "sbg:revision": 0,
    "stdout": "",
    "sbg:projectName": "Dev",
    "hints": [
        {
            "dockerPull": "images.sbgenomics.com/mladenlsbg/fastqc:0.11.4",
            "dockerImageId": "759c4c8fbafd",
            "class": "DockerRequirement"
        },
        {
            "value": {
                "script": "{\tif ($job.inputs.threads)\n{\n  return $job.inputs.threads\n}\n else\n {\n   return 1\n }\n}",
                "class": "Expression",
                "engine": "#cwl-js-engine"
            },
            "class": "sbg:CPURequirement"
        },
        {
            "value": 2048,
            "class": "sbg:MemRequirement"
        }
    ],
    "sbg:updateRevisionNotes": "* Fixed the JS expression for the CPU and Memory allocation\n* Added cpus_per_job and memory_per_job parameters\n* Removed default version for format, so the tool can handle combinations of file formats",
    "sbg:sbgMaintained": false,
    "inputs": [
        {
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 100
            },
            "description": "Input file.",
            "label": "Input file",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "id": "#input_fastq",
            "type": [
                "File"
            ]
        },
        {
            "sbg:toolDefaultValue": "7",
            "inputBinding": {
                "prefix": "--kmers",
                "sbg:cmdInclude": true,
                "separate": true
            },
            "description": "Specifies the length of Kmer to look for in the Kmer content module. Specified Kmer length must be between 2 and 10. Default length is 7 if not specified.",
            "sbg:altPrefix": "-f",
            "label": "Kmers",
            "type": [
                "null",
                "int"
            ],
            "sbg:category": "",
            "id": "#kmers"
        },
        {
            "inputBinding": {
                "prefix": "--limits",
                "sbg:cmdInclude": true,
                "separate": true
            },
            "description": "Specifies a non-default file which contains a set of criteria which will be used to determine the warn/error limits for the various modules.  This file can also be used to selectively remove some modules from the output all together.  The format needs to mirror the default limits.txt file found in the Configuration folder.",
            "sbg:altPrefix": "-l",
            "label": "Limits",
            "sbg:fileTypes": "TXT",
            "id": "#limits_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "prefix": "--adapters",
                "sbg:cmdInclude": true,
                "separate": true
            },
            "description": "Specifies a non-default file which contains the list of adapter sequences which will be explicity searched against the library. The file must contain sets of named adapters in the form name[tab]sequence.  Lines prefixed with a hash will be ignored.",
            "sbg:altPrefix": "-a",
            "label": "Adapters",
            "sbg:fileTypes": "FASTA, FA",
            "id": "#adapters_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "prefix": "--contaminants",
                "sbg:cmdInclude": true,
                "separate": true
            },
            "description": "Specifies a non-default file which contains the list of contaminants to screen overrepresented sequences against. The file must contain sets of named contaminants in the form name[tab]sequence.  Lines prefixed with a hash will be ignored.",
            "sbg:altPrefix": "-c",
            "label": "Contaminants",
            "sbg:fileTypes": "FASTA, FA, TXT",
            "id": "#contaminants_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "inputBinding": {
                "prefix": "--format",
                "sbg:cmdInclude": true,
                "separate": true
            },
            "description": "Bypasses the normal sequence file format detection and forces the program to use the specified format.  Valid formats are BAM, SAM, BAM_mapped, SAM_mapped and FASTQ.",
            "sbg:category": "",
            "label": "Format",
            "sbg:altPrefix": "-f",
            "id": "#format",
            "type": [
                "null",
                {
                    "name": "format",
                    "symbols": [
                        "bam",
                        "sam",
                        "bam_mapped",
                        "sam_mapped",
                        "fastq"
                    ],
                    "type": "enum"
                }
            ]
        },
        {
            "description": "Disable grouping of bases for reads >50bp. All reports will show data for every base in the read.  WARNING: Using this option will cause fastqc to crash and burn if you use it on really long reads, and your plots may end up a ridiculous size. You have been warned.",
            "inputBinding": {
                "prefix": "--nogroup",
                "sbg:cmdInclude": true,
                "separate": false
            },
            "label": "Nogroup",
            "id": "#nogroup",
            "type": [
                "null",
                "boolean"
            ]
        },
        {
            "inputBinding": {
                "prefix": "--nano",
                "sbg:cmdInclude": true,
                "separate": false
            },
            "description": "Files come from naopore sequences and are in fast5 format. In this mode you can pass in directories to process and the program will take in all fast5 files within those directories and produce a single output file from the sequences found in all files.",
            "sbg:category": "",
            "label": "Nano",
            "id": "#nano",
            "type": [
                "null",
                "boolean"
            ]
        },
        {
            "inputBinding": {
                "prefix": "--casava",
                "sbg:cmdInclude": true,
                "separate": false
            },
            "description": "Files come from raw casava output. Files in the same sample group (differing only by the group number) will be analysed as a set rather than individually. Sequences with the filter flag set in the header will be excluded from the analysis. Files must have the same names given to them by casava (including being gzipped and ending with .gz) otherwise they won't be grouped together correctly.",
            "sbg:category": "",
            "label": "Casava",
            "id": "#casava",
            "type": [
                "null",
                "boolean"
            ]
        },
        {
            "inputBinding": {
                "prefix": "--threads",
                "valueFrom": {
                    "script": "{\tif ($job.inputs.threads)\n\t\t{\n  \t\t\treturn $job.inputs.threads\n\t\t}\n\telse\n \t\t{\n   \t\t\treturn 1\n \t\t}\n}",
                    "class": "Expression",
                    "engine": "#cwl-js-engine"
                },
                "separate": true,
                "sbg:cmdInclude": true
            },
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "sbg:altPrefix": "-t",
            "label": "Threads",
            "id": "#threads",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "inputBinding": {
                "prefix": "--quiet",
                "sbg:cmdInclude": true,
                "separate": true
            },
            "description": "Supress all progress messages on stdout and only report errors.",
            "sbg:altPrefix": "-q",
            "label": "Quiet",
            "id": "#quiet",
            "type": [
                "null",
                "boolean"
            ]
        }
    ],
    "sbg:updateModifiedBy": "admin",
    "stdin": "",
    "sbg:project": "4dn-dcic/dev",
    "sbg:image_url": null,
    "outputs": [
        {
            "description": "Zip archive of the report.",
            "label": "Report zip",
            "sbg:fileTypes": "ZIP",
            "id": "#report_zip",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "sbg:metadata": {
                    "__inherit__": "input_fastq"
                },
                "sbg:inheritMetadataFrom": "#input_fastq",
                "glob": "*_fastqc.zip"
            }
        }
    ],
    "sbg:toolkit": "FastQC",
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:links": [
        {
            "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/",
            "label": "Homepage"
        },
        {
            "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.4_source.zip",
            "label": "Source Code"
        },
        {
            "id": "https://wiki.hpcc.msu.edu/display/Bioinfo/FastQC+Tutorial",
            "label": "Wiki"
        },
        {
            "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.4.zip",
            "label": "Download"
        },
        {
            "id": "",
            "label": "Publication"
        }
    ],
    "sbg:toolAuthor": "Babraham Institute",
    "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12",
    "sbg:license": "GNU General Public License v3.0 only",
    "sbg:toolkitVersion": "0.11.4",
    "sbg:job": {
        "inputs": {
            "threads": 0,
            "input_fastq": {
                "path": "/root/dir/example.fastq"
            },
            "quiet": true
        },
        "allocatedResources": {
            "cpu": 1,
            "mem": 2048
        }
    },
    "requirements": [
        {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ]
        }
    ],
    "sbg:categories": [
        "FASTQ-Processing",
        "Quality-Control",
        "Quantification"
    ]
}