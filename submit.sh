#!/bin/bash
source config.cfg
bash make_lammpscfg.sh
sbatch --job-name="${job_name}" run.sbatch
