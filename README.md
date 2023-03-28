# Prodigal-recoding

A fork of [Prodigal](https://www.github.com/hyattpd/Prodigal/) that allows
read-through and translation of amber, ochre, and/or opal codons for single
genomes using the standard bacterial/archaeal genetic code
(translation table 11).

```bash
prodigal-recoding -i my.genome.fna -o my.genes -a my.proteins.faa
prodigal-recoding -i my.genome.fna -o my.genes -a my.proteins.faa -r amber
prodigal-recoding -i my.metagenome.fna -o my.genes -a my.proteins.faa -p meta
prodigal-recoding -h
```

### New in 2.6.4-recoding (March 2023)
  * Allow specification of amber, ochre, and/or opal read-through modes for
standard bacterial/archaeal genetic code (translation table 11) and either
normal or training mode (NOT anonymous/metagenomic).

### Getting Started

Depending on future development, pre-built binaries may be provided as part of official 
releases. However, Prodigal can always be built from source (note that on Windows, Cygwin 
or MinGW will be required):

```bash
$ git clone https://github.com/dmitrisvetlov/prodigal-recoding.git
$ cd prodigal-recoding
$ make install
```

  For more detail, see [Installing Prodigal](https://www.github.com/hyattpd/Prodigal/wiki/installation).

  To see a complete list of options:

```bash
$ prodigal-recoding -h
```

### Features

  * **Predicts protein-coding genes**: Prodigal provides fast, accurate protein-coding gene predictions in GFF3, Genbank, or Sequin table format.
  * **Handles draft genomes and metagenomes**: Prodigal runs smoothly on finished genomes, draft genomes, and metagenomes.
  * **Runs quickly**: Prodigal analyzes the *E. coli K-12* genome in 10 seconds on a modern MacBook Pro.
  * **Runs unsupervised**: Prodigal is an unsupervised machine learning algorithm.  It does not need to be provided with any training data, and instead automatically learns the properties of the genome from the sequence itself, including RBS motif usage, start codon usage, and coding statistics.
  * **Handles gaps and partial genes**: The user can specify if Prodigal should build genes across runs of N's as well as how to handle genes at the edges of contigs.
  * **Identifies translation initiation sites**: Prodigal predicts the correct translation initiation site for most genes, and can output information about every potential start site in the genome, including confidence score, RBS motif, and much more.

#### Contributors

Prodigal was written by [Doug Hyatt](https://github.com/hyattpd/) and its usage should be acknowledged.

> Hyatt, D., Chen, G.-L., LoCascio, P.F., Land, M.L., Larimer, F.W., and Hauser, L.J. (2010). [Prodigal: prokaryotic gene recognition and translation initiation site identification](https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-11-119). BMC Bioinformatics *11*, 119.

The modifications made in `prodigal-recoding` were made by [Dmitri Svetlov](https://github.com/dmitrisvetlov/).

#### License

  [GPL](LICENSE)
