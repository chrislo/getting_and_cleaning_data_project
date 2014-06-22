## Overview

This repository is a submission for the course project for the
Coursera course 'Getting and cleaning data', part of the 'Data
Science' specialization.

It produces a "tidy" dataset derived from the
[Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones),
in particular the
[data dump provided](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
to course participants in June 2014.

## Running the script

Obtain a copy of the data dump and extract it to a directory called
`dataset`. This directory shoud be in the same directory as
`run_analysis.R`.

The script can then be run from the R command prompt, by changing the
working directory to match the location of the script and running

   > source('run_analysis.R')

## How the script works

The file `run_analysis.R` has explanatory comments describing how and
why the data tidying is performed.
