{
    "sbg:canvas_y": 13,
    "sbg:sbgMaintained": false,
    "sbg:revision": 9,
    "sbg:createdBy": "duplexa",
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1475785156,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1475785232,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": "scattered across input_fastq, nthread exposed",
            "sbg:modifiedOn": 1494861916,
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": "scattered across input_fastq",
            "sbg:modifiedOn": 1494861985,
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:revisionNotes": "removed scatter across input_fastq",
            "sbg:modifiedOn": 1502312053,
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "simplified arguments",
            "sbg:modifiedOn": 1502312569,
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "removed expression requirement",
            "sbg:modifiedOn": 1502313267,
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "updated input_fastq, no longer an array.",
            "sbg:modifiedOn": 1502314283,
            "sbg:revision": 7,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 for output directory control",
            "sbg:modifiedOn": 1502318802,
            "sbg:revision": 8,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1502373121,
            "sbg:revision": 9,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1502390177,
            "sbg:revision": 10,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:modifiedOn": 1502373121,
    "sbg:createdOn": 1475785156,
    "sbg:validationErrors": [],
    "outputs": [
        {
            "label": "report_zip",
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 170,
            "sbg:x": 870,
            "required": false,
            "sbg:fileTypes": "ZIP",
            "sbg:includeInPorts": true,
            "id": "#report_zip",
            "source": [
                "#FastQC.report_zip"
            ]
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "requirements": [],
    "cwlVersion": "sbg:draft-2",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4-1/9/raw/",
    "sbg:canvas_x": 40,
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4-1/9",
    "sbg:latestRevision": 10,
    "class": "Workflow",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:canvas_zoom": 1,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/fastqc-0-11-4-1/9.png",
    "label": "fastqc-0.11.4",
    "steps": [
        {
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "sbg:x": 455,
            "id": "#FastQC",
            "run": {
                "arguments": [],
                "sbg:sbgMaintained": false,
                "sbg:latestRevision": 6,
                "stdout": "",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:createdBy": "duplexa",
                "temporaryFailCodes": [],
                "sbg:toolAuthor": "Babraham Institute",
                "sbg:createdOn": 1475785113,
                "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:validationErrors": [],
                "sbg:toolkitVersion": "0.11.5",
                "y": 166,
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:project": "4dn-dcic/dev",
                "sbg:license": "GNU General Public License v3.0 only",
                "cwlVersion": "sbg:draft-2",
                "label": "FastQC",
                "sbg:projectName": "Dev",
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
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc"
                    }
                ],
                "sbg:image_url": null,
                "sbg:revision": 6,
                "stdin": "",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": "",
                        "cpu": ""
                    },
                    "inputs": {
                        "input_fastq": {
                            "size": 0,
                            "class": "File",
                            "secondaryFiles": [],
                            "path": "/path/to/input_fastq.ext"
                        },
                        "outdir": "outdir-string-value",
                        "threads": null
                    }
                },
                "id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "class": "CommandLineTool",
                "requirements": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "baseCommand": [
                    "run-fastqc.sh"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12",
                        "sbg:modifiedOn": 1475785113,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18",
                        "sbg:modifiedOn": 1502312296,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": "simplified arguments",
                        "sbg:modifiedOn": 1502312495,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": "simplified output",
                        "sbg:modifiedOn": 1502312518,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1502313093,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 instead of the original SBG version, for output directory control.",
                        "sbg:modifiedOn": 1502318718,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1502318741,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "outputs": [
                    {
                        "label": "Report zip",
                        "type": [
                            "null",
                            "File"
                        ],
                        "id": "#report_zip",
                        "sbg:fileTypes": "ZIP",
                        "outputBinding": {
                            "glob": "*_fastqc.zip",
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            },
                            "sbg:inheritMetadataFrom": "#input_fastq"
                        },
                        "description": "Zip archive of the report."
                    }
                ],
                "sbg:toolkit": "FastQC",
                "inputs": [
                    {
                        "label": "Threads",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Options",
                        "id": "#threads",
                        "required": false,
                        "sbg:includeInPorts": false,
                        "inputBinding": {
                            "separate": true,
                            "position": 2,
                            "sbg:cmdInclude": true
                        },
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
                        "sbg:toolDefaultValue": "1"
                    },
                    {
                        "type": [
                            "null",
                            "string"
                        ],
                        "inputBinding": {
                            "separate": true,
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "id": "#outdir",
                        "required": false,
                        "sbg:toolDefaultValue": "."
                    },
                    {
                        "label": "Input file",
                        "type": [
                            "File"
                        ],
                        "sbg:category": "File inputs",
                        "id": "#input_fastq",
                        "required": true,
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "inputBinding": {
                            "separate": true,
                            "position": 1,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "description": "Input file."
                    }
                ],
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "successCodes": [],
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/fastqc-0-11-4/6",
                "hints": [
                    {
                        "dockerImageId": "759c4c8fbafd",
                        "dockerPull": "duplexa/4dn-hic:v32",
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
                "x": 455,
                "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
                "sbg:modifiedOn": 1502318741
            },
            "sbg:y": 166,
            "inputs": [
                {
                    "source": [
                        "#threads"
                    ],
                    "id": "#FastQC.threads"
                },
                {
                    "id": "#FastQC.outdir",
                    "default": "."
                },
                {
                    "source": [
                        "#input_fastq"
                    ],
                    "id": "#FastQC.input_fastq"
                }
            ]
        }
    ],
    "hints": [],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:projectName": "Dev",
    "description": "",
    "inputs": [
        {
            "label": "input_fastq",
            "type": [
                "File"
            ],
            "sbg:y": 206,
            "sbg:x": 14,
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "id": "#input_fastq"
        },
        {
            "label": "Threads",
            "type": [
                "null",
                "int"
            ],
            "sbg:suggestedValue": null,
            "id": "#threads",
            "required": false,
            "sbg:category": "Options",
            "sbg:includeInPorts": false,
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "sbg:toolDefaultValue": "1"
        }
    ]
}