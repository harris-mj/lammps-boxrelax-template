#!/bin/bash
#SBATCH --constraint=a100_80
#SBATCH --gpus-per-task 1
#SBATCH --tasks-per-node 1
#SBATCH --nodes 1
#SBATCH --account=arnoldje-mace
#SBATCH --time 2:00:00
#SBATCH --qos=bham
#SBATCH --mem=256G

# #SBATCH --mail-user=mjh406@student.bham.ac.uk
# #SBATCH --mail-type=BEGIN,END,FAIL
 
module purge;module load baskerville
module load foss/2023a
module load imkl/2023.1.0
module load libpng/1.6.39-GCCcore-12.3.0
module load gzip/1.12-GCCcore-12.3.0
module load Python/3.11.3-GCCcore-12.3.0
module load CUDA/12.6.0
 
source /bask/projects/a/arnoldje-mace/lammps-venv/bin/activate
 
 
export LD_LIBRARY_PATH=/bask/projects/a/arnoldje-mace/lammps/build:$LD_LIBRARY_PATH
 
 
mkdir -p dump
/bask/projects/a/arnoldje-mace/lammps/build/lmp -log log_min.lammps -in *.in
