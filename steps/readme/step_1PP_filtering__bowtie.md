# 1PP_filtering__bowtie

## Introduction
The 1PP_filtering maps reads against a selected reference genome and returns only those that mapped successfully, removing (filtering) reads that did not map, like reads from the host.

Diagram description:
The input is trimmed reads and the reference is reference genome. The tools that is used is Bowtie, and the result is the filtered reads.

## Run Analysis 1PP_filtering
Once the analysis **1PP_filtering** has been selected from the run analyses interface, the user will be able to select which bioinformatic tool to use. The available tools for this analysis are listed below.

For all kinds of reads:

- Bowtie - An ultrafast, memory-efficient short read aligner

Only for long reads from nanopore technology apparatus:

The wizard for input selection will require input reads and a reference genome for mapping.

The input selection wizard delivers an advanced input selection mode, to allow selection of all types of supported input files at once.

Inputs for Bowtie:
- step_1PP_trimming
- step_1PP_hostdepl
- step_1PP_downsampling
- step_1PP_filtering

A link to Check analysis will be created after launching the requested analysis. The system will notify the user after a succesful analysis launch and once execution has ended.

## Output directory
The output directory is available at the link in the download page or at the link presente in the analysis' summary card, and will have the following structure: `results > YEAR > ID > 1PP_filtering > DSXXXXXXXX-DTXXXXXX_bowtie`. The last directory's suffix will be replaced with the name of the chosen tool. At that path there will be 2 directories:

- **meta**: ("metadata") contains log and configuration files.
- **result**: contains the analysis' output files.

The tables below list files available in the output directory structure, alongside some useful information.

## Bowtie:
|File|Description|Location|
| ----------- | ----------- | ----------- |
|DSXXXXXXXX-DTXXXXXX_ID_R1_bowtie_REFID.fastq.gz| 	filtered read 1 (R1) (compressed file)| 	result directory|
|DSXXXXXXXX-DTXXXXXX_ID_R2_bowtie_REFID.fastq.gz| 	filtered read 2 (R2) (compressed file)| 	result directory|
