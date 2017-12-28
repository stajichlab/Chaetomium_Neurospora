#!/usr/bin/bash

COMPAREFOLDER=./Comparative_pipeline

if [ -f config.txt ]; then
 source config.txt
fi
bash $COMPAREFOLDER/pipeline/prepare_BLASTP_pairs.sh"
sbatch --array=0-2 -p short --time 2:00:00 $COMPAREFOLDER/pipeline/run_BLASTP_pairs.sh
