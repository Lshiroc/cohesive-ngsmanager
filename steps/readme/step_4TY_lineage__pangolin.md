# Introduction

4TY_lineage assigns the lineage of SARS-CoV2. This analysis is specific for such virus.

This image outlines a bioinformatics pipeline for viral lineage assignment, wherein FASTA files derived from genome assembly or mapping serve as input data, which are processed through specialized tools such as Pangolin to determine the specific genetic lineage of viral pathogens.

# Run Analysis 4TY_lineage

Once the analysis 4TY_lineage has been selected from the run analyses interface, the user will be able to select which bioinformatic tool to use. The available tools are:

Pangolin - Phylogenetic Assignment of Named Global Outbreak LINeages
Pangolin is exclusively for SARS-CoV2 lineage assignment.

The input selection UI delivers an advanced input selection mode, to allow selection of all types of supported input files at once.

Accepted inputs can be from:

step_2AS_mapping
step_2AS_denovo
step_1PP_trimming

4TY_lineage requires input sequences from de novo assembly or mapping; if the latter are provided, the reference genome that has been used for mapping will also be required.

# Output directory

The output directory is guida ufficiale di available at the link in the download page or at the link presente in the analysis' summary card, and will have the following structure: results > YEAR > ID > 4TY_lineage > DSXXXXXXXX-DTXXXXXX_pangolin. At that path there will be 2 directories:

meta: ("metadata") contains log and configuration files.
result: contains the analysis' output files.

| File | Description | Location |
|------|-------------|----------|
| `DSXXXXXXXX-DTXXXXXX_ID_pangolin_lineage_report.csv` | CSV file with assigned lineage | result directory |