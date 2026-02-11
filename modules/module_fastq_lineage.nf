nextflow.enable.dsl=2

include { step_2AS_mapping__ivar } from '../steps/step_2AS_mapping__ivar'
include { step_4TY_lineage__pangolin } from '../steps/step_4TY_lineage__pangolin'
include { extractKey } from '../functions/common.nf'
include { getSingleInput } from '../functions/parameters.nf'

def referenceCode = 'NC_045512.2'
def referencePath = "${params.assets_dir}/module_covid_emergency/NC_045512.fasta"
def referenceRiscd = '220308-020220308005121273-2AS_import-external'

workflow module_fastq_lineage {

    take:
        reads

    main:
        reads
            .multiMap {
                reads: it
                reference: [ referenceRiscd, referenceCode, file(referencePath) ]
            }
            .set { readsAndRef }

        consensus = step_2AS_mapping__ivar(
            readsAndRef.reads,
            readsAndRef.reference
        ).consensus

        step_4TY_lineage__pangolin(consensus)
}

workflow {
    module_fastq_lineage(getSingleInput())
}

