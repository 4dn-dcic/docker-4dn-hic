{
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4-1/9/raw/",
    "sbg:modifiedOn": 1502373121,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "inputs": [
        {
            "label": "input_fastq",
            "id": "#input_fastq",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "sbg:y": 206,
            "sbg:x": 14
        },
        {
            "sbg:toolDefaultValue": "1",
            "label": "Threads",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "sbg:suggestedValue": null,
            "required": false,
            "id": "#threads",
            "sbg:includeInPorts": false,
            "type": [
                "null",
                "int"
            ],
            "sbg:category": "Options"
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:revision": 9,
    "hints": [],
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/fastqc-0-11-4-1/9.png",
    "sbg:latestRevision": 10,
    "sbg:canvas_x": 40,
    "cwlVersion": "sbg:draft-2",
    "sbg:project": "4dn-dcic/dev",
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4-1/9",
    "class": "Workflow",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:canvas_y": 13,
    "sbg:validationErrors": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1475785156,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1475785232,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494861916,
            "sbg:revisionNotes": "scattered across input_fastq, nthread exposed"
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494861985,
            "sbg:revisionNotes": "scattered across input_fastq"
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502312053,
            "sbg:revisionNotes": "removed scatter across input_fastq"
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502312569,
            "sbg:revisionNotes": "simplified arguments"
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502313267,
            "sbg:revisionNotes": "removed expression requirement"
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502314283,
            "sbg:revisionNotes": "updated input_fastq, no longer an array."
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502318802,
            "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 for output directory control"
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502373121,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502390177,
            "sbg:revisionNotes": null
        }
    ],
    "sbg:projectName": "Dev",
    "outputs": [
        {
            "label": "report_zip",
            "id": "#report_zip",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "ZIP",
            "source": [
                "#FastQC.report_zip"
            ],
            "required": false,
            "sbg:includeInPorts": true,
            "sbg:y": 170,
            "sbg:x": 870
        }
    ],
    "label": "fastqc-0.11.4",
    "steps": [
        {
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "id": "#FastQC",
            "sbg:x": 455,
            "inputs": [
                {
                    "id": "#FastQC.threads",
                    "source": [
                        "#threads"
                    ]
                },
                {
                    "id": "#FastQC.outdir",
                    "default": "."
                },
                {
                    "id": "#FastQC.input_fastq",
                    "source": [
                        "#input_fastq"
                    ]
                }
            ],
            "sbg:y": 166,
            "run": {
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:modifiedOn": 1502318741,
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "sbg:toolkit": "FastQC",
                "baseCommand": [
                    "run-fastqc.sh"
                ],
                "inputs": [
                    {
                        "sbg:toolDefaultValue": "1",
                        "label": "Threads",
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "inputBinding": {
                            "position": 2,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "required": false,
                        "id": "#threads",
                        "sbg:includeInPorts": false,
                        "sbg:category": "Options"
                    },
                    {
                        "sbg:toolDefaultValue": ".",
                        "id": "#outdir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "required": false,
                        "inputBinding": {
                            "position": 3,
                            "separate": true,
                            "sbg:cmdInclude": true
                        }
                    },
                    {
                        "label": "Input file",
                        "description": "Input file.",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "position": 1,
                            "itemSeparator": null,
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "required": true,
                        "id": "#input_fastq",
                        "sbg:category": "File inputs"
                    }
                ],
                "stdout": "",
                "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
                "sbg:revision": 6,
                "label": "FastQC",
                "sbg:toolkitVersion": "0.11.5",
                "id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:image_url": null,
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:latestRevision": 6,
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
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc",
                        "label": "Publication"
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "requirements": [],
                "sbg:sbgMaintained": false,
                "cwlVersion": "sbg:draft-2",
                "sbg:project": "4dn-dcic/dev",
                "y": 166,
                "class": "CommandLineTool",
                "sbg:projectName": "Dev",
                "sbg:validationErrors": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1475785113,
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502312296,
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502312495,
                        "sbg:revisionNotes": "simplified arguments"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502312518,
                        "sbg:revisionNotes": "simplified output"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502313093,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502318718,
                        "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 instead of the original SBG version, for output directory control."
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502318741,
                        "sbg:revisionNotes": null
                    }
                ],
                "stdin": "",
                "sbg:modifiedBy": "4dn-dcic",
                "outputs": [
                    {
                        "label": "Report zip",
                        "description": "Zip archive of the report.",
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "ZIP",
                        "id": "#report_zip",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#input_fastq",
                            "glob": "*_fastqc.zip",
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            }
                        }
                    }
                ],
                "hints": [
                    {
                        "dockerPull": "duplexa/4dn-hic:v32",
                        "dockerImageId": "759c4c8fbafd",
                        "class": "DockerRequirement"
                    },
                    {
                        "value": "",
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": "",
                        "class": "sbg:MemRequirement"
                    }
                ],
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:job": {
                    "inputs": {
                        "outdir": "outdir-string-value",
                        "threads": null,
                        "input_fastq": {
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File",
                            "path": "/path/to/input_fastq.ext"
                        }
                    },
                    "allocatedResources": {
                        "cpu": "",
                        "mem": ""
                    }
                },
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
                "sbg:createdBy": "duplexa",
                "sbg:createdOn": 1475785113,
                "sbg:toolAuthor": "Babraham Institute",
                "arguments": [],
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "x": 455
            }
        }
    ],
    "description": "",
    "sbg:createdBy": "duplexa",
    "sbg:createdOn": 1475785156,
    "requirements": [],
    "sbg:canvas_zoom": 1
}