#!/bin/bash
source config.cfg
bash make_lammpscfg.sh
mkdir -p dump
mkdir -p Slurm
mv slurm-* Slurm/ 2>/dev/null || true
sbatch --job-name="${job_name}" run.sbatch
