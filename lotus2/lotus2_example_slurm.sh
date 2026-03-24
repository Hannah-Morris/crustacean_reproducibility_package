#!/bin/bash
#SBATCH --ntasks-per-node=1
#SBATCH --job-name=PRJNAEXAMPLE
#SBATCH --mail-type=END
#SBATCH --mail-user=user@email.co.uk
#SBATCH --output=/home/user/slurm/logs/%j.out
#SBATCH --partition=gpu-p100

source ~/anaconda3/etc/profile.d/conda.sh
conda activate lotus2

lotus2 -i /home/user/PRJNAEXAMPLE/ \
  -o PRJNAEXAMPLE/EXAMPLE_out/ \
  -m shrimpmap_EXAMPLE.txt \
  -CL dada2 \
  -refDB KSGP \
  -taxAligner blast \
  -t 16
