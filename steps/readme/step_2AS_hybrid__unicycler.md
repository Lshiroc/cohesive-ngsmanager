# 2AS_hybrid__unicycler

## Introduction
2AS_hybrid performs hybrid assebly of short and long reads. Hybrid assembly grants grants coverage of repeated regions thanks to the long reads technology, while retaining high accuracy due to calls from short reads technology.

Diagram description:
We have two inputs which are "short reads fastq(from Illumina sequencer)" and "long reads fastq(from nanopore technology sequencer)". These two inputs are sent to the tool which is Unicycler. And then the result is scaffold which is sent to Quality Check tool called quast.

## Run Analysis 2AS_hybrid
Once the analysis **2AS_hybrid** has been selected from the run analyses interface, the user will be able to select which bioinformatic tool to use. The available tool is:

- **Unicycler** - hybrid assembly pipeline for bacterial genomes.

> **Unicycler's GitHub Page**: https://github.com/rrwick/Unicycler

The input selection wizard delivers an advanced input selection mode, to allow selection of all types of supported input files at once.

**2AS_hybrid** requires 2 to 3 inputs:

- Long reads from nanopore technology sequencers ("Long reads" field, mandatory);
- Short reads from Illumina sequencers ("Input selection" field, mandatory). Possible short reads input can be obtained from:
    - step_1PP_trimming
    - step_1PP_filtering
    - step_1PP_hostdepl
    - step_1PP_downsampling
- Reference used for filtering process (optional), if the second input comes from filtered short reads.

> **Note:** execution will fail if long reads and short reads inputs are switched places.

The user interface will also provide an advanced mode for input selection, which allows selection of inputs that have been processed with differente softwares.

A link to Check analysis will be created after launching the requested analysis. The system will notify the user after a succesful analysis launch and once execution has ended.

## Output directory

The output directory is available at the link int the download page or at the link int the analysis card. The results directory will contain 3 subfolders:

- **meta**: ("metadata") with the pipeline's log and configuration files.
- **qc**: ("quality check") where quality check files are stored. For this analysis the quality check step is performed using **quast**.
- **result**: contains the main output files of the analysis.

Please find a list of important files and their description in the table below.

|File|Description|Location|
| ----------- | ----------- | ----------- |
|DSXXXXXXXX-DTXXXXXX_ID_unicycler.gfa|assembly in gfa format|result directory|
|DSXXXXXXXX-DTXXXXXX_ID_unicycler_assembly.fasta|hybrid assembly file in fasta format|result directory|
|DSXXXXXXXX-DTXXXXXX_ID_quast.csv|quality check file of the assembly|qc > result directory|
