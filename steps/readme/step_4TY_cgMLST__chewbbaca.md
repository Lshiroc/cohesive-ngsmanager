# Introduction

4TY_cgMLST performs the "core genome Multi-Locus Sequence Typing" (cgMLST), a bacterial isolate characterization protocol, which allows identification of clones in microbial population.

This image depicts a specialized bioinformatics workflow for allele profiling, where FASTA format sequences obtained from either mapping or de novo assembly serve as input data for the chewBBACA tool, which performs comprehensive allele calling and generates an allele matrix as its primary output for subsequent population genomics analysis.

# Run Analysis 4TY_cgMLST

Once the analysis 4TY_cgMLST has been selected from the run analyses interface, the user will be able to proceed to the analysis with the tool chewBBACA - BSR-Based Allele Calling Algorithm.

chewBBACA's GitHub page: https://github.com/B-UMMI/chewBBACA

Tools for cgMLST possess schemas for specific bacteria. Schemas available for chewBBACA are listed in the table below.

| Species | Schema name | Number of loci | Date of last update |
|---------|-------------|----------------|---------------------|
| *Mycobacterium bovis* | m_bovis_2891_230720 | 2,891 | 20/07/23 |
| *Listeria monocytogenes* | l_mono_chewie_1748_220623 | 1,748 | 23/06/22 |
| *Campylobacter jejuni* | c_jejuni_678_180728 | 678 | 23/07/18 |
| *Campylobacter coli* | c_coli_528_220722 | 528 | 22/07/22 |
| *Staphylococcus aureus* | s_aureus_ridom_1861_210617 | 1,861 | 17/06/21 |
| *Brucella melitensis* | b_melitensis_bme_2584_211118 | 2,584 | 18/11/21 |
| *Klebsiella pneumoniae* | k_pneumoniae_pasteur_629_211129 | 629 | 29/11/21 |
| *Escherichia coli* | e_coli_chewie_2360_210531 | 2,360 | 31/05/21 |
| *Escherichia coli* | e_coli_chewie_7601_210531 | 7,601 | 31/05/21 |
| *Salmonella enterica* | s_enterica_chewie_3255_210531 | 3,255 | 31/05/21 |
| *Brucella* | b_wide_1764_220709 | 1,764 | 09/07/22 |
| *Bacillus anthracis* | b_anthracis_pubmlst_3803_231214 | 3,803 | 14/12/23 |
| *Acinetobacter baumannii* | a_baumannii_ridom_2390_250612 | 2,390 | 12/06/25 |
| *Pseudomonas aeruginosa* | p_aeruginosa_ridom_3867_250612 | 3,867 | 12/06/25 |

Note: Running 4TY_cgMLST on a microorganism for which there is no corresponding cgMLST schema will cause the run to fail.

The input selection UI delivers an advanced input selection mode, to allow selection of all types of supported input files at once.

Accepted inputs can be from:

step_2AS_mapping
step_2AS_denovo
4TY_cgMLST requires input sequences from de novo assembly or mapping; if the latter are provided, the reference genome that has been used for mapping will also be required.


# Output directory

The output directory is available at the link in the download page or at the link in the analysis' summary card and contains 2 subdirectories:

meta: ("metadata") contains log and configuration files.
result: contains the analysis' output files.

| File | Description | Location |
|------|-------------|----------|
| `DSXXXXXXXX-DTXXXXXX_ID_chewbbaca_new_alleles.txt` | Sequences of newly-identified alleles | result directory |
| `DSXXXXXXXX-DTXXXXXX_ID_chewbbaca_results_alleles.tsv` | Allele call with Pasteur encoding in CSV format | result directory |
| `DSXXXXXXXX-DTXXXXXX_ID_chewbbaca_results_contigsInfo.tsv` | Information about the contig mapped on each locus | result directory |
| `DSXXXXXXXX-DTXXXXXX_ID_chewbbaca_results_izsam.csv` | Allele call with IZS encoding | result directory |
| `DSXXXXXXXX-DTXXXXXX_ID_chewbbaca_results_md5.csv` | Allele call with MD5 encoding | result directory |
| `DSXXXXXXXX-DTXXXXXX_ID_chewbbaca_results_pasteur_2021-05-28.csv` | Allele call with Pasteur encoding in TSV format | result directory |
| `DSXXXXXXXX-DTXXXXXX_ID_chewbbaca_results_statistics.tsv` | Metrics on loci encoded as EXC, INF, LNF, PLOT, NIPH, ALM, ASM | result directory |
| `DSXXXXXXXX-ID_import_chewbbaca_check.csv` | Quality check with info on calledPerc, calledNum, annotated, new, notFound, discarded | qc > result directory |