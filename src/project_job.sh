#!/bin/bash
#SBATCH --job-name=resnet-bench-hpc_AnetLello
#SBATCH --partition=gpu
#SBATCH -A ealloc_25e78_hpc_anetlello_myaccess
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --gres=gpu:tesla:2
#SBATCH --nodelist=falcon4
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --time=00:30:00
#SBATCH --output=%x-%j.out

srun --mpi=pmi2 singularity exec --nv /REAL/PATH/pytorch_23.08-py3.sif python src/train.py