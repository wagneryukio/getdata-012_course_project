# README
This repository contains the answer to the Getting and Cleaning Data Course Project assignment

The script run_analysis.R reads in the data from the "Human Activity Recognition Using Smartphones Data Set" and performs operations on the data to make it tidy.
It assumes that the workind directory is the folder created (UCI HAR Dataset) by unziping the data set zip file.

Instructions to run the script:
- Download the original Data set zip file
- Unzip the file. A folder named "UCI HAR Dataset" will be created.
- In the R Console or R Studio change the working directory to the folder created on the step above by usin the setwd() command.
- Source the script run_analysis.R using the source() command and providing as argument the path to the script.
- The script will run and create the file "tidy_data.txt" on the working directory. That's it!! Piece of cake :) 