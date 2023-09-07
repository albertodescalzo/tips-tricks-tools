rule all:
    input:
        "genotyping/results/NA24385/truth/graph_annotated_onlyNA24385_biallelic.vcf.gz",
        #"data/downloaded/vcf/HGSVC-GRCh38/Callset_freeze3_64haplotypes.vcf",
        #"data/downloaded/vcf/HGSVC-GRCh38/graph_annotated_noNA24385.vcf.gz",
        #"data/downloaded/vcf/HGSVC-GRCh38/graph_annotated_noNA24385_biallelic.vcf",
        #"genotyping/results/NA24385/bayestyper/NA24385_full/kmers/NA24385.kmc_suf",
        #"genotyping/results/NA24385/bayestyper/NA24385_full/kmers/NA24385.kmc_pre",
        #"genotyping/results/NA24385/bayestyper/NA24385_full/kmers/NA24385.bloomMeta",    
        #"genotyping/results/NA24385/bayestyper/NA24385_full/kmers/NA24385.bloomData",    
        #"data/downloaded/fasta/GRCh38_full_analysis_set_plus_decoy_hla.fa"

## reads are not included, too heavy for the lifting
rule copy_files_full_callset:
    input:
        full_callset = "/vol/whopper/genotyping-pipelines/benchmarking-pipeline/data/downloaded/vcf/HGSVC-GRCh38/Callset_freeze3_64haplotypes.vcf"
    output:
        full_callset = "data/downloaded/vcf/HGSVC-GRCh38/Callset_freeze3_64haplotypes.vcf"
    shell:
        """
        cp {input.full_callset} {output.full_callset}
        """

rule copy_files_graph:
    input:
        graph = "/vol/whopper/genotyping-pipelines/benchmarking-pipeline/results/leave-one-out/HGSVC/input-panel/panel-NA24385-HGSVC_multi.vcf.gz"
    output:
        graph = "data/downloaded/vcf/HGSVC-GRCh38/graph_annotated_noNA24385.vcf.gz"
    shell:
        """
        cp {input.graph} {output.graph}
        """

rule copy_files_biallelic:
    input:
        biallelic =  "/vol/whopper/genotyping-pipelines/benchmarking-pipeline/results/leave-one-out/HGSVC/input-panel/panel-NA24385-HGSVC_bi.vcf"
    output:
        biallelic =  "data/downloaded/vcf/HGSVC-GRCh38/graph_annotated_noNA24385_biallelic.vcf"
    shell:
        """
        cp {input.biallelic} {output.biallelic}
        """

rule copy_files_kmers_suf:
    input:
        kmers_suf = "/vol/whopper/genotyping-pipelines/benchmarking-pipeline/results/leave-one-out/HGSVC/bayestyper/NA24385/full/temp/kmers/NA24385.kmc_suf"
    output:
        kmers_suf = "genotyping/results/NA24385/bayestyper/NA24385_full/kmers/NA24385.kmc_suf"
    shell:
        """
        cp {input.kmers_suf} {output.kmers_suf}
        """

rule copy_files_kmers_pre:
    input:
        kmers_pre = "/vol/whopper/genotyping-pipelines/benchmarking-pipeline/results/leave-one-out/HGSVC/bayestyper/NA24385/full/temp/kmers/NA24385.kmc_pre"
    output:
        kmers_pre = "genotyping/results/NA24385/bayestyper/NA24385_full/kmers/NA24385.kmc_pre"
    shell:
        """
        cp {input.kmers_pre} {output.kmers_pre}
        """
rule copy_files_bloomMeta:
    input:
        bloomMeta = "/vol/whopper/genotyping-pipelines/benchmarking-pipeline/results/leave-one-out/HGSVC/bayestyper/NA24385/full/temp/kmers/NA24385.bloomMeta"
    output:
        bloomMeta = "genotyping/results/NA24385/bayestyper/NA24385_full/kmers/NA24385.bloomMeta"
    shell:
        """
        cp {input.bloomMeta} {output.bloomMeta}
        """
rule copy_files_bloomData:
    input:
        bloomData = "/vol/whopper/genotyping-pipelines/benchmarking-pipeline/results/leave-one-out/HGSVC/bayestyper/NA24385/full/temp/kmers/NA24385.bloomData"
    output:    
        bloomData = "genotyping/results/NA24385/bayestyper/NA24385_full/kmers/NA24385.bloomData"
    shell:
        """
        cp {input.bloomData} {output.bloomData}
        """

rule copy_files_truth:
    input:
        truth = "/vol/whopper/genotyping-pipelines/benchmarking-pipeline/results/leave-one-out/HGSVC/truth/truth-NA24385-HGSVC.vcf.gz"
    output:
        truth = "genotyping/results/NA24385/truth/graph_annotated_onlyNA24385_biallelic.vcf.gz"
    shell:
        """
        cp {input.truth} {output.truth}
        """
rule copy_files_ref:
    input:
        ref = "/vol/whopper/genotyping-pipelines/benchmarking-pipeline/data/downloaded/fasta/GRCh38_full_analysis_set_plus_decoy_hla.fa"
    output:
        ref = "data/downloaded/fasta/GRCh38_full_analysis_set_plus_decoy_hla.fa"
    shell:
        """
        cp {input.ref} {output.ref}
        """