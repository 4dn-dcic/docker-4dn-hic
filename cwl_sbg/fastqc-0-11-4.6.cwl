{
    "sbg:validationErrors": [],
    "inputs": [
        {
            "id": "#input_fastq",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "label": "Input file",
            "type": [
                "File"
            ],
            "description": "Input file.",
            "sbg:category": "File inputs",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "itemSeparator": null,
                "separate": true,
                "position": 1
            }
        },
        {
            "sbg:category": "Options",
            "type": [
                "null",
                "int"
            ],
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "id": "#threads",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 2
            },
            "sbg:toolDefaultValue": "1",
            "label": "Threads"
        },
        {
            "id": "#outdir",
            "type": [
                "null",
                "string"
            ],
            "sbg:toolDefaultValue": ".",
            "inputBinding": {
                "sbg:cmdInclude": true,
                "separate": true,
                "position": 3
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
            "class": "sbg:CPURequirement",
            "value": ""
        },
        {
            "class": "sbg:MemRequirement",
            "value": ""
        }
    ],
    "sbg:sbgMaintained": false,
    "sbg:latestRevision": 6,
    "sbg:createdBy": "duplexa",
    "stdin": "",
    "baseCommand": [
        "run-fastqc.sh"
    ],
    "sbg:project": "4dn-dcic/dev",
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6",
    "sbg:license": "GNU General Public License v3.0 only",
    "sbg:toolAuthor": "Babraham Institute",
    "sbg:revision": 6,
    "successCodes": [],
    "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
    "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
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
    "sbg:modifiedBy": "4dn-dcic",
    "cwlVersion": "sbg:draft-2",
    "requirements": [],
    "label": "FastQC",
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
            "sbg:fileTypes": "ZIP",
            "label": "Report zip",
            "type": [
                "null",
                "File"
            ],
            "description": "Zip archive of the report.",
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
    "sbg:modifiedOn": 1502318741,
    "sbg:job": {
        "inputs": {
            "outdir": "outdir-string-value",
            "threads": null,
            "input_fastq": {
                "size": 0,
                "secondaryFiles": [],
                "class": "File",
                "path": "/path/to/input_fastq.ext"
            }
        },
        "allocatedResources": {
            "cpu": "",
            "mem": ""
        }
    },
    "arguments": [],
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4/6/raw/",
    "class": "CommandLineTool",
    "stdout": "",
    "sbg:createdOn": 1475785113,
    "temporaryFailCodes": [],
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "sbg:toolkitVersion": "0.11.5",
    "sbg:categories": [
        "FASTQ-Processing",
        "Quality-Control",
        "Quantification"
    ],
    "sbg:image_url": null,
    "sbg:toolkit": "FastQC",
    "sbg:appVersion": [
        "sbg:draft-2"
    ]
}