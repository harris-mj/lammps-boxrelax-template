# LAMMPS Box Relax Template

Template for running LAMMPS box relaxation calculations.

## Setup

1. Copy this directory to your working location
2. Copy `config.cfg.template` to `config.cfg`
3. Edit `config.cfg` with your specific parameters
4. Modify `boxrelax.in` if needed
5. Run: `./submit.sh`

## Files

- `config.cfg.template` - Configuration template (copy to config.cfg)
- `min_boxr.in` - LAMMPS input file
- `run.sbatch` - SLURM submission script
- `submit.sh` - Wrapper script to submit job

## Config parameters

- `model`: Name of your MACE model
- `input`: Path to input structure file
- Adjust other parameters as needed
```

**.gitignore**:
```
config.cfg
*.log
*.lammps
dump/
slurm-*.out
log_*
