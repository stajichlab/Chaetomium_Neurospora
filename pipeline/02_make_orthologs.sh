#!/bin/bash

COMPAREFOLDER=./Comparative_pipeline

if [ -f config.txt ]; then
 source config.txt
fi
srun -p short --time 2:00:00 $COMPAREFOLDER/pipeline/combine_BLASTP.sh
srun -p short --time 2:00:00 $COMPAREFOLDER/pipeline/orthagogue.sh

