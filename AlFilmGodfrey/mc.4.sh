#!/bin/bash
#
# srun command for CSCI-6360 group project.
# USAGE: /full/path/to/./q_MC.out [--help]
#                                 [--init dimension [outfile]]
#                                 [--nonstop dimension outfile steps [increment]]
#                                 [infile [outfile] steps [increment]]
#
#SBATCH --mail-type=END
#SBATCH --mail-user=tany3@rpi.edu
#SBATCH -D /gpfs/u/home/ACME/ACMEtany/scratch/MSMSEpaper/16lambda/AlFilmGodfrey/4
#SBATCH --partition small                                                                                                                             
#SBATCH -t 1200                                                                                                                                                                     
#SBATCH -N 32                                                                                                                                                                      
#SBATCH -n 2048                                                                                                                                                                    
#SBATCH --overcommit
#SBATCH -o /gpfs/u/home/ACME/ACMEtany/scratch/MSMSEpaper/16lambda/AlFilmGodfrey/4/log.log

srun --runjob-opts="--mapping TEDCBA" /gpfs/u/home/ACME/ACMEtany/barn/MSMSEpaper/AlFilmGodfrey/q_MC.out --nonstop 2 voronmc.0000.dat 15000 100 0 4 673 723 /gpfs/u/home/ACME/ACMEtany/barn/MSMSEpaper2DInitGrain/16lambda/voronmc.530.dat
