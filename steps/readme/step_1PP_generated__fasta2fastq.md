# 1PP_generated__fasta2fastq

## Introduction
The 1PP_generated builds a fastq file from a fasta file. To perform fastq generation, CIS uses a custom script (fasta2fastq.py), which creates artificial quality lines and modifies headers to make them compliant to fastq standards. Files for both antiparallel DNA strands (R1 e R2).

> **Warning:** Since generated quality line are artificial, this analysis is only aimed at allowing to run softwares that use fastq files on sequences only available as fasta. Output files are not to be used as replacement for proper fastq sequences in workflows for which read quality evaluation matters.

Diagram description: The input is fasta, we use this input for the fasta2fastq.py tool, and the result is the fake fastq.

## Run Analysis 1PP_generated
Once the analysis 1PP_generated has been selected from the run analyses interface, the user will be able to select which bioinformatic tool to use. The only available tool for this analysis is fasta2fastq.

The input selection wizard delivers an advanced input selection mode, to allow selection of all types of supported input files at once.

Available inputs for 1PP_generated are:
- step_2AS_mapping
- step_2AS_denovo
- step_2AS_import

The wizard requires input sequences, usually from de novo assembly or mapping and the reference genome that has been used for mapping, in case such input is selected.

A link to Check analysis will be created after launching the requested analysis. The system will notify the user after a succesful analysis launch and once execution has ended.

## Output directory
The output directory is available at the link in the download page or at the link presente in the analysis' summary card, and will have the following structure: `results > YEAR > ID > 1PP_generated > DSXXXXXXXX-DTXXXXXX_fasta2fastq`. At that path there will be 2 directories:

- **meta**: ("metadata") contains log and configuration files.
- **result**: contains the analysis' output files.

The table below lists available fasta2fastq.py output files, alongside some useful information.

|File|Description|Location|
| ----------- | ----------- | ----------- |
|DSXXXXXXXX-DTXXXXXX_ID_fasta2fastq_R1.fastq.gz| 	 	artificial fastq of + strand (compressed file: .gz)|results directory|
|DSXXXXXXXX-DTXXXXXX_ID_fasta2fastq_R2.fastq.gz| 	filtered read 2 (R2) (compressed file)| results directory|
