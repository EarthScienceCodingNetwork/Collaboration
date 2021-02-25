## Example Code

This a folder for us to post example code that we think others may find useful.

### Contents:

test.R (Cathy Chamberlin) - A simple R script that reads data files, prints their names, and prints a summary of the data. The script is designed to test whether or not you are properly passing data into your analysis file. The script is commented for more information

ComputingCluster_runfile_test.sh (Cathy Chamberlin) - This is the runfile that calls test.R. It was designed for the Duke Computing Cluster, and is run by inputing the command `sbatch ComputingCluster_runfile_test.sh`. Comments are below, since I'm not sure how to comment the .sh files. 
Line by line comments: 
`#SBATCH --mem=8G`: The memory requirement is 8G.
`#SBATCH --output=test_%A_%a.out`: The name of the output files that print what would appear in the R console are test_%A_%a.out where %A is the job number and %a is the array.
`#SBATCH --error=NAMEERROR_%A_%a.out`: Errors are written to NAMEERROR_%A_%a.out.
`#SBATCH --partition=scavenger`: Partitioning was run with scavenger - that is, jobs could go anywhere in the cluster, but are superseded if owners of nodes want to run their own jobs. Alternative is 'commons', which limits the number of nodes the job can use, but the analysis won't be cancelled.
`#SBATCH --array=1-10`: array = 1-10 means that the analysis will be run for the first 10 data files. In this example, I might have 50 data files that fit the description later in the script, but I'm only doing the analysis on the first 10.
`#SBATCH -e slurm.err`: -e slurm.err is where errors from the cluster are written, such as hitting memory limits. Errors and warnings from my R scripts also end up here, even though theoretically I don't think they should be.
`export FILES=($(ls -1 *RData))`: This exports the data files so they can be called in my R script.
`FILENAME=${FILES[(($SLURM_ARRAY_TASK_ID - 1))]}`: This line makes the list of files that the R script will call, so that each array does the analysis on one file.

`module load R/4.0.0`: Using R 4.0.0

`Rscript test.R $FILENAME`: Tells the cluster to run test.R using data listed in FILENAME