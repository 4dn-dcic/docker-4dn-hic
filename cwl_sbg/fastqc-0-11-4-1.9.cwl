{
    "class": "Workflow",
    "steps": [
        {
            "id": "#FastQC",
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
                "arguments": [],
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
                "y": 166,
                "class": "CommandLineTool",
                "sbg:sbgMaintained": false,
                "sbg:toolAuthor": "Babraham Institute",
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": "",
                        "cpu": ""
                    },
                    "inputs": {
                        "input_fastq": {
                            "path": "/path/to/input_fastq.ext",
                            "class": "File",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "outdir": "outdir-string-value",
                        "threads": null
                    }
                },
                "sbg:validationErrors": [],
                "successCodes": [],
                "label": "FastQC",
                "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:image_url": null,
                "sbg:latestRevision": 6,
                "hints": [
                    {
                        "dockerImageId": "759c4c8fbafd",
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v32"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": ""
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": ""
                    }
                ],
                "temporaryFailCodes": [],
                "stdin": "",
                "sbg:revision": 6,
                "sbg:createdBy": "duplexa",
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "requirements": [],
                "x": 455,
                "stdout": "",
                "sbg:modifiedBy": "4dn-dcic",
                "id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:createdOn": 1475785113,
                "sbg:project": "4dn-dcic/dev",
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
                "sbg:toolkitVersion": "0.11.5",
                "sbg:modifiedOn": 1502318741,
                "inputs": [
                    {
                        "sbg:includeInPorts": false,
                        "id": "#threads",
                        "label": "Threads",
                        "sbg:category": "Options",
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
                        "sbg:toolDefaultValue": "1",
                        "required": false,
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "sbg:toolDefaultValue": ".",
                        "id": "#outdir",
                        "required": false,
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#input_fastq",
                        "label": "Input file",
                        "sbg:category": "File inputs",
                        "description": "Input file.",
                        "required": true,
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "itemSeparator": null
                        },
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "type": [
                            "File"
                        ]
                    }
                ],
                "sbg:projectName": "Dev",
                "outputs": [
                    {
                        "id": "#report_zip",
                        "label": "Report zip",
                        "sbg:fileTypes": "ZIP",
                        "description": "Zip archive of the report.",
                        "outputBinding": {
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            },
                            "sbg:inheritMetadataFrom": "#input_fastq",
                            "glob": "*_fastqc.zip"
                        },
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "baseCommand": [
                    "run-fastqc.sh"
                ],
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
                "sbg:toolkit": "FastQC",
                "cwlVersion": "sbg:draft-2"
            },
            "sbg:x": 455,
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ]
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:canvas_x": 40,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/fastqc-0-11-4-1/9.png",
    "sbg:validationErrors": [],
    "description": "",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:canvas_zoom": 1,
    "outputs": [
        {
            "sbg:includeInPorts": true,
            "id": "#report_zip",
            "label": "report_zip",
            "sbg:fileTypes": "ZIP",
            "source": [
                "#FastQC.report_zip"
            ],
            "sbg:y": 170,
            "required": false,
            "sbg:x": 870,
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4-1/9",
    "sbg:revision": 9,
    "sbg:createdBy": "duplexa",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4-1/9/raw/",
    "sbg:modifiedOn": 1502373121,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:canvas_y": 13,
    "requirements": [],
    "sbg:createdOn": 1475785156,
    "sbg:project": "4dn-dcic/dev",
    "label": "fastqc-0.11.4",
    "inputs": [
        {
            "id": "#input_fastq",
            "label": "input_fastq",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "sbg:y": 206,
            "sbg:x": 14,
            "type": [
                "File"
            ]
        },
        {
            "sbg:includeInPorts": false,
            "id": "#threads",
            "label": "Threads",
            "sbg:category": "Options",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "sbg:toolDefaultValue": "1",
            "sbg:suggestedValue": null,
            "required": false,
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "sbg:projectName": "Dev",
    "sbg:latestRevision": 10,
    "hints": [],
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
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 9,
            "sbg:modifiedOn": 1502373121,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 10,
            "sbg:modifiedOn": 1502390177,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "cwlVersion": "sbg:draft-2"
}