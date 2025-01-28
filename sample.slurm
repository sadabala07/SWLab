#!/bin/bash

#SBATCH -J sample_job             # Job name
#SBATCH -p general                # Partition
#SBATCH -o output_%j.txt          # Output file (%j is job ID)
#SBATCH -e error_%j.err           # Error file
#SBATCH --mail-type=ALL           # Notifications (ALL, BEGIN, END, FAIL)
#SBATCH --mail-user=sadabala@iu.edu # Your email for notifications
#SBATCH --nodes=1                 # Number of nodes
#SBATCH --ntasks-per-node=1       # Tasks per node
#SBATCH --time=01:00:00           # Time limit (1 hour)
#SBATCH --mem=4G                  # Memory request
#SBATCH -A r01010                 # Slurm account name (replace with yours)

module load python/3.9            

python sample.py
