#!/usr/bin/bash

srun -p short --time 2:00:00 Comparative_pipeline/pipeline/combine_BLASTP.sh
srun -p short --time 2:00:00 Comparative_pipeline/pipeline/orthagogue.sh

