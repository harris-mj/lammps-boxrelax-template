#!/bin/bash
#SBATCH --ntasks-per-node 1
#SBATCH --nodes=1
#SBATCH --time 240:00:00
#SBATCH --qos=bbdefault
#SBATCH --mem=122G

module purge; module load bluebear
module load bear-apps/2023a
module load foss/2023a imkl/2023.1.0 libpng/1.6.39-GCCcore-12.3.0 gzip/1.12-GCCcore-12.3.0 Python/3.11.3-GCCcore-12.3.0
module load CMake/3.26.3-GCCcore-12.3.0
module load OpenMPI/4.1.5-GCC-12.3.0

source /rds/projects/g/gurrutbz-mace-model-hea/mace_lammps/bin/activate

mpirun -np 1 /rds/projects/g/gurrutbz-mace-model-hea/install_lammps_mace/lammps/build/lmp -in *.in


