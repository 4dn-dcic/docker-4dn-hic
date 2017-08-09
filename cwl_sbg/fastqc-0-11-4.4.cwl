{
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/4",
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
    "sbg:project": "4dn-dcic/dev",
    "sbg:cmdPreview": "fastqc  /path/to/input_fastq.ext",
    "sbg:toolkit": "FastQC",
    "sbg:toolkitVersion": "0.11.4",
    "sbg:createdOn": 1475785113,
    "stdin": "",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:image_url": null,
    "sbg:toolAuthor": "Babraham Institute",
    "sbg:categories": [
        "FASTQ-Processing",
        "Quality-Control",
        "Quantification"
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:validationErrors": [],
    "sbg:license": "GNU General Public License v3.0 only",
    "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "arguments": [],
    "sbg:modifiedOn": 1502313093,
    "inputs": [
        {
            "label": "Input file",
            "sbg:category": "File inputs",
            "description": "Input file.",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "type": [
                "File"
            ],
            "inputBinding": {
                "position": 2,
                "sbg:cmdInclude": true,
                "itemSeparator": null,
                "separate": true
            },
            "id": "#input_fastq"
        },
        {
            "label": "Threads",
            "sbg:category": "Options",
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "sbg:toolDefaultValue": "1",
            "sbg:altPrefix": "-t",
            "type": [
                "null",
                "int"
            ],
            "inputBinding": {
                "position": 1,
                "sbg:cmdInclude": true,
                "prefix": "--threads",
                "separate": true
            },
            "id": "#threads"
        }
    ],
    "sbg:latestRevision": 4,
    "temporaryFailCodes": [],
    "sbg:projectName": "Dev",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1475785113,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12"
        },
        {
            "sbg:modifiedOn": 1502312296,
            "sbg:revision": 1,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18"
        },
        {
            "sbg:modifiedOn": 1502312495,
            "sbg:revision": 2,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "simplified arguments"
        },
        {
            "sbg:modifiedOn": 1502312518,
            "sbg:revision": 3,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": "simplified output"
        },
        {
            "sbg:modifiedOn": 1502313093,
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:revisionNotes": null
        }
    ],
    "baseCommand": [
        "fastqc"
    ],
    "sbg:job": {
        "inputs": {
            "input_fastq": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_fastq.ext"
            },
            "threads": null
        },
        "allocatedResources": {
            "mem": "",
            "cpu": ""
        }
    },
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4/4/raw/",
    "label": "FastQC",
    "hints": [
        {
            "dockerImageId": "759c4c8fbafd",
            "dockerPull": "images.sbgenomics.com/mladenlsbg/fastqc:0.11.4",
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
    "sbg:createdBy": "duplexa",
    "stdout": "",
    "outputs": [
        {
            "label": "Report zip",
            "description": "Zip archive of the report.",
            "sbg:fileTypes": "ZIP",
            "type": [
                "null",
                "File"
            ],
            "outputBinding": {
                "sbg:inheritMetadataFrom": "#input_fastq",
                "sbg:metadata": {
                    "__inherit__": "input_fastq"
                },
                "glob": "*_fastqc.zip"
            },
            "id": "#report_zip"
        }
    ],
    "sbg:revision": 4,
    "requirements": [],
    "sbg:sbgMaintained": false,
    "successCodes": [],
    "class": "CommandLineTool"
}