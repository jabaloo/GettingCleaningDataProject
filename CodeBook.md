# Code Book for Getting and Cleaning Data Project


## Transformations to obtain table tidyData

1. The contents of X_train.txt and X_test.txt were combined in the variable X_all
2. The variables of X_all that were not related to mean or standard deviation values were removed
3. The contents of Y_train.txt and Y_test.txt (the activities related to each measure) were combined in the variable Y_all
4. The contents of Y_all, all numeric, were converted to descriptive text for the activity, and added to X_all as a new column.
5. Proper labels were added to all columns of X_all
6. X_all was then grouped by activity and subject, and the means for each group and measure was stored in the variable tidyData.

## Contents of tidyData

tidyData is a table with the means and standard deviation for each measure, for each subject and activity. The fields are

* Activity_label: type of acvitivity. Factor of 6 levels
  * LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING UPSTAIRS
* Subject: identifier of the subject
  * Numeric, from 1 to 30

### Features

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 
* mean(): Mean value
* std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables are below


1.	tBodyAcc-mean()-X
2.	tBodyAcc-mean()-Y
3.	tBodyAcc-mean()-Z
4.	tBodyAcc-std()-X
5.	tBodyAcc-std()-Y
6.	tBodyAcc-std()-Z
7.	tGravityAcc-mean()-X
8.	tGravityAcc-mean()-Y
9.	tGravityAcc-mean()-Z
10.	tGravityAcc-std()-X
11.	tGravityAcc-std()-Y
12.	tGravityAcc-std()-Z
13.	tBodyAccJerk-mean()-X
14.	tBodyAccJerk-mean()-Y
15.	tBodyAccJerk-mean()-Z
16.	tBodyAccJerk-std()-X
17.	tBodyAccJerk-std()-Y
18.	tBodyAccJerk-std()-Z
19.	tBodyGyro-mean()-X
20.	tBodyGyro-mean()-Y
21.	tBodyGyro-mean()-Z
22.	tBodyGyro-std()-X
23.	tBodyGyro-std()-Y
24.	tBodyGyro-std()-Z
25.	tBodyGyroJerk-mean()-X
26.	tBodyGyroJerk-mean()-Y
27.	tBodyGyroJerk-mean()-Z
28.	tBodyGyroJerk-std()-X
29.	tBodyGyroJerk-std()-Y
30.	tBodyGyroJerk-std()-Z
31.	tBodyAccMag-mean()
32.	tBodyAccMag-std()
33.	tGravityAccMag-mean()
34.	tGravityAccMag-std()
35.	tBodyAccJerkMag-mean()
36.	tBodyAccJerkMag-std()
37.	tBodyGyroMag-mean()
38.	tBodyGyroMag-std()
39.	tBodyGyroJerkMag-mean()
40.	tBodyGyroJerkMag-std()
41.	fBodyAcc-mean()-X
42.	fBodyAcc-mean()-Y
43.	fBodyAcc-mean()-Z
44.	fBodyAcc-std()-X
45.	fBodyAcc-std()-Y
46.	fBodyAcc-std()-Z
47.	fBodyAcc-meanFreq()-X
48.	fBodyAcc-meanFreq()-Y
49.	fBodyAcc-meanFreq()-Z
50.	fBodyAccJerk-mean()-X
51.	fBodyAccJerk-mean()-Y
52.	fBodyAccJerk-mean()-Z
53.	fBodyAccJerk-std()-X
54.	fBodyAccJerk-std()-Y
55.	fBodyAccJerk-std()-Z
56.	fBodyAccJerk-meanFreq()-X
57.	fBodyAccJerk-meanFreq()-Y
58.	fBodyAccJerk-meanFreq()-Z
59.	fBodyGyro-mean()-X
60.	fBodyGyro-mean()-Y
61.	fBodyGyro-mean()-Z
62.	fBodyGyro-std()-X
63.	fBodyGyro-std()-Y
64.	fBodyGyro-std()-Z
65.	fBodyGyro-meanFreq()-X
66.	fBodyGyro-meanFreq()-Y
67.	fBodyGyro-meanFreq()-Z
68.	fBodyAccMag-mean()
69.	fBodyAccMag-std()
70.	fBodyAccMag-meanFreq()
71.	fBodyBodyAccJerkMag-mean()
72.	fBodyBodyAccJerkMag-std()
73.	fBodyBodyAccJerkMag-meanFreq()
74.	fBodyBodyGyroMag-mean()
75.	fBodyBodyGyroMag-std()
76.	fBodyBodyGyroMag-meanFreq()
77.	fBodyBodyGyroJerkMag-mean()
78.	fBodyBodyGyroJerkMag-std()
79.	fBodyBodyGyroJerkMag-meanFreq()

Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
