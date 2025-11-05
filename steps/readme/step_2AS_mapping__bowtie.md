# 2AS_mapping__bowtie

## Introduction
2AS_mapping performs the assembly with reference (i.e. mapping) of nucleotide sequences.

Diagram description: 
The input is "reads fastq" and the reference is "reference genome". The input and the reference are passed to the tool, bowtie2. Then the result squance alignment is achieved. The result is sent to Quality Check check coverage.

## Run Analysis 2AS_mapping
Once the analysis **2AS_mapping** has been selected from the run analyses interface, the user will be able to select which bioinformatic tool to use. The available tools are:

- **bowtie2** – Fast and sensitive read alignment

To select the mandatory reference genome, use the **“Select reference”** button in the input-selection wizard. This will open a pop-up table, listing two different kinds of sequences, both usable as reference:

1. reference FASTA files
2. consensus sequence or de novo assembly of a sample available in the platform

The input selection UI delivers an advanced input selection mode, to allow selection of all types of supported input files at once.

Accepted inputs can be from:
- step_1PP_trimming
- step_1PP_hostdepl

A link to Check analysis will be created after launching the requested analysis. The system will notify the user after a succesful analysis launch and once execution has ended.

## Output directory
The output directory is available at the link in the download page or at the link presente in the analysis' summary card, and will have the following structure: `results > YEAR > ID > 2AS_mapping > DSXXXXXXXX-DTXXXXXX_bowtie2`. The last directory's suffix will be replaced with the name of the chosen tool. At that path there will be 2 directories:

- **meta**: ("metadata") contains log and configuration files.
- **result**: contains the analysis' output files.

The tables below list files produced by 2AS_mapping's available tools.

|File|Description|Location|
| ----------- | ----------- | ----------- |
|DSXXXXXXXX-DTXXXXXX_ID_bowtie_REFID.fasta|consensus file|result directory|
|DSXXXXXXXX-DTXXXXXX_ID_bowtie_REFID.sorted.bam|bam (Binary Alignment Map) format alignment file|result directory|
|DSXXXXXXXX-DTXXXXXX_ID_bowtie_REFID.sorted.bam.bai| 	bai (bam file's index) file|result directory|
|DSXXXXXXXX-DTXXXXXX_ID_bowtie_REFID.var.flt.vcf|vcf (variant calling format) file with identified varaints|result directory|
|DSXXXXXXXX-DTXXXXXX_ID_bowtie_REFID_coverage_plot.png|coverage distribution graph|result directory|

## Data visualization

Alignment of reads on the reference genome can be visualized with specific softwares (i.e. Tablet, BioEdit e uGene), which are able to read bam e bam.bai files:

- Tablet (GNU/Linux, macOS, Windows): https://ics.hutton.ac.uk/tablet/download-tablet/;
- BioEdit (Windows): https://thalljiscience.github.io/;
- uGene (GNU/Linux, macOS, Windows): http://ugene.net/ugene/.

