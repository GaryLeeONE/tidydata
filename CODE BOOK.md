CODE BOOK
===

## Processing the data

**Note**: The sequence of steps described here is slightly different from the course project description on Coursera.

1. Load in the UCI HAR Dataset and corresponding labels/names
2. Column bind the subjects & activities to the test/train datasets
3. Merge the test and train datasets and set appropriate names for each column
    Also applied changes to the column names to make them more descriptive
    "t" corresponds to "time", i.e. time-derived
    "f" corresponds to Fast Fourier Transform
    "Acc" corresponds to Acceleration
    "Mag" corresponds to Magnitude
4. Extract the mean and standard deviation for each measurement
5. Use descriptive activity names to name the activities in the data set
6. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
7. Output the tidy dataset as a *.txt file

For detailed code behind each step, please refer to `run_analysis.R`

## Variables and Values
ActivityDescription  SubjectCode  ActivityCode  timeBodyAcceleration-mean()-X  timeBodyAcceleration-mean()-Y  timeBodyAcceleration-mean()-Z  timeBodyAcceleration-std()-X  timeBodyAcceleration-std()-Y  timeBodyAcceleration-std()-Z  timeGravityAcceleration-mean()-X  timeGravityAcceleration-mean()-Y  timeGravityAcceleration-mean()-Z  timeGravityAcceleration-std()-X  timeGravityAcceleration-std()-Y  timeGravityAcceleration-std()-Z  timeBodyAccelerationJerk-mean()-X  timeBodyAccelerationJerk-mean()-Y  timeBodyAccelerationJerk-mean()-Z  timeBodyAccelerationJerk-std()-X  timeBodyAccelerationJerk-std()-Y  timeBodyAccelerationJerk-std()-Z  timeBodyGyro-mean()-X  timeBodyGyro-mean()-Y  timeBodyGyro-mean()-Z  timeBodyGyro-std()-X  timeBodyGyro-std()-Y  timeBodyGyro-std()-Z  timeBodyGyroJerk-mean()-X  timeBodyGyroJerk-mean()-Y  timeBodyGyroJerk-mean()-Z  timeBodyGyroJerk-std()-X  timeBodyGyroJerk-std()-Y  timeBodyGyroJerk-std()-Z  timeBodyAccelerationMagnitude-mean()  timeBodyAccelerationMagnitude-std()  timeGravityAccelerationMagnitude-mean()  timeGravityAccelerationMagnitude-std()  timeBodyAccelerationJerkMagnitude-mean()  timeBodyAccelerationJerkMagnitude-std()  timeBodyGyroMagnitude-mean()  timeBodyGyroMagnitude-std()  timeBodyGyroJerkMagnitude-mean()  timeBodyGyroJerkMagnitude-std()  fourierBodyAcceleration-mean()-X  fourierBodyAcceleration-mean()-Y  fourierBodyAcceleration-mean()-Z  fourierBodyAcceleration-std()-X  fourierBodyAcceleration-std()-Y  fourierBodyAcceleration-std()-Z  fourierBodyAccelerationJerk-mean()-X  fourierBodyAccelerationJerk-mean()-Y  fourierBodyAccelerationJerk-mean()-Z  fourierBodyAccelerationJerk-std()-X  fourierBodyAccelerationJerk-std()-Y  fourierBodyAccelerationJerk-std()-Z  fourierBodyGyro-mean()-X  fourierBodyGyro-mean()-Y  fourierBodyGyro-mean()-Z  fourierBodyGyro-std()-X  fourierBodyGyro-std()-Y  fourierBodyGyro-std()-Z  fourierBodyAccelerationMagnitude-mean()  fourierBodyAccelerationMagnitude-std()  fourierBodyBodyAccelerationJerkMagnitude-mean()  fourierBodyBodyAccelerationJerkMagnitude-std()  fourierBodyBodyGyroMagnitude-mean()  fourierBodyBodyGyroMagnitude-std()  fourierBodyBodyGyroJerkMagnitude-mean()  fourierBodyBodyGyroJerkMagnitude-std()
