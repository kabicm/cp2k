#!/bin/bash -l
#
#SBATCH --job-name=my_job
#SBATCH --time=00:30:00
#SBATCH --nodes=4
#SBATCH --ntasks-per-core=1
#SBATCH --ntasks-per-node=12
#SBATCH --cpus-per-task=1
#SBATCH --partition=debug
#SBATCH --constraint=gpu

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
export CRAY_CUDA_MPS=1

prefix=/scratch/snx3000/kabicm/cp2k

srun $prefix/exe/PizDaint/cp2k.psmp $prefix/tests/QS/benchmark_mp2_rpa/64-H2O/H20-64-PBE-TZ.inp
