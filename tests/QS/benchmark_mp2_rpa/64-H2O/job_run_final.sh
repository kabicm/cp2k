#!/bin/bash -l

#BATCH --job-name=my_job
#SBATCH --mail-type=ALL
#SBATCH --time=00:30:00
#SBATCH --nodes=128
#SBATCH --ntasks-per-core=1
#SBATCH --ntasks-per-node=2
#SBATCH --cpus-per-task=6
#SBATCH --partition=normal
#SBATCH --constraint=gpu

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
export CRAY_CUDA_MPS=1

srun scratch/snx3000/kabicm/cp2k/exe/PizDaint/cp2k.psmp H2O-64-RI-dRPA-TZ.inp
