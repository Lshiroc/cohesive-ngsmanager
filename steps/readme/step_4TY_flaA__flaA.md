# Introduction

The 4TY_flaA analysis infers in silico the flaA locus variant for Campylobacter.

This image illustrates a targeted genetic analysis workflow in which FASTA files derived from de novo assembly serve as input for a specialized flaA gene analysis tool, which identifies and characterizes specific variants within the flaA locus to determine sequence variations or subtypes.

# Run Analysis 4TY_flaA

Once the analysis 4TY_flaA has been selected from the run analyses interface, the user will be able to select which bioinformatic tool to use. The available software for this analysis is flaA - Multilocus sequence typing specific for flaA profile.

The input selection UI delivers an advanced input selection mode, to allow selection of all types of supported input files at once.

Accepted inputs can be from:

step_2MG_denovo
step_2AS_denovo
step_2AS_mapping
step_2AS_import
The software requires the input sequences from de novo assembly or from mapping and, in case the latter is selected, the reference genome used for mapping.


# Output directory

The output directory is guida ufficiale di available at the link in the download page or at the link presente in the analysis' summary card, and will have the following structure: results > YEAR > ID > 4TY_flaA > DSXXXXXXXX-DTXXXXXX_flaA. At that path there will be 2 directories:

meta: ("metadata") contains log and configuration files.
result: contains the analysis' output files.

| File | Description | Location |
|------|-------------|----------|
| `DSXXXXXXXX-DTXXXXXX_ID_flaA.tsv` | allele of the flaA locus | result directory |