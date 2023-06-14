#!/bin/bash
#SBATCH --job-name="Test_Scrip_OCTP"
#SBATCH -n 8
#SBATCH -t 00:15
#SBATCH --mem-per-cpu=1G

module load 2023rc1-gcc11
module load openmpi

lmp=~/software/lammps/mylammps/src/ # getting the correct run file location
srun $lmp/lmp_mpi < simulation.in # computing with n cpu cores.

wait
exit 0
