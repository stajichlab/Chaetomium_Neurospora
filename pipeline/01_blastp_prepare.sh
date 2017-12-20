#!/usr/bin/bash

bash Comparative_pipeline/pipeline/prepare_BLASTP_pairs.sh
sbatch --array=0-2 -p short --time 2:00:00 run_BLASTP_pairs.sh
