{
    "class": "Workflow",
    "hints": [],
    "cwlVersion": "sbg:draft-2",
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4-1/3",
    "requirements": [],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/fastqc-0-11-4-1/3.png",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4-1/3/raw/",
    "sbg:revision": 3,
    "sbg:validationErrors": [],
    "sbg:projectName": "Dev",
    "sbg:createdBy": "duplexa",
    "sbg:createdOn": 1475785156,
    "sbg:sbgMaintained": false,
    "sbg:modifiedOn": 1494861985,
    "sbg:canvas_x": 0,
    "sbg:canvas_y": 0,
    "sbg:modifiedBy": "duplexa",
    "sbg:project": "4dn-dcic/dev",
    "steps": [
        {
            "inputs": [
                {
                    "id": "#FastQC.threads",
                    "source": [
                        "#threads"
                    ]
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
                    "id": "#FastQC.limits_file",
                    "source": [
                        "#limits_file"
                    ]
                },
                {
                    "id": "#FastQC.kmers"
                },
                {
                    "id": "#FastQC.input_fastq",
                    "source": [
                        "#input_fastq"
                    ]
                },
                {
                    "id": "#FastQC.format"
                },
                {
                    "id": "#FastQC.contaminants_file",
                    "source": [
                        "#contaminants_file"
                    ]
                },
                {
                    "id": "#FastQC.casava"
                },
                {
                    "id": "#FastQC.adapters_file",
                    "source": [
                        "#adapters_file"
                    ]
                }
            ],
            "sbg:x": 518,
            "run": {
                "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12",
                "sbg:validationErrors": [],
                "id": "4dn-dcic/dev/fastqc-0-11-4/0",
                "cwlVersion": "sbg:draft-2",
                "sbg:revision": 0,
                "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/0",
                "sbg:toolkit": "FastQC",
                "sbg:image_url": null,
                "successCodes": [],
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "inputs": [
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:includeInPorts": false,
                        "sbg:altPrefix": "-t",
                        "label": "Threads",
                        "inputBinding": {
                            "prefix": "--threads",
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\tif ($job.inputs.threads)\n\t\t{\n  \t\t\treturn $job.inputs.threads\n\t\t}\n\telse\n \t\t{\n   \t\t\treturn 1\n \t\t}\n}"
                            },
                            "separate": true
                        },
                        "required": false,
                        "id": "#threads",
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine."
                    },
                    {
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "required": false,
                        "sbg:altPrefix": "-q",
                        "label": "Quiet",
                        "inputBinding": {
                            "prefix": "--quiet",
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "description": "Supress all progress messages on stdout and only report errors.",
                        "id": "#quiet"
                    },
                    {
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "required": false,
                        "label": "Nogroup",
                        "inputBinding": {
                            "prefix": "--nogroup",
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "description": "Disable grouping of bases for reads >50bp. All reports will show data for every base in the read.  WARNING: Using this option will cause fastqc to crash and burn if you use it on really long reads, and your plots may end up a ridiculous size. You have been warned.",
                        "id": "#nogroup"
                    },
                    {
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "required": false,
                        "label": "Nano",
                        "sbg:category": "",
                        "inputBinding": {
                            "prefix": "--nano",
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "description": "Files come from naopore sequences and are in fast5 format. In this mode you can pass in directories to process and the program will take in all fast5 files within those directories and produce a single output file from the sequences found in all files.",
                        "id": "#nano"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "sbg:altPrefix": "-l",
                        "label": "Limits",
                        "inputBinding": {
                            "prefix": "--limits",
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": "TXT",
                        "description": "Specifies a non-default file which contains a set of criteria which will be used to determine the warn/error limits for the various modules.  This file can also be used to selectively remove some modules from the output all together.  The format needs to mirror the default limits.txt file found in the Configuration folder.",
                        "id": "#limits_file"
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "required": false,
                        "sbg:altPrefix": "-f",
                        "label": "Kmers",
                        "sbg:toolDefaultValue": "7",
                        "inputBinding": {
                            "prefix": "--kmers",
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "description": "Specifies the length of Kmer to look for in the Kmer content module. Specified Kmer length must be between 2 and 10. Default length is 7 if not specified.",
                        "id": "#kmers",
                        "sbg:category": ""
                    },
                    {
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "label": "Input file",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 100,
                            "separate": true
                        },
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "description": "Input file.",
                        "id": "#input_fastq"
                    },
                    {
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "format",
                                "symbols": [
                                    "bam",
                                    "sam",
                                    "bam_mapped",
                                    "sam_mapped",
                                    "fastq"
                                ]
                            }
                        ],
                        "required": false,
                        "sbg:altPrefix": "-f",
                        "label": "Format",
                        "sbg:category": "",
                        "inputBinding": {
                            "prefix": "--format",
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "description": "Bypasses the normal sequence file format detection and forces the program to use the specified format.  Valid formats are BAM, SAM, BAM_mapped, SAM_mapped and FASTQ.",
                        "id": "#format"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "sbg:altPrefix": "-c",
                        "label": "Contaminants",
                        "inputBinding": {
                            "prefix": "--contaminants",
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": "FASTA, FA, TXT",
                        "description": "Specifies a non-default file which contains the list of contaminants to screen overrepresented sequences against. The file must contain sets of named contaminants in the form name[tab]sequence.  Lines prefixed with a hash will be ignored.",
                        "id": "#contaminants_file"
                    },
                    {
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "required": false,
                        "label": "Casava",
                        "sbg:category": "",
                        "inputBinding": {
                            "prefix": "--casava",
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "description": "Files come from raw casava output. Files in the same sample group (differing only by the group number) will be analysed as a set rather than individually. Sequences with the filter flag set in the header will be excluded from the analysis. Files must have the same names given to them by casava (including being gzipped and ending with .gz) otherwise they won't be grouped together correctly.",
                        "id": "#casava"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "sbg:altPrefix": "-a",
                        "label": "Adapters",
                        "inputBinding": {
                            "prefix": "--adapters",
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": "FASTA, FA",
                        "description": "Specifies a non-default file which contains the list of adapter sequences which will be explicity searched against the library. The file must contain sets of named adapters in the form name[tab]sequence.  Lines prefixed with a hash will be ignored.",
                        "id": "#adapters_file"
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "input_fastq": {
                            "path": "/root/dir/example.fastq"
                        },
                        "quiet": true,
                        "threads": 0
                    },
                    "allocatedResources": {
                        "mem": 2048,
                        "cpu": 1
                    }
                },
                "sbg:createdBy": "duplexa",
                "sbg:createdOn": 1475785113,
                "sbg:sbgMaintained": false,
                "class": "CommandLineTool",
                "stdout": "",
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/mladenlsbg/fastqc:0.11.4",
                        "class": "DockerRequirement",
                        "dockerImageId": "759c4c8fbafd"
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
                "sbg:modifiedOn": 1475785113,
                "sbg:latestRevision": 0,
                "temporaryFailCodes": [],
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "sbg:cmdPreview": "fastqc  --noextract --outdir .  /root/dir/example.fastq",
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
                "baseCommand": [
                    "fastqc"
                ],
                "sbg:toolkitVersion": "0.11.4",
                "sbg:modifiedBy": "duplexa",
                "sbg:copyOf": "admin/sbg-public-data/fastqc-0-11-4/12",
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/fastqc-0-11-4/0",
                "sbg:project": "4dn-dcic/dev",
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "description": "Zip archive of the report.",
                        "label": "Report zip",
                        "sbg:fileTypes": "ZIP",
                        "id": "#report_zip",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#input_fastq",
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            },
                            "glob": "*_fastqc.zip"
                        }
                    }
                ],
                "sbg:contributors": [
                    "duplexa"
                ],
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data.\n\nFastQC is a tool which takes a FastQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.",
                "sbg:toolAuthor": "Babraham Institute",
                "y": 149,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12",
                        "sbg:modifiedOn": 1475785113,
                        "sbg:revision": 0
                    }
                ],
                "sbg:license": "GNU General Public License v3.0 only",
                "label": "FastQC",
                "x": 518,
                "stdin": "",
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
                ]
            },
            "id": "#FastQC",
            "scatter": "#FastQC.input_fastq",
            "sbg:y": 149,
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ]
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "label": "report_zip",
            "sbg:fileTypes": "ZIP",
            "source": [
                "#FastQC.report_zip"
            ],
            "required": false,
            "id": "#report_zip",
            "sbg:x": 907,
            "sbg:y": 154
        }
    ],
    "sbg:contributors": [
        "duplexa"
    ],
    "description": "",
    "label": "fastqc-0.11.4",
    "sbg:latestRevision": 3,
    "sbg:canvas_zoom": 1,
    "inputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "label": "limits_file",
            "sbg:fileTypes": "TXT",
            "id": "#limits_file",
            "sbg:x": 248,
            "sbg:y": 54
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "contaminants_file",
            "sbg:fileTypes": "FASTA, FA, TXT",
            "id": "#contaminants_file",
            "sbg:x": 212,
            "sbg:y": 237
        },
        {
            "type": [
                "null",
                "File"
            ],
            "label": "adapters_file",
            "sbg:fileTypes": "FASTA, FA",
            "id": "#adapters_file",
            "sbg:x": 340,
            "sbg:y": 309
        },
        {
            "type": [
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "sbg:includeInPorts": true,
            "label": "input_fastq",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "id": "#input_fastq",
            "sbg:x": 75,
            "sbg:y": 161
        },
        {
            "type": [
                "null",
                "int"
            ],
            "sbg:includeInPorts": false,
            "sbg:altPrefix": "-t",
            "label": "Threads",
            "required": false,
            "id": "#threads",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine."
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1475785156,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1475785232,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "scattered across input_fastq, nthread exposed",
            "sbg:modifiedOn": 1494861916,
            "sbg:revision": 2
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "scattered across input_fastq",
            "sbg:modifiedOn": 1494861985,
            "sbg:revision": 3
        }
    ],
    "sbg:revisionNotes": "scattered across input_fastq"
}