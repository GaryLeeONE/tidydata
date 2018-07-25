#Load the dplyr package
library(dplyr)

#Load in the UCI HAR Dataset and corresponding labels/names
test <- tbl_df(read.csv("./UCI HAR Dataset/test/X_test.txt",
                        sep = "", header = FALSE))
train <- tbl_df(read.csv("./UCI HAR Dataset/train/X_train.txt",
                         sep = "", header = FALSE))
testsub <- tbl_df(read.csv("./UCI HAR Dataset/test/subject_test.txt",
                           sep = "", header = FALSE))
trainsub <- tbl_df(read.csv("./UCI HAR Dataset/train/subject_train.txt",
                            sep = "", header = FALSE))
testy <- tbl_df(read.csv("./UCI HAR Dataset/test/y_test.txt",
                         sep = "", header = FALSE))
trainy <- tbl_df(read.csv("./UCI HAR Dataset/train/y_train.txt",
                          sep = "", header = FALSE))
actLabels <- tbl_df(read.csv("./UCI HAR Dataset/activity_labels.txt",
                             sep = "", header = FALSE))
featureNames <- tbl_df(read.csv("./UCI HAR Dataset/features.txt",
                                sep = "", header = FALSE))

#Column bind the subjects & activities to the test/train datasets
testall <- bind_cols(test, testsub, testy)
trainall <- bind_cols(train, trainsub, trainy)
rm(test, testsub, testy, train, trainsub, trainy)

#Merge the test and train datasets and set appropriate names for each column
#"t" corresponds to "time-derived"
#"f" corresponds to Fast Fourier Transform
#"Acc" corresponds to Acceleration
#"Mag" corresponds to Magnitude
alldata <- bind_rows(testall, trainall)
rm(testall, trainall)
featureNames <- as.character(featureNames$V2)
featureNames <- gsub("^t", "time", featureNames)
featureNames <- gsub("^f", "fourier", featureNames)
featureNames <- gsub("Acc", "Acceleration", featureNames)
featureNames <- gsub("Mag", "Magnitude", featureNames)
featureNames <- c(featureNames, "SubjectCode", "ActivityCode")

names(alldata) <- featureNames

#Extract the mean and standard deviation for each measurement
flag <- sort(c(grep("mean()", featureNames, fixed = TRUE),
               grep("std()", featureNames, fixed = TRUE),
               grep("Code", featureNames, fixed = TRUE)))
selectdata <- alldata[,flag]
rm(flag, featureNames)

#Use descriptive activity names to name the activities in the data set
mergeddata <- merge.data.frame(selectdata, actLabels,
                               by.x = "ActivityCode", by.y = "V1", all = TRUE)
names(mergeddata)[ncol(mergeddata)] <- "ActivityDescription"
rm(actLabels)

#Creates a second, independent tidy data set with the average
#of each variable for each activity and each subject.
tidydata <- group_by(mergeddata, ActivityDescription, SubjectCode) %>%
     summarize_all(mean)

#Output the tidy dataset as a *.txt file
write.table(tidydata, "tidydata.txt", row.names = FALSE)
