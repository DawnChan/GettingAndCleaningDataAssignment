#Getting And Cleaning Data Assignment

This documents my work for the Getting and Cleaning Data Course Project. 


##Introduction

The goal of this project is to demonstrate how to collect, collate and tidy data into a useable data frame to allow further analyses.

##Files Included 
run_analysis.R
readme.md
codebook.md
tidydata.csv

##Dataset

Represents data collected from the accelerometers from the Samsung Galaxy S smartphone. Full description available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Download from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Script functions

file = run_analysis.R

	1	Merges the training and the test sets to create one data set.
	    
	    read.table() to read each individual file into R
	    rbind() to then combine the various test and train data sets
	    
	2	Extracts only the measurements on the mean and standard deviation for each 			       measurement.
	
	    grep("-mean\\(\\)|-std\\(\\)", datafile) to select mean and SD
	    then subset the above selection to form the required dataset
	
	3	Uses descriptive activity names to name the activities in the data set
	
	    names() to name the required activities
	
	4	Appropriately labels the data set with descriptive variable names.
	    
	5	From the data set in step 4, creates a second, independent tidy data set with the 			average of each variable for each activity and each subject.
	
	    cbind to create a complete dataset for further analysis
	    melt and cast first dataset to form new dataset with the average of variables

Please install data.table package via install.packages(data.table) prior to running run_analysis.R

##Codebook

The attached codebook.md will explain the transformations and variables used. 
