# Introduction

3TX_class performs taxonomic classification of organisms and checks for contamination.

The image shows a standard bioinformatics pipeline where trimmed sequencing reads serve as input to various taxonomic classification tools (kraken), which then produce taxonomic classification results identifying microorganisms present in the sample.

# Run Analysis 3TX_class

Once the analysis 3TX_class has been selected from the run analyses interface, the user will be able to select which bioinformatic tool to use. The available tools are listed below.

kraken - System for assigning taxonomic labels to short DNA sequences (version 1)
The input selection UI delivers an advanced input selection mode, to allow selection of all types of supported input files at once.

Accepted inputs can be from:

step_1PP_trimming
step_1PP_hostdepl

# Output directory

The output directory is available at the link in the download page or at the link presente in the analysis' summary card, and will have the following structure: results > YEAR > ID > 3TX_class > DSXXXXXXXX-DTXXXXXX_kraken. The last directory's suffix will be replaced with the name of the chosen tool. At that path there will be 2 directories:

meta: ("metadata") contains log and configuration files.
result: contains the analysis' output files.
The tables below list files produced by available tools. For more details on Kraken and Kraken2's output files, please refer to kraken's official manual and Kraken2's help sheet.

| File | Description | Location |
|------|-------------|----------|
| `DSXXXXXXXX-DTXXXXXX_ID_kraken.tsv` | Kraken's taxonomic classification file | results directory |