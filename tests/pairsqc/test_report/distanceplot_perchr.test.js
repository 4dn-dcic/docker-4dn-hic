d3.tsv('./tsvcol.d3div_contact_frequency_vs_genomic_separation_per_chr_test___.tsv', function(tsvcolumns) {
interactive_multiline_plot('./test.plot_table.out', tsvcolumns, 3.5,7,-13.08,-8.779, 'log10 genomic separation', 'log10 contact frequency', 'd3div_contact_frequency_vs_genomic_separation_per_chr_test___');
});
