#!/usr/bin/bash
#SBATCH --time 1:00:00 

mkdir -p input
pushd input
if [ ! -f C_thermophilum_DSM_149.fasta ]; then
wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/221/225/GCF_000221225.1_CTHT_3.0/GCF_000221225.1_CTHT_3.0_protein.faa.gz
mv GCF_000221225.1_CTHT_3.0_protein.faa.gz C_thermophilum_DSM_149.fasta.gz
pigz -d C_thermophilum_DSM_149.fasta.gz
perl -i -p -e 's/>/>CTHT|/' C_thermophilum_DSM_149.fasta
fi

if [ ! -f N_crassa_OR74A.fasta ]; then
wget http://fungidb.org/common/downloads/Current_Release/NcrassaOR74A/fasta/data/FungiDB-35_NcrassaOR74A_AnnotatedProteins.fasta
mv FungiDB-35_NcrassaOR74A_AnnotatedProteins.fasta N_crassa_OR74A.fasta
perl -i -p -e 's/>/>NCRA|/' N_crassa_OR74A.fasta
fi

if [ ! -f C_globosum_CBS_148_51.fasta ]; then
wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/143/365/GCF_000143365.1_ASM14336v1/GCF_000143365.1_ASM14336v1_protein.faa.gz
mv GCF_000143365.1_ASM14336v1_protein.faa.gz C_globosum_CBS_148_51.fasta.gz
pigz -d  C_globosum_CBS_148_51.fasta.gz
perl -i -p -e 's/>/>CGLO|/' C_globosum_CBS_148_51.fasta
fi
