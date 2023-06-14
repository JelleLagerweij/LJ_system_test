#!/bin/bash
#SBATCH --job-name="Test_Scrip_OCTP"
#SBATCH -n 8
#SBATCH -t 00:15
#SBATCH --mem-per-cpu=1G

module load 2022r2
module load openmpi

lmp=~/software/lammps/lammps2018/src/ # getting the correct run file location
srun $lmp/lmp_mpi < simulation.in # computing with n cpu cores.

wait
exit 0
