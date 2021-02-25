#!/bin/bash
#SBATCH --mem=8G
#SBATCH --output=test_%A_%a.out
#SBATCH --error=NAMEERROR_%A_%a.out
#SBATCH --partition=scavenger
#SBATCH --array=1-10
#SBATCH -e slurm.err
export FILES=($(ls -1 *RData))
FILENAME=${FILES[(($SLURM_ARRAY_TASK_ID - 1))]}

module load R/4.0.0

Rscript test.R $FILENAME

