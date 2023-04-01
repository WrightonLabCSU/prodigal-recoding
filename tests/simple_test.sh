prodigal -i data/NC_001422.fasta -p meta -g 11 -f gff -o genes_actual.gff -a genes_actual.faa -d genes_actual.fna
diff genes_actual.gff data/genes.gff
diff genes_actual.faa data/genes.faa
diff genes_actual.fna data/genes.fna
rm genes_actual*
