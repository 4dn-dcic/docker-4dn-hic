task bwa_mem_step {
    File fastq1
    File fastq2
    File bwa_index
    Int nThreads
    String prefix = 'out'
    String outdir = '.'

    command {
        run-bwa-mem.sh ${fastq1} ${fastq2} ${bwa_index} ${outdir} ${prefix} ${nThreads}
        ls ${outdir}
    }

    output {
        File out_bam = "${outdir}/${prefix}.bam"
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

