#!/bin/bash

COMPAREFOLDER=./Comparative_pipeline

if [ -f config.txt ]; then
 source config.txt
fi
bash $COMPAREFOLDER/pipeline/ortholog_summary.sh
bash $COMPAREFOLDER/pipeline/domain_summary.sh
