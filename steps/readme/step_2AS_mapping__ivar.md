# 2AS_mapping__ivar

## Introduction
2AS_mapping performs the assembly with reference (i.e. mapping) of nucleotide sequences.

Diagram description: 
The input is "reads fastq" and the reference is "reference genome". The input and the reference are passed to the tool, ivar. Then the result squance alignment is achieved. The result is sent to Quality Check check coverage.

## Run Analysis 2AS_mapping
Once the analysis **2AS_mapping** has been selected from the run analyses interface, the user will be able to select which bioinformatic tool to use. The available tools are:

- **ivar** - computational package for viral amplicon-based sequencing

To select the mandatory reference genome, use the **“Select reference”** button in the input-selection wizard. This will open a pop-up table, listing two different kinds of sequences, both usable as reference:

1. reference FASTA files
2. consensus sequence or de novo assembly of a sample available in the platform

With the tool Ivar it’s possible to select multiple references (please consult the “Multiple references” section).

The input selection UI delivers an advanced input selection mode, to allow selection of all types of supported input files at once.

Accepted inputs can be from:
- step_1PP_trimming
- step_1PP_hostdepl

A link to Check analysis will be created after launching the requested analysis. The system will notify the user after a succesful analysis launch and once execution has ended.

## Output directory
The output directory is available at the link in the download page or at the link presente in the analysis' summary card, and will have the following structure: `results > YEAR > ID > 2AS_mapping > DSXXXXXXXX-DTXXXXXX_ivar`. The last directory's suffix will be replaced with the name of the chosen tool. At that path there will be 2 directories:

- **meta**: ("metadata") contains log and configuration files.
- **result**: contains the analysis' output files.

The tables below list files produced by 2AS_mapping's available tools.

> **Note:** Ivar's execution consists of "Snippy", "Samtools" and "Ivar" tools execution.

| File | Description | Location |
|------|--------------|-----------|
| DSXXXXXXXX-DTXXXXXX_ID_ivar_REFID.fasta | Consensus sequence from Ivar | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID.aligned.fa | Reference with `-` in positions with sequencing depth = 0 and depth's N between 0 and the minimum number of reads considered for site coverage (no variants in this file) | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID.bam | BAM (Binary Alignment Map) format alignment file | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID.bam.bai | BAI (BAM file's index) file | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID.bed | BED (Browser Extensible Data) file | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID.consensus.fa | Reference genome with representation of all variants | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID.consensus.subs.fa | Reference genome with representation of substitution variants | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID.txt | Snippy run summary | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID.tab | Variant table in TSV format | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID.csv | Variant table in CSV format | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID.filt.vcf | Variants filtered by FreeBayes | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID.raw.vcf | Variants not filtered by FreeBayes | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID.subs.vcf | Table of substitution variants in VCF format | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID.gff | Variants in GFF3 format | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID.html | HTML version of the `.tab` table of variants | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID.vcf | Snippy’s output file with identified variants in VCF format | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID.vcf.gz | Snippy’s VCF output file (compressed archive) | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID.vcf.gz.csi | BCFtools index of `vcf.gz` file | result directory |
| DSXXXXXXXX-DTXXXXXX_ID_vdsnippy_REFID_coverage_plot.png | Coverage distribution graph | result directory |

## Data visualization

Alignment of reads on the reference genome can be visualized with specific softwares (i.e. Tablet, BioEdit e uGene), which are able to read bam e bam.bai files:

- Tablet (GNU/Linux, macOS, Windows): https://ics.hutton.ac.uk/tablet/download-tablet/;
- BioEdit (Windows): https://thalljiscience.github.io/;
- uGene (GNU/Linux, macOS, Windows): http://ugene.net/ugene/.

