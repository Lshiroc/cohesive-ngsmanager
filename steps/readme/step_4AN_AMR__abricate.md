# Introduction

4AN_AMR (Anti-Microbial Resistance) performs prediction of antibiotic resistace- and virulence-associated gene presence in the reconstructed sequence of the microorganism of interest.

This image depicts a bioinformatics workflow diagram for comprehensive genetic characterization of microbial pathogens. The pipeline begins with assembled genomic sequences in FASTA format, derived from either mapping to reference genomes or de novo assembly. These sequences serve as input for analysis tools. The analytical process yields two key types of predictions - antimicrobial resistance genes and virulence factors - providing crucial insights into the pathogen's antibiotic resistance profile and pathogenic potential. This integrated approach enables researchers to simultaneously assess both treatment challenges posed by resistance mechanisms and the disease-causing capabilities through virulence factors, supporting critical applications in clinical diagnostics, epidemiological surveillance, and public health response.

# Run Analysis 4AN_AMR

Once the analysis 4AN_AMR has been selected from the run analyses interface, the user will be able to select which bioinformatic tool to use. The available tools are listed below.

For all microorganisms:

abricate - Mass screening of contigs for antimicrobial resistance or virulence genes
4AN_AMR requires input sequences from de novo assembly or mapping; if the latter are provided, the reference genome that has been used for mapping will also be required.

The input selection UI delivers an advanced input selection mode, to allow selection of all types of supported input files at once.

Accepted inputs can be from:

step_2AS_mapping
step_2AS_denovo


# Output directory

The output directory is available at the link in the download page or at the link presente in the analysis' summary card, and will have the following structure: results > YEAR > ID > 4AN_AMR > DSXXXXXXXX-DTXXXXXX_abricate. The last directory's suffix will be replaced with the name of the chosen tool. At that path there will be 2 directories:

meta: ("metadata") contains log and configuration files.
result: contains the analysis' output files.
The table below list files produced by tools available for 3TX_species.

| File | Description | Location |
|------|-------------|----------|
| `DSXXXXXXXX-DTXXXXXX_ID_abricate_calls.txt` | File with gene alignment results, coverage and database queries | results directory |
| `DSXXXXXXXX-DTXXXXXX_ID_abricate.summary` | ABRicate summary file containing gene and its coverage | results directory |
| `DSXXXXXXXX-DTXXXXXX_ID_output_abricate_AMR.csv` | Antibiotic resistance genes summary file | results directory |
| `DSXXXXXXXX-DTXXXXXX_ID_output_abricate_VF.csv` | Virulence genes summary file | results directory |