#!/bin/bash

#SBATCH --nodes 1 --ntasks 8 --mem 8G --time 2-0:0:0 --out logs/make_trees.%A.log
module load fasttree
module load muscle

pushd orthologs
mkdir -p trees
pushd trees
for file in ../Chae_Ncra.I15.mcl-seqs/*.fa.gz
do
m=$(basename $file .fa.gz)
if [ ! -f $m.nj.tre ]; then
 zcat $file | muscle -in - | FastTreeMP -gamma -wag > $m.nj.tre
fi
done

