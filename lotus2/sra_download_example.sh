#!/bin/bash

# Example SRA download command
esearch -db sra -query "PRJNAEXAMPLE" | efetch -format runinfo | cut -d ',' -f1 | tail -n +2 | xargs -I {} sh -c 'prefetch {} && fasterq-dump --split-files --progress --outdir /home/user/PRJNAEXAMPLE {}'
