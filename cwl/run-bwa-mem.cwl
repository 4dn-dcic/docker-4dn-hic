cwlVersion: cwl:draft-3
class: CommandLineTool
hints:
  - class: DockerRequirement
    dockerPull: duplexa/4dn-hic:v7
baseCommand: run-bwa-mem.sh
inputs:
  - id: input_fastq1
    type: File
    inputBinding:
      position: 1
  - id: input_fastq2
    type: File
    inputBinding:
      position: 2
  - id: bwaIndex
    type: File
    inputBinding:
      position: 3
  - id: output_prefix
    type: string
    default: 'out'
    inputBinding:
      position: 4
  - id: nThreads
    type: int
    default: 8
    inputBinding:
      position: 5
  - id: output_dir
    type: string
    default: '.'
outputs:
  - id: output_bam
    type: File
    outputBinding:
      glob: $(inputs.output_dir + '/' + inputs.output_prefix.bam')

requirements:
  - class: InlineJavascriptRequirement
