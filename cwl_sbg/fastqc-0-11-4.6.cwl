{
    "sbg:createdOn": 1475785113,
    "arguments": [],
    "sbg:sbgMaintained": false,
    "sbg:revision": 6,
    "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
    "sbg:toolkitVersion": "0.11.5",
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
    "sbg:latestRevision": 6,
    "hints": [
        {
            "dockerPull": "duplexa/4dn-hic:v32",
            "dockerImageId": "759c4c8fbafd",
            "class": "DockerRequirement"
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
    "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
    "requirements": [],
    "sbg:modifiedBy": "4dn-dcic",
    "class": "CommandLineTool",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "label": "FastQC",
    "sbg:toolkit": "FastQC",
    "sbg:image_url": null,
    "sbg:createdBy": "duplexa",
    "sbg:job": {
        "allocatedResources": {
            "mem": "",
            "cpu": ""
        },
        "inputs": {
            "input_fastq": {
                "path": "/path/to/input_fastq.ext",
                "secondaryFiles": [],
                "class": "File",
                "size": 0
            },
            "threads": null,
            "outdir": "outdir-string-value"
        }
    },
    "sbg:license": "GNU General Public License v3.0 only",
    "sbg:contributors": [
        "duplexa",
        "4dn-dcic"
    ],
    "sbg:toolAuthor": "Babraham Institute",
    "sbg:validationErrors": [],
    "sbg:project": "4dn-dcic/dev",
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "stdin": "",
    "successCodes": [],
    "sbg:modifiedOn": 1502318741,
    "inputs": [
        {
            "description": "Input file.",
            "id": "#input_fastq",
            "sbg:category": "File inputs",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 1,
                "itemSeparator": null
            },
            "label": "Input file",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ"
        },
        {
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "id": "#threads",
            "sbg:category": "Options",
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 2
            },
            "label": "Threads",
            "sbg:toolDefaultValue": "1",
            "type": [
                "null",
                "int"
            ]
        },
        {
            "sbg:toolDefaultValue": ".",
            "id": "#outdir",
            "type": [
                "null",
                "string"
            ],
            "inputBinding": {
                "separate": true,
                "sbg:cmdInclude": true,
                "position": 3
            }
        }
    ],
    "sbg:projectName": "Dev",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4/6/raw/",
    "temporaryFailCodes": [],
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12",
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa",
            "sbg:modifiedOn": 1475785113
        },
        {
            "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18",
            "sbg:revision": 1,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502312296
        },
        {
            "sbg:revisionNotes": "simplified arguments",
            "sbg:revision": 2,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502312495
        },
        {
            "sbg:revisionNotes": "simplified output",
            "sbg:revision": 3,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502312518
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502313093
        },
        {
            "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 instead of the original SBG version, for output directory control.",
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502318718
        },
        {
            "sbg:revisionNotes": null,
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic",
            "sbg:modifiedOn": 1502318741
        }
    ],
    "stdout": "",
    "cwlVersion": "sbg:draft-2",
    "outputs": [
        {
            "description": "Zip archive of the report.",
            "outputBinding": {
                "glob": "*_fastqc.zip",
                "sbg:inheritMetadataFrom": "#input_fastq",
                "sbg:metadata": {
                    "__inherit__": "input_fastq"
                }
            },
            "sbg:fileTypes": "ZIP",
            "label": "Report zip",
            "type": [
                "null",
                "File"
            ],
            "id": "#report_zip"
        }
    ],
    "sbg:categories": [
        "FASTQ-Processing",
        "Quality-Control",
        "Quantification"
    ],
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6"
}