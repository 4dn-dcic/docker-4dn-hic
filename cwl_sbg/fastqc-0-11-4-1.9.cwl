{
    "hints": [],
    "sbg:createdBy": "duplexa",
    "sbg:canvas_zoom": 1,
    "cwlVersion": "sbg:draft-2",
    "sbg:canvas_x": 40,
    "sbg:createdOn": 1475785156,
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:sbgMaintained": false,
    "inputs": [
        {
            "sbg:x": 14,
            "type": [
                "File"
            ],
            "sbg:y": 206,
            "label": "input_fastq",
            "id": "#input_fastq",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
        },
        {
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "required": false,
            "type": [
                "null",
                "int"
            ],
            "sbg:suggestedValue": null,
            "sbg:includeInPorts": false,
            "sbg:toolDefaultValue": "1",
            "label": "Threads",
            "sbg:category": "Options",
            "id": "#threads"
        }
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:revision": 9,
    "description": "",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1475785156,
            "sbg:revisionNotes": null,
            "sbg:revision": 0
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1475785232,
            "sbg:revisionNotes": null,
            "sbg:revision": 1
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494861916,
            "sbg:revisionNotes": "scattered across input_fastq, nthread exposed",
            "sbg:revision": 2
        },
        {
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1494861985,
            "sbg:revisionNotes": "scattered across input_fastq",
            "sbg:revision": 3
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502312053,
            "sbg:revisionNotes": "removed scatter across input_fastq",
            "sbg:revision": 4
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502312569,
            "sbg:revisionNotes": "simplified arguments",
            "sbg:revision": 5
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502313267,
            "sbg:revisionNotes": "removed expression requirement",
            "sbg:revision": 6
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502314283,
            "sbg:revisionNotes": "updated input_fastq, no longer an array.",
            "sbg:revision": 7
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502318802,
            "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 for output directory control",
            "sbg:revision": 8
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502373121,
            "sbg:revisionNotes": null,
            "sbg:revision": 9
        },
        {
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502390177,
            "sbg:revisionNotes": null,
            "sbg:revision": 10
        }
    ],
    "sbg:validationErrors": [],
    "sbg:latestRevision": 10,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "class": "Workflow",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:modifiedOn": 1502373121,
    "steps": [
        {
            "run": {
                "y": 166,
                "sbg:toolkitVersion": "0.11.5",
                "sbg:sbgMaintained": false,
                "sbg:createdBy": "duplexa",
                "cwlVersion": "sbg:draft-2",
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "successCodes": [],
                "inputs": [
                    {
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
                        "required": false,
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:includeInPorts": false,
                        "sbg:toolDefaultValue": "1",
                        "label": "Threads",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 2
                        },
                        "sbg:category": "Options",
                        "id": "#threads"
                    },
                    {
                        "sbg:toolDefaultValue": ".",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 3
                        },
                        "required": false,
                        "id": "#outdir",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "required": true,
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "type": [
                            "File"
                        ],
                        "description": "Input file.",
                        "label": "Input file",
                        "inputBinding": {
                            "itemSeparator": null,
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "sbg:category": "File inputs",
                        "id": "#input_fastq"
                    }
                ],
                "sbg:createdOn": 1475785113,
                "temporaryFailCodes": [],
                "x": 455,
                "arguments": [],
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:projectName": "Dev",
                "sbg:project": "4dn-dcic/dev",
                "sbg:revision": 6,
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "duplexa",
                        "sbg:modifiedOn": 1475785113,
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502312296,
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502312495,
                        "sbg:revisionNotes": "simplified arguments",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502312518,
                        "sbg:revisionNotes": "simplified output",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502313093,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502318718,
                        "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 instead of the original SBG version, for output directory control.",
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedBy": "4dn-dcic",
                        "sbg:modifiedOn": 1502318741,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6
                    }
                ],
                "sbg:validationErrors": [],
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:latestRevision": 6,
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:toolAuthor": "Babraham Institute",
                "label": "FastQC",
                "stdin": "",
                "class": "CommandLineTool",
                "stdout": "",
                "sbg:modifiedOn": 1502318741,
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6",
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
                "requirements": [],
                "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
                "outputs": [
                    {
                        "sbg:fileTypes": "ZIP",
                        "type": [
                            "null",
                            "File"
                        ],
                        "description": "Zip archive of the report.",
                        "label": "Report zip",
                        "outputBinding": {
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            },
                            "sbg:inheritMetadataFrom": "#input_fastq",
                            "glob": "*_fastqc.zip"
                        },
                        "id": "#report_zip"
                    }
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "mem": "",
                        "cpu": ""
                    },
                    "inputs": {
                        "outdir": "outdir-string-value",
                        "input_fastq": {
                            "size": 0,
                            "path": "/path/to/input_fastq.ext",
                            "secondaryFiles": [],
                            "class": "File"
                        },
                        "threads": null
                    }
                },
                "baseCommand": [
                    "run-fastqc.sh"
                ],
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:image_url": null,
                "id": "4dn-dcic/dev/fastqc-0-11-4/6",
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
                "sbg:toolkit": "FastQC"
            },
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "sbg:x": 455,
            "sbg:y": 166,
            "inputs": [
                {
                    "id": "#FastQC.threads",
                    "source": [
                        "#threads"
                    ]
                },
                {
                    "default": ".",
                    "id": "#FastQC.outdir"
                },
                {
                    "id": "#FastQC.input_fastq",
                    "source": [
                        "#input_fastq"
                    ]
                }
            ],
            "id": "#FastQC"
        }
    ],
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4-1/9",
    "requirements": [],
    "sbg:canvas_y": 13,
    "outputs": [
        {
            "required": false,
            "sbg:fileTypes": "ZIP",
            "sbg:x": 870,
            "type": [
                "null",
                "File"
            ],
            "sbg:y": 170,
            "label": "report_zip",
            "sbg:includeInPorts": true,
            "id": "#report_zip",
            "source": [
                "#FastQC.report_zip"
            ]
        }
    ],
    "label": "fastqc-0.11.4",
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/fastqc-0-11-4-1/9.png",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4-1/9/raw/",
    "sbg:projectName": "Dev"
}