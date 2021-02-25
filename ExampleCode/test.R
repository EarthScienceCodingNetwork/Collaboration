##############################
# Title: Test
# Purpose: To test command scripts for running analyses in parallel on the cluster
# Author: Cathy Chamberlin, chamberlin.catherine@epa.gov
##############################

args = (commandArgs(TRUE)) # This is the list of file names specified in the .sh file

print(args) # See which files are being accessed

filename <- args[1] # Calls one argument to do analysis on

print(filename) # Prints which file is being processed

load(filename) # Loads the data into R

ls() # Forgot what this does

str(dat) # Shows the structure of the data you load into R. 
# Note that for this analysis, all of the data was on the cluster as dataframes called dat, saved in .RData format.
# The outputs printed should show up in the test_%A_%a.out files.