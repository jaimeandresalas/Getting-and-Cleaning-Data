# Getting-and-Cleaning-Data
Programming Assignment for the 3th course of Data Science for Johns Hopkins University
### Information About the Assignment
I created a dataset with a data for a group of 30 volunteers within an age bracket of 19-48 years. Each person did six activities (walking(WALKING), walking upstairs(WALKING_UPSTAIR), sitting(SITTING), standing(STANDING) and Laying(LAYING) all used your smartphone(Samsung Galaxy S II). Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Analysis 
For the analysis I used R for programming, so, I could read all the data for archives(.txt). I join all the data in one dataset (Data.scv). This data will be able to use in data analysis, data prediction and Machine Learning. The reason for is "TYDY DATA", this data is tydy is easy usefull and clean.

# The Dataset include the following files:
  - 'Data.csv', a tidy data set that include mean and standard deviation for each measurement for each observation.
  - 'ag_data.csv’ - an aggregated data set with the average of each variable for each activity and each subject.
  - 'info_variables.txt', a file that I described all fectures for the all variables.
  
  
