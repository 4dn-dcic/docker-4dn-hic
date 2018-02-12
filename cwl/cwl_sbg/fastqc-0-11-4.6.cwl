{
    "sbg:createdBy": "duplexa",
    "sbg:image_url": null,
    "sbg:latestRevision": 6,
    "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
    "sbg:toolAuthor": "Babraham Institute",
    "sbg:validationErrors": [],
    "sbg:revision": 6,
    "successCodes": [],
    "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
    "requirements": [],
    "sbg:toolkit": "FastQC",
    "sbg:modifiedOn": 1502318741,
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:projectName": "Dev",
    "class": "CommandLineTool",
    "sbg:categories": [
        "FASTQ-Processing",
        "Quality-Control",
        "Quantification"
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "glob": "*_fastqc.zip",
                "sbg:metadata": {
                    "__inherit__": "input_fastq"
                },
                "sbg:inheritMetadataFrom": "#input_fastq"
            },
            "label": "Report zip",
            "sbg:fileTypes": "ZIP",
            "id": "#report_zip",
            "description": "Zip archive of the report."
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
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
    "cwlVersion": "sbg:draft-2",
    "label": "FastQC",
    "sbg:sbgMaintained": false,
    "stdin": "",
    "sbg:license": "GNU General Public License v3.0 only",
    "sbg:project": "4dn-dcic/dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4/6/raw/",
    "stdout": "",
    "arguments": [],
    "sbg:createdOn": 1475785113,
    "sbg:toolkitVersion": "0.11.5",
    "inputs": [
        {
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "type": [
                "File"
            ],
            "label": "Input file",
            "inputBinding": {
                "position": 1,
                "separate": true,
                "itemSeparator": null,
                "sbg:cmdInclude": true
            },
            "sbg:category": "File inputs",
            "id": "#input_fastq",
            "description": "Input file."
        },
        {
            "sbg:toolDefaultValue": "1",
            "type": [
                "null",
                "int"
            ],
            "label": "Threads",
            "inputBinding": {
                "position": 2,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:category": "Options",
            "id": "#threads",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine."
        },
        {
            "inputBinding": {
                "position": 3,
                "separate": true,
                "sbg:cmdInclude": true
            },
            "sbg:toolDefaultValue": ".",
            "type": [
                "null",
                "string"
            ],
            "id": "#outdir"
        }
    ],
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6",
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "temporaryFailCodes": [],
    "sbg:job": {
        "allocatedResources": {
            "mem": "",
            "cpu": ""
        },
        "inputs": {
            "input_fastq": {
                "secondaryFiles": [],
                "path": "/path/to/input_fastq.ext",
                "size": 0,
                "class": "File"
            },
            "threads": null,
            "outdir": "outdir-string-value"
        }
    },
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1475785113,
            "sbg:modifiedBy": "duplexa",
            "sbg:revision": 0,
            "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12"
        },
        {
            "sbg:modifiedOn": 1502312296,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 1,
            "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18"
        },
        {
            "sbg:modifiedOn": 1502312495,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 2,
            "sbg:revisionNotes": "simplified arguments"
        },
        {
            "sbg:modifiedOn": 1502312518,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 3,
            "sbg:revisionNotes": "simplified output"
        },
        {
            "sbg:modifiedOn": 1502313093,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 4,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1502318718,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 5,
            "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 instead of the original SBG version, for output directory control."
        },
        {
            "sbg:modifiedOn": 1502318741,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revision": 6,
            "sbg:revisionNotes": null
        }
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
            "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc",
            "label": "Publication"
        }
    ]
}