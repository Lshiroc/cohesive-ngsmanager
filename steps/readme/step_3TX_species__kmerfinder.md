# Introduction

3TX_species assigns the closest bacterial or viral species to the input reads.

This image illustrates a bioinformatics analysis pipeline for taxonomic classification, where assembled genomic scaffolds serve as the input data, which are then analyzed using one of several computational tools— such as Kmerfinder—to determine the precise taxonomic identity of the genetic material.

# Run Analysis 3TX_species

Once the analysis 3TX_species has been selected from the run analyses interface, the user will be able to select which bioinformatic tool to use. The available tool is:

kmerfinder - Prediction of bacterial species using a fast K-mer algorithm (assegnazione di specie batteriche)
3TX_species requires input sequences from de novo assembly or mapping; if the latter are provided, the reference genome that has been used for mapping will also be required.

The input selection UI delivers an advanced input selection mode, to allow selection of all types of supported input files at once.

Accepted inputs can be from:

step_2AS_mapping
step_2AS_denovo


# Output directory

The output directory is available at the link in the download page or at the link presente in the analysis' summary card, and will have the following structure: results > YEAR > ID > 3TX_species > DSXXXXXXXX-DTXXXXXX_kmerfinder. The last directory's suffix will be replaced with the name of the chosen tool. At that path there will be 2 directories:

meta: ("metadata") contains log and configuration files.
result: contains the analysis' output files.
The table below list files produced by tools available for 3TX_species.

| File | Description | Location |
|------|-------------|----------|
| `DSXXXXXXXX-DTXXXXXX_ID_kmerfinder_bacterial.tsv` | File with the assigned bacterial species | Results directory |
| `DSXXXXXXXX-DTXXXXXX_ID_kmerfinder_viral.tsv` | File with the assigned viral species | Results directory |
