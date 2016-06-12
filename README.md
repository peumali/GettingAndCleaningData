# README
# Assignment: Getting and Cleaning Data Course Project

This repository contains the files that are required to analyze the dataset "Human Activity Recognition Using Smartphones Dataset - Version 1.0" and the output of the analysis.

## Dependencies
The following analysis requires data.table and dplyr packages.

## Analysis

1. First, two datasets are created using the data in test and train folders. They will contain the time and frequency measurements as well as the Subject and the Activity Id. These two datasets are then combined to create a new dataset. 
2. From this dataset, the variables containing standard deviation and mean of each measurement  is extracted to produce a new dataset. 
3. The activity identification variables will be replaced with the respective activity label (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) in this dataset.
4. The variables corresponding to the mean and standard deviation of frequency and time measurements will be renamed. The prefix "Freq" will indicate frequency measurements and "Time" will indicate time measurements.
5. Finally, an independent tidy data set with the average of each variable for each activity and each subject is created.

## This repository contains the following files.
1. README.md
2. run_analysis.R : contains the code for performing the above mentioned analysis that yields a tidy dataset. This script assumes that the "Human Activity Recognition Using Smartphones Dataset - Version 1.0" dataset contained in train and test folders are in the same directory as this.
This could be executed using the command: source("run_analysis.R")
3. summarisedData.txt : contains the tidy dataset that was created after executing the steps mentioned in run_analysis.R script.
4. CodeBook.md : contains the variables in the summarisedData.txt and their descriptions.
