
## Human Activity Recognition Using Smartphones Dataset Version 1.0

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## For each record it is provided:
======================================

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

## List of files contained
==========================
1. Code Book.md
2. run_analysis.R

## Overview of the included files
==================================
#### Code Book.md
This contains a list of all the variables used in the dataset. It also offers a comprehensive description of each variable and how the values of each of the variables are calculated.


#### run_analysis.R
This contains the code that creates 2 tidy data sets from the files provided in the assignment. The tidy datases are as below:
1. tidy_dataset - This contains the tidy merged training and test sets on the mean and standard deviation for each measurement
2. mean_activity_subject - This is a tidy data set with the average of each variable for each activity and each subject

Step 1: Read all the the input files into R and store them as data tables. The file read into R as below:
- /train/X_train.txt
- /train/y_train.txt
- /train/subject_train.txt

- /test/X_test.txt
- /test/y_test.txt
- /test/subject_test.txt

- /activity_labels.txt
- /features.txt


Step 2: Merge all the corresponding training and test files
X_train.txt & X_test.txt
y_train.txt & y_test.txt
subject_train.txt & subject_test.txt

Step 3: Provide headers to each of the columns in the merged dataset

Step 4: Tidy the data set by covert the header names to lower characters

Step 5: Tidy the data set by removing all punctuations from the header names

Step 6: Extract only the measurements on the mean and standard deviation for each measurement

Step 7: Merge the activity_labels.txt with the dataset

Step 8: Merge the subjects with the dataset

Step 9: Create a new data table in which the data is grouped by the activity and the subject

Step 10: Create a tidy data set "mean_activity_subject" with the average of each variable for each activity and each subject
