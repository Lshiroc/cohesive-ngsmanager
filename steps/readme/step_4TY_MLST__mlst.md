# Introduction

4TY_MLST performs the in silico Multi Locus Sequence Typing, which assigns Sequence Type (ST) and Clonal Complex (CC), where applicable.

This image depicts a bacterial typing workflow where FASTA files containing genomic sequences serve as input for the Mist tool, which performs molecular typing analysis to determine both Clonal Complex (CC) and Sequence Type (ST) classifications as its primary output.

# Run Analysis 4TY_MLST

Once the analysis 4TY_MLST has been selected from the run analyses interface, the user will be able to select which bioinformatic tool to use. The tool available for this analysis is mlst - In vitro Multi-Locus Sequence Typing.

The input selection UI delivers an advanced input selection mode, to allow selection of all types of supported input files at once.

Accepted inputs can be from:

step_2AS_mapping
step_2AS_denovo
4TY_MLST requires input sequences from de novo assembly or mapping; if the latter are provided, the reference genome that has been used for mapping will also be required.

# Output directory

The output directory is guida ufficiale di available at the link in the download page or at the link presente in the analysis' summary card, and will have the following structure: results > YEAR > ID > 4TY_MLST > DSXXXXXXXX-DTXXXXXX_mlst. At that path there will be 2 directories:

meta: ("metadata") contains log and configuration files.
result: contains the analysis' output files.
The table below lists output files and some useful information.

| File | Description | Location |
|------|-------------|----------|
| `DSXXXXXXXX-DTXXXXXX_ID_mlst.tsv` | Results of locus calls for MLST | result directory |
| `DSXXXXXXXX-DTXXXXXX_ID_mlst_cc.csv` | Results with assigned CC | result directory |