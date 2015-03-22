## This script reads in the data from the "Human Activity Recognition Using 
## Smartphones Data Set" and performs operations on the data to make it tidy.
## It assumes that the workind directory is the folder created by unziping 
## the data set zip file (UCI HAR Dataset)

compileData <- function(dataname) {
    # Read in the data set
    data <- read.table(paste0("./",dataname,"/X_",dataname,".txt"))
    # Read in the feature names
    featureNames <- read.table("./features.txt")
    # Set the names in the train data
    names(data) <- featureNames[,2]
    
    # Select only the columns for the mean and standard deviations of the values.
    # These columns have "mean()" and "std()" in their names.
    meanIdx <- grep("mean\\(", featureNames[,2])
    stdIdx <- grep("std\\(", featureNames[,2])
    columnIdx <- c(meanIdx, stdIdx)
    # Arrange the indexes in ascending order so as not to shuffle the columns.
    # We just want to remove the columns that are not of interest, but keeping
    # the original order among the remaining columns.
    columnIdx <- sort(columnIdx)
    data <- data[,columnIdx]
    
    # Read in the subjects for the data set
    subjects <- read.table(paste0("./",dataname,"/subject_",dataname,".txt"))
    data$subject <- subjects[,1]
    
    # Read in the activities (the labels) for the data set
    activities <- read.table(paste0("./",dataname,"/y_",dataname,".txt"))
    data$activityId <- activities[,1]
    
    # Read in the activity labels for the data set
    activityLabels <- read.table("./activity_labels.txt")
    names(activityLabels) <- c("activityId", "activityName")
    # Merges the activity labels with the data to provide descriptive activity 
    # as required by the assignment
    data <- merge(data, activityLabels, sort = FALSE)
    # Reorder the columns to return the activityId column to the original position
    # (the merge command puts the common columns first on the resulting data frame)
    data <- data[,c(2:67,68,1,69)]	
}

tidyData <- function() {
    # Compiles the trainning and test data
    trainData <- compileData("train")
    testData <- compileData("test")
    # Bind them together
    data <- rbind(trainData, testData)
    
    # Let's melt the data! Want fries with that, Sir?!? =P
    dataMelt <- melt(data, id = c("subject","activityId","activityName"), 
                     measure.vars = names(data)[!names(data) %in% c("subject","activityId","activityName")]
    )
    
    # Cast the data to calculate the mean
    summaryData <- dcast(dataMelt, subject + activityId + activityName ~ variable, mean)    
}

# Compiles the tidy data
data <- tidyData()

# Writes the data to a file
write.table(data, "./tidy_data.txt", row.names = FALSE)
