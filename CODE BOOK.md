CODE BOOK
===

## Processing the data

Version information:
System: macOS 10.13.4
R: 3.5.1
RStudio: 1.1.456

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

* ActivityDescription
   Descriptive names of each activity the test/training subject performed.
   
* SubjectCode
   The identification of the subject who performed the activity for each window sample. Its range is from 1 to 30.
   
* ActivityCode
   The corresponding code number behind each activity name:
   1 - WALKING
   2 - WALKING_UPSTAIRS
   3 - WALKING_DOWNSTAIRS
   4 - SITTING
   5 - STANDING
   6 - LAYING

As described in the UCI HAR Dataset features vector info:
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are:
* mean(): Mean value
* std(): Standard deviation

The following variables are the mean values of the corresponding variable (as described above) for each subject + activity combination. All values are normalized and bounded within [-1, 1].
* timeBodyAcceleration-mean()-X
* timeBodyAcceleration-mean()-Y
* timeBodyAcceleration-mean()-Z
* timeBodyAcceleration-std()-X
* timeBodyAcceleration-std()-Y
* timeBodyAcceleration-std()-Z
* timeGravityAcceleration-mean()-X
* timeGravityAcceleration-mean()-Y
* timeGravityAcceleration-mean()-Z
* timeGravityAcceleration-std()-X
* timeGravityAcceleration-std()-Y
* timeGravityAcceleration-std()-Z
* timeBodyAccelerationJerk-mean()-X
* timeBodyAccelerationJerk-mean()-Y
* timeBodyAccelerationJerk-mean()-Z
* timeBodyAccelerationJerk-std()-X
* timeBodyAccelerationJerk-std()-Y
* timeBodyAccelerationJerk-std()-Z
* timeBodyGyro-mean()-X
* timeBodyGyro-mean()-Y
* timeBodyGyro-mean()-Z
* timeBodyGyro-std()-X
* timeBodyGyro-std()-Y
* timeBodyGyro-std()-Z
* timeBodyGyroJerk-mean()-X
* timeBodyGyroJerk-mean()-Y
* timeBodyGyroJerk-mean()-Z
* timeBodyGyroJerk-std()-X
* timeBodyGyroJerk-std()-Y
* timeBodyGyroJerk-std()-Z
* timeBodyAccelerationMagnitude-mean()
* timeBodyAccelerationMagnitude-std()
* timeGravityAccelerationMagnitude-mean()
* timeGravityAccelerationMagnitude-std()
* timeBodyAccelerationJerkMagnitude-mean()
* timeBodyAccelerationJerkMagnitude-std()
* timeBodyGyroMagnitude-mean()
* timeBodyGyroMagnitude-std()
* timeBodyGyroJerkMagnitude-mean()
* timeBodyGyroJerkMagnitude-std()
* fourierBodyAcceleration-mean()-X
* fourierBodyAcceleration-mean()-Y
* fourierBodyAcceleration-mean()-Z
* fourierBodyAcceleration-std()-X
* fourierBodyAcceleration-std()-Y
* fourierBodyAcceleration-std()-Z
* fourierBodyAccelerationJerk-mean()-X
* fourierBodyAccelerationJerk-mean()-Y
* fourierBodyAccelerationJerk-mean()-Z
* fourierBodyAccelerationJerk-std()-X
* fourierBodyAccelerationJerk-std()-Y
* fourierBodyAccelerationJerk-std()-Z
* fourierBodyGyro-mean()-X
* fourierBodyGyro-mean()-Y
* fourierBodyGyro-mean()-Z
* fourierBodyGyro-std()-X
* fourierBodyGyro-std()-Y
* fourierBodyGyro-std()-Z
* fourierBodyAccelerationMagnitude-mean()
* fourierBodyAccelerationMagnitude-std()
* fourierBodyBodyAccelerationJerkMagnitude-mean()
* fourierBodyBodyAccelerationJerkMagnitude-std()
* fourierBodyBodyGyroMagnitude-mean()
* fourierBodyBodyGyroMagnitude-std()
* fourierBodyBodyGyroJerkMagnitude-mean()
* fourierBodyBodyGyroJerkMagnitude-std()
