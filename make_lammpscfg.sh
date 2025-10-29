#make_lammpscfg.sh

source config.cfg

cat > lammps.cfg <<EOF
#lammps.cfg

variable MODEL string "$model_path"
variable ELEMENTS string "$elements"
variable INPUTCELL string "$input"
variable SYMMETRY string "$symmetry"
EOF
