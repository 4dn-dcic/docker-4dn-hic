{
    "hints": [],
    "sbg:project": "4dn-dcic/dev",
    "sbg:modifiedBy": "duplexa",
    "steps": [
        {
            "sbg:y": 149,
            "id": "#FastQC",
            "run": {
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
                "successCodes": [],
                "hints": [
                    {
                        "dockerImageId": "759c4c8fbafd",
                        "class": "DockerRequirement",
                        "dockerPull": "images.sbgenomics.com/mladenlsbg/fastqc:0.11.4"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": {
                            "class": "Expression",
                            "engine": "#cwl-js-engine",
                            "script": "{\tif ($job.inputs.threads)\n{\n  return $job.inputs.threads\n}\n else\n {\n   return 1\n }\n}"
                        }
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 2048
                    }
                ],
                "sbg:project": "4dn-dcic/dev",
                "y": 149,
                "sbg:license": "GNU General Public License v3.0 only",
                "cwlVersion": "sbg:draft-2",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12",
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1475785113
                    }
                ],
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/fastqc-0-11-4/0",
                "sbg:sbgMaintained": false,
                "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/0",
                "sbg:cmdPreview": "fastqc  --noextract --outdir .  /root/dir/example.fastq",
                "sbg:validationErrors": [],
                "id": "4dn-dcic/dev/fastqc-0-11-4/0",
                "x": 518,
                "label": "FastQC",
                "requirements": [
                    {
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "sbg:revision": 0,
                "sbg:modifiedOn": 1475785113,
                "sbg:latestRevision": 0,
                "class": "CommandLineTool",
                "stdout": "",
                "sbg:image_url": null,
                "outputs": [
                    {
                        "outputBinding": {
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            },
                            "sbg:inheritMetadataFrom": "#input_fastq",
                            "glob": "*_fastqc.zip"
                        },
                        "description": "Zip archive of the report.",
                        "id": "#report_zip",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "ZIP",
                        "label": "Report zip"
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "input_fastq": {
                            "path": "/root/dir/example.fastq"
                        },
                        "threads": 0,
                        "quiet": true
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 2048
                    }
                },
                "sbg:copyOf": "admin/sbg-public-data/fastqc-0-11-4/12",
                "sbg:toolkitVersion": "0.11.4",
                "sbg:links": [
                    {
                        "label": "Homepage",
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/"
                    },
                    {
                        "label": "Source Code",
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.4_source.zip"
                    },
                    {
                        "label": "Wiki",
                        "id": "https://wiki.hpcc.msu.edu/display/Bioinfo/FastQC+Tutorial"
                    },
                    {
                        "label": "Download",
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.4.zip"
                    },
                    {
                        "label": "Publication",
                        "id": ""
                    }
                ],
                "sbg:createdBy": "duplexa",
                "sbg:modifiedBy": "duplexa",
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "sbg:contributors": [
                    "duplexa"
                ],
                "baseCommand": [
                    "fastqc"
                ],
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data.\n\nFastQC is a tool which takes a FastQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.",
                "sbg:createdOn": 1475785113,
                "sbg:toolkit": "FastQC",
                "inputs": [
                    {
                        "sbg:altPrefix": "-t",
                        "inputBinding": {
                            "separate": true,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\tif ($job.inputs.threads)\n\t\t{\n  \t\t\treturn $job.inputs.threads\n\t\t}\n\telse\n \t\t{\n   \t\t\treturn 1\n \t\t}\n}"
                            },
                            "sbg:cmdInclude": true,
                            "prefix": "--threads"
                        },
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
                        "id": "#threads",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:includeInPorts": false,
                        "label": "Threads",
                        "required": false
                    },
                    {
                        "sbg:altPrefix": "-q",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--quiet"
                        },
                        "description": "Supress all progress messages on stdout and only report errors.",
                        "id": "#quiet",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "label": "Quiet",
                        "required": false
                    },
                    {
                        "description": "Disable grouping of bases for reads >50bp. All reports will show data for every base in the read.  WARNING: Using this option will cause fastqc to crash and burn if you use it on really long reads, and your plots may end up a ridiculous size. You have been warned.",
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "prefix": "--nogroup"
                        },
                        "id": "#nogroup",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "label": "Nogroup",
                        "required": false
                    },
                    {
                        "sbg:category": "",
                        "description": "Files come from naopore sequences and are in fast5 format. In this mode you can pass in directories to process and the program will take in all fast5 files within those directories and produce a single output file from the sequences found in all files.",
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "prefix": "--nano"
                        },
                        "id": "#nano",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "label": "Nano",
                        "required": false
                    },
                    {
                        "sbg:altPrefix": "-l",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--limits"
                        },
                        "description": "Specifies a non-default file which contains a set of criteria which will be used to determine the warn/error limits for the various modules.  This file can also be used to selectively remove some modules from the output all together.  The format needs to mirror the default limits.txt file found in the Configuration folder.",
                        "id": "#limits_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "TXT",
                        "label": "Limits",
                        "required": false
                    },
                    {
                        "sbg:category": "",
                        "sbg:altPrefix": "-f",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--kmers"
                        },
                        "description": "Specifies the length of Kmer to look for in the Kmer content module. Specified Kmer length must be between 2 and 10. Default length is 7 if not specified.",
                        "id": "#kmers",
                        "sbg:toolDefaultValue": "7",
                        "label": "Kmers",
                        "type": [
                            "null",
                            "int"
                        ],
                        "required": false
                    },
                    {
                        "description": "Input file.",
                        "inputBinding": {
                            "separate": true,
                            "position": 100,
                            "sbg:cmdInclude": true
                        },
                        "id": "#input_fastq",
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "label": "Input file",
                        "required": true
                    },
                    {
                        "sbg:category": "",
                        "sbg:altPrefix": "-f",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--format"
                        },
                        "description": "Bypasses the normal sequence file format detection and forces the program to use the specified format.  Valid formats are BAM, SAM, BAM_mapped, SAM_mapped and FASTQ.",
                        "id": "#format",
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
                        ],
                        "label": "Format",
                        "required": false
                    },
                    {
                        "sbg:altPrefix": "-c",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--contaminants"
                        },
                        "description": "Specifies a non-default file which contains the list of contaminants to screen overrepresented sequences against. The file must contain sets of named contaminants in the form name[tab]sequence.  Lines prefixed with a hash will be ignored.",
                        "id": "#contaminants_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "FASTA, FA, TXT",
                        "label": "Contaminants",
                        "required": false
                    },
                    {
                        "sbg:category": "",
                        "description": "Files come from raw casava output. Files in the same sample group (differing only by the group number) will be analysed as a set rather than individually. Sequences with the filter flag set in the header will be excluded from the analysis. Files must have the same names given to them by casava (including being gzipped and ending with .gz) otherwise they won't be grouped together correctly.",
                        "inputBinding": {
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "prefix": "--casava"
                        },
                        "id": "#casava",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "label": "Casava",
                        "required": false
                    },
                    {
                        "sbg:altPrefix": "-a",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--adapters"
                        },
                        "description": "Specifies a non-default file which contains the list of adapter sequences which will be explicity searched against the library. The file must contain sets of named adapters in the form name[tab]sequence.  Lines prefixed with a hash will be ignored.",
                        "id": "#adapters_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "FASTA, FA",
                        "label": "Adapters",
                        "required": false
                    }
                ],
                "sbg:toolAuthor": "Babraham Institute",
                "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12",
                "stdin": "",
                "temporaryFailCodes": []
            },
            "inputs": [
                {
                    "source": [
                        "#threads"
                    ],
                    "id": "#FastQC.threads"
                },
                {
                    "id": "#FastQC.quiet"
                },
                {
                    "id": "#FastQC.nogroup"
                },
                {
                    "id": "#FastQC.nano"
                },
                {
                    "source": [
                        "#limits_file"
                    ],
                    "id": "#FastQC.limits_file"
                },
                {
                    "id": "#FastQC.kmers"
                },
                {
                    "source": [
                        "#input_fastq"
                    ],
                    "id": "#FastQC.input_fastq"
                },
                {
                    "id": "#FastQC.format"
                },
                {
                    "source": [
                        "#contaminants_file"
                    ],
                    "id": "#FastQC.contaminants_file"
                },
                {
                    "id": "#FastQC.casava"
                },
                {
                    "source": [
                        "#adapters_file"
                    ],
                    "id": "#FastQC.adapters_file"
                }
            ],
            "sbg:x": 518,
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "scatter": "#FastQC.input_fastq"
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_y": 0,
    "sbg:canvas_x": 0,
    "sbg:sbgMaintained": false,
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4-1/3",
    "sbg:validationErrors": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4-1/3/raw/",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "requirements": [],
    "label": "fastqc-0.11.4",
    "sbg:canvas_zoom": 1,
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1475785156
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1475785232
        },
        {
            "sbg:revisionNotes": "scattered across input_fastq, nthread exposed",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1494861916
        },
        {
            "sbg:revisionNotes": "scattered across input_fastq",
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1494861985
        }
    ],
    "sbg:revisionNotes": "scattered across input_fastq",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/fastqc-0-11-4-1/3.png",
    "sbg:revision": 3,
    "class": "Workflow",
    "sbg:createdBy": "duplexa",
    "sbg:modifiedOn": 1494861985,
    "sbg:contributors": [
        "duplexa"
    ],
    "sbg:projectName": "Dev",
    "description": "",
    "sbg:createdOn": 1475785156,
    "sbg:latestRevision": 3,
    "inputs": [
        {
            "sbg:y": 54,
            "id": "#limits_file",
            "sbg:x": 248,
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "TXT",
            "label": "limits_file"
        },
        {
            "sbg:y": 237,
            "id": "#contaminants_file",
            "sbg:x": 212,
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "FASTA, FA, TXT",
            "label": "contaminants_file"
        },
        {
            "sbg:y": 309,
            "id": "#adapters_file",
            "sbg:x": 340,
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "FASTA, FA",
            "label": "adapters_file"
        },
        {
            "sbg:y": 161,
            "id": "#input_fastq",
            "sbg:x": 75,
            "type": [
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "label": "input_fastq"
        },
        {
            "sbg:altPrefix": "-t",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "id": "#threads",
            "type": [
                "null",
                "int"
            ],
            "sbg:includeInPorts": false,
            "label": "Threads",
            "required": false
        }
    ],
    "outputs": [
        {
            "source": [
                "#FastQC.report_zip"
            ],
            "sbg:y": 154,
            "id": "#report_zip",
            "sbg:x": 907,
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "ZIP",
            "label": "report_zip",
            "required": false
        }
    ]
}