# 1PP_hostdepl__bowtie

## Introduction
The 1PP_hostdepl analysis maps input reads against a selected host's reference genome and removes contaminant reads originating from the host from the fastq files, a process also called "host depletion".

Output files are new fastq with clean reads.
Diagram description:
The input of the program is trimmed reads. The reference is host reference genome. The tool that accepts the input and the reference is Bowtie. And the result of this program is depleted reads.

## Run Analysis 1PP_hostdepl
Once the analysis 1PP_hostdepl has been selected from the run analyses interface, the user will be able to select which bioinformatic tool to use. The available tools for this analysis are listed below.

For all kinds of reads:
- Bowtie - An ultrafast, memory-efficient short read aligner

Only for long reads from nanopore technology apparatus:

The input selection wizard delivers an advanced input selection mode, to allow selection of all types of supported input files at once.

Inputs for Bowtie:
- step_1PP_trimming
- step_1PP_hostdepl
- step_1PP_downsampling

A link to Check analysis will be created after launching the requested analysis. The system will notify the user after a succesful analysis launch and once execution has ended.

## Output directory
The output directory is available at the link in the download page or at the link in the analysis' summary card, and will have the following structure: `results > YEAR > ID > 1PP_hostdepl > DSXXXXXXXX-DTXXXXXX_bowtie`. The last directory's suffix will be replaced with the name of the chosen tool. At that path there will be 2 directories:

- **meta**: ("metadata") contains log and configuration files.
- **result**: contains the analysis' output files.

The tables below list files available in the output directory structure, alongside some useful information.

## Bowtie:
|File|Description|Location|
| ----------- | ----------- | ----------- |
|DSXXXXXXXX-DTXXXXXX_ID_R1_vdhost_HOSTID.fastq|depleted read 1 (R1)|result directory|
|DSXXXXXXXX-DTXXXXXX_ID_R2_vdhost_HOSTID.fastq|depleted read 2 (R2)|result directory|
