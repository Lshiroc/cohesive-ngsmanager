# 2AS_denovo__spades

## Introduction
2AS_denovo performs de novo assembly of the sequences, producing the genome's scaffolds.

Diagram description: The input is fastq file. The input is used with tool which is one of spades, unicycler or shovill. And the result is scaffold which is sent to Quality Check tool named quast.

## Run Analysis 2AS_denovo
Once the analysis **2AS_denovo** has been selected from the run analyses interface, the user will be able to select which bioinformatic tool to use. The available tool is:

- *spades* - St. Petersburg genome assembler

The input selection wizard delivers an advanced input selection mode, to allow selection of all types of supported input files at once.

Accepted inputs can be from:
- step_1PP_trimming
- step_3TX_class
- step_4AN_AMR

A link to Check analysis will be created after launching the requested analysis. The system will notify the user after a succesful analysis launch and once execution has ended.

## Output directory
The output directory is available at the link in the download page or at the link presente in the analysis' summary card, and will have the following structure: `results > YEAR > ID > 2AS_denovo > DSXXXXXXXX-DTXXXXXX_spades`. The last directory's suffix will be replaced with the name of the chosen tool. At that path there will be 3 directories:

- **meta**: ("metadata") contains log and configuration files.
- **qc**: ("quality check") it contains 2 directories (meta and result). In this case quality check is performed with quast.
- **result**: contains the analysis' output files.

The table below lists files available in the output directory structure, alongside some useful information.

|File|Description|Location|
| ----------- | ----------- | ----------- |
|DSXXXXXXXX-DTXXXXXX_ID_spades_contigs.fasta|de novo assembly's contigs file|result directory|
|DSXXXXXXXX-DTXXXXXX_ID_spades_scaffolds.fasta| 	scaffolds file|result directory|
|DSXXXXXXXX-DTXXXXXX_ID_spades_scaffolds_L200.fasta| 	file with scaffolds longer than 200bp|result directory|
|DSXXXXXXXX-DTXXXXXX_ID_quast.csv|file with assembly's quality metrics|qc directory > result|
