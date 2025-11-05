# Introduction

4AN_genes performs functional genome annotation, which identifies possible coded proteins and ORFs.

This image outlines a genomic annotation workflow where FASTA format sequences, derived from either mapping or de novo assembly, serve as the input for the Prokka software tool, which subsequently generates a comprehensive set of annotated genes as its primary output.

# Run Analysis 4AN_genes

Once the analysis 4AN_genes has been selected from the run analyses interface, the user will be able to select which bioinformatic tool to use. The only available tool for this analysis is Prokka - Tool to annotate bacterial, archaeal and viral genomes.

The input selection UI delivers an advanced input selection mode, to allow selection of all types of supported input files at once.

The first required parameter is the kingdom (i.e. virus or bacteria, plus "host", an artificial group which includes possible host organisms). The second parameter is a reference genome.

Accepted inputs can be from:

step_2AS_mapping
step_2AS_denovo
If output from mapping is provided, the reference genome that has been used for mapping will also be required.


# Output directory

The output directory is available at the link in the download page or at the link presente in the analysis' summary card, and will have the following structure: results > YEAR > ID > 4AN_genes > DSXXXXXXXX-DTXXXXXX_prokka. At that path there will be 2 directories:

meta: ("metadata") contains log and configuration files.
result: contains the analysis' output files.
The following table lists Prokka's output files.

| File | Description | Location |
| :--- | :--- | :--- |
| `log_errore_controlli_esami.log` | Run's warning and error log | main directory |
| `metadata_samples.tsv` | Samples' metadata summary table in TSV format | main directory |
| `results.csv` | Summary table separated by semicolon (";") containing sample IDs and information | main directory |
| `DSXXXXXXXX-DTXXXXXX_ID_prokka_REFID_result.err` | Text report file with run's errors | results directory |
| `DSXXXXXXXX-DTXXXXXX_ID_prokka_REFID_result.faa` | Amino acid sequences from translation of identified coding genes (FAA format - FASTA amino acid) | results directory |
| `DSXXXXXXXX-DTXXXXXX_ID_prokka_REFID_result.ffn` | Nucleotide sequences of identified coding genes (FFN format - FASTA nucleotide) | results directory |
| `DSXXXXXXXX-DTXXXXXX_ID_prokka_REFID_result.fna` | Nucleotide sequences of identified coding genes (FNA format) | results directory |
| `DSXXXXXXXX-DTXXXXXX_ID_prokka_REFID_result.fsa` | Sequences in FSA format (fragment analysis data file) | results directory |
| `DSXXXXXXXX-DTXXXXXX_ID_prokka_REFID_result.gbk` | Output file in GenBank format | results directory |
| `DSXXXXXXXX-DTXXXXXX_ID_prokka_REFID_result.gff` | Output file in GFF format (General Feature Format) | results directory |
| `DSXXXXXXXX-DTXXXXXX_ID_prokka_REFID_result.log` | Prokka's run log | results directory |
| `DSXXXXXXXX-DTXXXXXX_ID_prokka_REFID_result.sqn` | File for submission to GenBank in Sequin format | results directory |
| `DSXXXXXXXX-DTXXXXXX_ID_prokka_REFID_result.tbl` | Text file with information on sequence and loci | results directory |
| `DSXXXXXXXX-DTXXXXXX_ID_prokka_REFID_result.tsv` | TSV list of loci and proteins from mapped coding genes | results directory |
| `DSXXXXXXXX-DTXXXXXX_ID_prokka_REFID_result.txt` | Metrics on identified CDS | results directory |
| `proteins.faa` | Protein sequences in FAA format | results directory |