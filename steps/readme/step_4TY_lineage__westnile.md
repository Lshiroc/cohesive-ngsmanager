# Introduction

4TY_lineage assigns the lineage of West Nile Virus. This analysis is specific for such virus.

This image outlines a bioinformatics pipeline for viral lineage assignment, wherein FASTA files derived from genome assembly or mapping serve as input data, which are processed through specialized tools such as West Nile to determine the specific genetic lineage of viral pathogens.

# Run Analysis 4TY_lineage

Once the analysis 4TY_lineage has been selected from the run analyses interface, the user will be able to select which bioinformatic tool to use. The available tools are:

Westnile - West Nile virus lineage calculation
Westnile is specific for West Nile Virus.

The input selection UI delivers an advanced input selection mode, to allow selection of all types of supported input files at once.

Accepted inputs can be from:

step_2AS_mapping

4TY_lineage requires input sequences from de novo assembly or mapping; if the latter are provided, the reference genome that has been used for mapping will also be required.

# Output directory

The output directory is guida ufficiale di available at the link in the download page or at the link presente in the analysis' summary card, and will have the following structure: results > YEAR > ID > 4TY_lineage > DSXXXXXXXX-DTXXXXXX_westnile. At that path there will be 2 directories:

meta: ("metadata") contains log and configuration files.
result: contains the analysis' output files.

| File | Description | Location |
|------|-------------|----------|
| `DSXXXXXXXX-DTXXXXXX_ID_westnile_lineage.csv` | CSV file with assigned lineage | result directory |
| `DSXXXXXXXX-DTXXXXXX_ID_westnile_lineage_summary.csv` | CSV summary table | result directory |