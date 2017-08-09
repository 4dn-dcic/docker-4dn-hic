{
    "sbg:createdBy": "duplexa",
    "cwlVersion": "sbg:draft-2",
    "class": "Workflow",
    "requirements": [],
    "sbg:modifiedOn": 1502318802,
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4-1/8/raw/",
    "sbg:sbgMaintained": false,
    "sbg:project": "4dn-dcic/dev",
    "sbg:revision": 8,
    "steps": [
        {
            "id": "#FastQC",
            "run": {
                "sbg:createdBy": "duplexa",
                "stdout": "",
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "arguments": [],
                "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "requirements": [],
                "sbg:job": {
                    "inputs": {
                        "threads": null,
                        "outdir": "outdir-string-value",
                        "input_fastq": {
                            "path": "/path/to/input_fastq.ext",
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0
                        }
                    },
                    "allocatedResources": {
                        "cpu": "",
                        "mem": ""
                    }
                },
                "sbg:modifiedOn": 1502318741,
                "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4/6/raw/",
                "sbg:sbgMaintained": false,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12",
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1475785113,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18",
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1502312296,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": "simplified arguments",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1502312495,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": "simplified output",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1502312518,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1502313093,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 instead of the original SBG version, for output directory control.",
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1502318718,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1502318741,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:toolkit": "FastQC",
                "temporaryFailCodes": [],
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
                "sbg:license": "GNU General Public License v3.0 only",
                "hints": [
                    {
                        "dockerImageId": "759c4c8fbafd",
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v32"
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
                "sbg:revision": 6,
                "sbg:latestRevision": 6,
                "successCodes": [],
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "label": "FastQC",
                "sbg:toolAuthor": "Babraham Institute",
                "inputs": [
                    {
                        "id": "#input_fastq",
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "label": "Input file",
                        "sbg:category": "File inputs",
                        "type": [
                            "File"
                        ],
                        "description": "Input file.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "itemSeparator": null
                        }
                    },
                    {
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
                        "id": "#threads",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "label": "Threads",
                        "sbg:category": "Options",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "1"
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "id": "#outdir",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        },
                        "sbg:toolDefaultValue": "."
                    }
                ],
                "baseCommand": [
                    "run-fastqc.sh"
                ],
                "sbg:createdOn": 1475785113,
                "sbg:image_url": null,
                "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
                "sbg:validationErrors": [],
                "sbg:projectName": "Dev",
                "sbg:toolkitVersion": "0.11.5",
                "class": "CommandLineTool",
                "sbg:project": "4dn-dcic/dev",
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
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:modifiedBy": "4dn-dcic",
                "outputs": [
                    {
                        "id": "#report_zip",
                        "sbg:fileTypes": "ZIP",
                        "label": "Report zip",
                        "description": "Zip archive of the report.",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#input_fastq",
                            "glob": "*_fastqc.zip",
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            }
                        }
                    }
                ]
            },
            "sbg:y": 166,
            "sbg:x": 455,
            "inputs": [
                {
                    "id": "#FastQC.input_fastq",
                    "source": [
                        "#input_fastq"
                    ]
                },
                {
                    "id": "#FastQC.threads",
                    "source": [
                        "#threads"
                    ]
                },
                {
                    "id": "#FastQC.outdir",
                    "default": "."
                }
            ],
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ]
        }
    ],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:canvas_zoom": 1,
    "description": "",
    "hints": [],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:canvas_y": 13,
    "sbg:latestRevision": 8,
    "label": "fastqc-0.11.4",
    "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 for output directory control",
    "inputs": [
        {
            "id": "#input_fastq",
            "sbg:y": 206,
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "label": "input_fastq",
            "type": [
                "File"
            ],
            "sbg:x": 14
        },
        {
            "required": false,
            "id": "#threads",
            "sbg:altPrefix": "-t",
            "label": "Threads",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "type": [
                "null",
                "int"
            ],
            "sbg:includeInPorts": false
        }
    ],
    "sbg:createdOn": 1475785156,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/fastqc-0-11-4-1/8.png",
    "sbg:validationErrors": [],
    "sbg:projectName": "Dev",
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4-1/8",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1475785156,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1475785232,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": "scattered across input_fastq, nthread exposed",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1494861916,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": "scattered across input_fastq",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1494861985,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": "removed scatter across input_fastq",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1502312053,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "simplified arguments",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1502312569,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "removed expression requirement",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1502313267,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "updated input_fastq, no longer an array.",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1502314283,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 for output directory control",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1502318802,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:canvas_x": 40,
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "outputs": [
        {
            "required": false,
            "id": "#report_zip",
            "sbg:fileTypes": "ZIP",
            "sbg:x": 870,
            "label": "report_zip",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "sbg:y": 170,
            "source": [
                "#FastQC.report_zip"
            ]
        }
    ]
}