# CodeBook

The script run_analysis.R reads in the data from the "Human Activity Recognition Using Smartphones Data Set" and performs operations on the data to make it tidy.

The data from the original data set was divided into several files. All of them were used to produce the final tidy data set:
- X_train.txt: This file contained the feature values for the trainning set.
- y_train.txt: This file contained the label values for the trainning set. In this case, the label was the id of the activity being performed by the subject.
- subject_train.txt: This file contained the ids of the subjects for each observation in the trainning set.
- X_test.txt: This file contained the feature values for the test set
- y_test.txt: This file contained the label values for the test set.
- subject_test.txt: This file contained the ids of the subjects for each observation in the test set.
- activity_labels.txt: This file had the ids of the labels and it's corresponding text value (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, etc...)
- features.txt: This file had the name of all the features contained in the X_train.txt and X_test.txt.

The script performs the following steps to compile the data:
1 - The script starts by reading the X_train.txt data. 
2 - Reads in the data from the features.txt file to name the columns in the data set. 
3 - Selects only the columns of interest, which are the features containing mean and standard deviation values, as from the instructions of the assignment. 
4 - Reads in the contents of the subject_train.txt file and appends it to the data frame.
5 - Reads in the contents of the y_train.txt file and appends it to the data frame.
6 - Reads in the contents fo the activity_labels.txt file and merges it to the data frame to provide the descriptive activity as required by the assignment
7 - Repeats steps 1 to 6 for the test data.
8 - Binds train and test data using rbind().
9 - Melts the data using the columns ("subject","activityId","activityName") as key and all the other columns as measures.
10 - Cast the data back to calculate the mean of the measures for each subject and activity.
11 - Write the data to a file called tidy_data.txt

The file produced contains 180 observations of 69 variables. The variables are:
 - subject                    : The subject id.
 - activityId                 : The activity id.
 - activityName               : The activity name.
 - tBodyAcc-mean()-X          : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyAcc-mean()-Y          : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyAcc-mean()-Z          : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyAcc-std()-X           : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyAcc-std()-Y           : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyAcc-std()-Z           : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tGravityAcc-mean()-X       : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tGravityAcc-mean()-Y       : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tGravityAcc-mean()-Z       : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tGravityAcc-std()-X        : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tGravityAcc-std()-Y        : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tGravityAcc-std()-Z        : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyAccJerk-mean()-X      : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyAccJerk-mean()-Y      : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyAccJerk-mean()-Z      : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyAccJerk-std()-X       : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyAccJerk-std()-Y       : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyAccJerk-std()-Z       : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyGyro-mean()-X         : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyGyro-mean()-Y         : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyGyro-mean()-Z         : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyGyro-std()-X          : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyGyro-std()-Y          : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyGyro-std()-Z          : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyGyroJerk-mean()-X     : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyGyroJerk-mean()-Y     : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyGyroJerk-mean()-Z     : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyGyroJerk-std()-X      : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyGyroJerk-std()-Y      : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyGyroJerk-std()-Z      : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyAccMag-mean()         : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyAccMag-std()          : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tGravityAccMag-mean()      : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tGravityAccMag-std()       : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyAccJerkMag-mean()     : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyAccJerkMag-std()      : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyGyroMag-mean()        : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyGyroMag-std()         : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyGyroJerkMag-mean()    : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - tBodyGyroJerkMag-std()     : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyAcc-mean()-X          : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyAcc-mean()-Y          : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyAcc-mean()-Z          : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyAcc-std()-X           : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyAcc-std()-Y           : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyAcc-std()-Z           : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyAccJerk-mean()-X      : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyAccJerk-mean()-Y      : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyAccJerk-mean()-Z      : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyAccJerk-std()-X       : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyAccJerk-std()-Y       : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyAccJerk-std()-Z       : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyGyro-mean()-X         : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyGyro-mean()-Y         : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyGyro-mean()-Z         : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyGyro-std()-X          : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyGyro-std()-Y          : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyGyro-std()-Z          : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyAccMag-mean()         : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyAccMag-std()          : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyBodyAccJerkMag-mean() : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyBodyAccJerkMag-std()  : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyBodyGyroMag-mean()    : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyBodyGyroMag-std()     : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyBodyGyroJerkMag-mean(): Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
 - fBodyBodyGyroJerkMag-std() : Mean of the variables from the original data set grouped by subject and activity. It's description can be seen in the original data set's documentation.
