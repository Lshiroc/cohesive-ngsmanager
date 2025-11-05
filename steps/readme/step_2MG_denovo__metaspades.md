# 2MG_denovo__metaspades

## Introduction
2MG_denovo performs de novo assembly for metagenomics samples.

Diagram description:
The input file is fastq file. The input file is used in the tool called metaspades which gives us the result scaffold. And we use that result with the Quality Check tool called quast.

## Run Analysis 2MG_denovo
Once the analysis **2MG_denovo** has been selected from the run analyses interface, the user will be able to select which bioinformatic tool to use. The tool used for this analysis is **metaspades** - *St. Petersburg genome assembler.*

-The input selection wizard delivers an advanced input selection mode, to allow selection of all types of supported input files at once.

Accepted inputs can be from:
- step_1PP_generated
- step_1PP_trimming
- step_1PP_hostdepl
- step_1PP_downsampling
- step_3TX_class
- step_4AN_AMR

A link to Check analysis will be created after launching the requested analysis. The system will notify the user after a succesful analysis launch and once execution has ended.

The output directory is available at the link in the download page or at the link presente in the analysis' summary card, and will have the following structure: `results > YEAR > ID > 1PP_generated > DSXXXXXXXX-DTXXXXXX_metaspades`. At that path there will be 3 directories:


- **meta**: ("metadata") contains log and configuration files.
- **qc**: ("quality check") it contains 2 directories (meta and result). In this case quality check is performed with quast.
- **result**: contains the analysis' output files.

The table below lists files available produced by metaspades, alongside some useful information.

|File|Description|Location|
| ----------- | ----------- | ----------- |
|DSXXXXXXXX-DTXXXXXX_ID_spades_contigs.fasta|file with contigs of the de novo assembly|result directory|
|DSXXXXXXXX-DTXXXXXX_ID_spades_scaffolds.fasta| 	scaffolds|result directory|
|DSXXXXXXXX-DTXXXXXX_ID_spades_scaffolds_L200.fasta| 	file with scaffolds longer than 200bp|result directory|
|DSXXXXXXXX-DTXXXXXX_ID_quast.csv|file with assembly quality metrics|qc > result directory|

