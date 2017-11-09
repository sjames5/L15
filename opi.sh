#! /bin/bash

#PBS -l walltime = 00:05:00
#PBS -l nodes=1:ppn=10 
#PBS -W group_list= newriver 
#PBS -q open_q 

cd $PBS_O_WORKDIR 

module purge
module load gcc 
module load openmpi 
module load jdk 
module load mpe2 
gcc -o opi opi.c -lm -fopenmp 
./opi
