task bwa_mem_step {
    File fastq1
    File fastq2
    File bwa_index
    String prefix = 'out'
    Int nThreads = 4
    String outdir = '.'
    String output_file_name = outdir + "/" + prefix + '.bam'

    command {
        run-bwa-mem.sh ${fastq1} ${fastq2} ${bwa_index} ${prefix} ${nThreads} ${outdir}
    }

    output {
        File out_bam = "${output_file_name}"
    }

    runtime {
        docker: "duplexa/4dn-hic:v40"
    }
}

workflow bwa_mem {
    call bwa_mem_step
    output {
        bwa_mem_step.out_bam
    }
}

