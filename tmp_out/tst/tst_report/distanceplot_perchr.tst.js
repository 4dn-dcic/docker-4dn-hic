d3.tsv('./tsvcol.d3div_contact_frequency_vs_genomic_separation_per_chr_tst___.tsv', function(tsvcolumns) {
interactive_multiline_plot('./tst.plot_table.out', tsvcolumns, 3.5,7,-13.441,-9.639, 'log10 genomic separation', 'log10 contact frequency', 'd3div_contact_frequency_vs_genomic_separation_per_chr_tst___');
});
