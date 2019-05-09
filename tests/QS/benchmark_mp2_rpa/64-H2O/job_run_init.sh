#!/bin/bash -l
#
#SBATCH --job-name=my_job
#SBATCH --mail-type=ALL
#SBATCH --time=00:30:00
#SBATCH --nodes=4
#SBATCH --ntasks-per-core=1
#SBATCH --ntasks-per-node=12
#SBATCH --cpus-per-task=1
#SBATCH --partition=debug
#SBATCH --constraint=gpu

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
export CRAY_CUDA_MPS=1

srun /scratch/snx3000/kabicm/cp2k/exe/PizDaint/cp2k.psmp H20-64-PBE-TZ.inp
