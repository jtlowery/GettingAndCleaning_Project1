#Summary of Data

Data source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This data was obtained from the UCI Machine Learning Repository and was originally
obtained by:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
Smartlab - Non Linear Complex Systems Laboratory 
DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy. 
activityrecognition '@' smartlab.ws 
www.smartlab.ws  

The initial dataset contains 561 features. There are time and frequency domain variables.
Each row or feature vector contains an activity label and identifier of the subject
from which the measurement was taken. The measurements include triaxial acceleration (X,Y,Z)
from the accelerometer and an estimate of the body acceleration. Additionally,
the measurements include triaxial angular velocity (X,Y,Z) from the gyroscope. 
Both these sensors used (gyroscope and accelerometer) were embedded in a smartphone
worn by subjects on their waists'.

#Description of Variables and Data

Some general rules for the data described here instead of repeated for every column:
- Time in a column name denotes a time domain signal
- Frequency in a column name denotes frequency domain signal
- Values have been normalized so that they are between 1 and -1 for columns 1-66
- Std() in a name denotes that it is a standard deviation of the measurements
- mean() in a name denotes that it is a mean of the measurements
- X,Y,Z denotes a x,y, or z axis measurement
- Accelerometer denotes a measurement taken by the accelerometer
- Gyroscope denotes a measurement taken by the gyroscope
 
- row.names - row names in form  ActivityLabelAndSubject
- time_BodyAccelerometer_std()_X -	Standard deviation for acceleration of body in X direction
- time_BodyAccelerometer_std()_Y -	Standard deviation for acceleration of body in Y direction
- time_BodyAccelerometer_std()_Z -	Standard deviation  for acceleration of  body in Z direction
- time_GravityAccelerometer_std()_X -	Standard deviation of acceleration of body minus gravity acceleration in X direction
- time_GravityAccelerometer_std()_Y -	Standard deviation of acceleration of body minus gravity acceleration in Y direction
- time_GravityAccelerometer_std()_Z -	Standard deviation  of acceleration of body minus gravity acceleration in Z direction
- time_BodyAccelerometerJerk_std()_X -	Standard deviation of jerk of body in X direction
- time_BodyAccelerometerJerk_std()_Y - 	Standard deviation of jerk of body in Y direction
- time_BodyAccelerometerJerk_std()_Z -	Standard deviation of jerk of body in Z direction
- time_BodyGyroscope_std()_X -	Standard deviation of angular velocity of body in X direction
- time_BodyGyroscope_std()_Y -	Standard deviation of angular velocity of body in Y direction
- time_BodyGyroscope_std()_Z -	Standard deviation of angular velocity of body in Z direction
- time_BodyGyroscopeJerk_std()_X -	Standard deviation of jerk of body in X direction
- time_BodyGyroscopeJerk_std()_Y -	Standard deviation of jerk of body in Y direction
- time_BodyGyroscopeJerk_std()_Z -	Standard deviation of jerk of body in Z direction
- time_BodyAccelerometerMag_std() -	Standard deviation of magnitude of acceleration of body
- time_GravityAccelerometerMag_std() -	Standard deviation of magnitude of acceleration of body minus gravity acceleration
- time_BodyAccelerometerJerkMag_std() -	Standard deviation of magnitude of jerk of body
- time_BodyGyroscopeMag_std() -	Standard deviation of magnitude of angular velocity
- time_BodyGyroscopeJerkMag_std() -	Standard deviation of magnitude of jerk of body
- frequency_BodyAccelerometer_std()_X -	 Standard deviation of acceleration of body in X direction
- frequency_BodyAccelerometer_std()_Y -	 Standard deviation of acceleration of body in Y direction
- frequency_BodyAccelerometer_std()_Z -	 Standard deviation of acceleration of body in Z direction
- frequency_BodyAccelerometerJerk_std()_X -	Standard deviation of jerk of body in X direction
- frequency_BodyAccelerometerJerk_std()_Y -	Standard deviation of jerk of body in Y direction
- frequency_BodyAccelerometerJerk_std()_Z -	Standard deviation of jerk of body in  Z direction
- frequency_BodyGyroscope_std()_X -	Standard deviation of angular velocity of body in X direction
- frequency_BodyGyroscope_std()_Y -	Standard deviation of angular velocity of body in Y direction
- frequency_BodyGyroscope_std()_Z -	Standard deviation of angular velocity of body in Z direction
- frequency_BodyAccelerometerMag_std() -	Standard deviation of magnitude of acceleration of body
- frequency_BodyBodyAccelerometerJerkMag_std() -	Standard deviation of magnitude of jerk of body
- frequency_BodyBodyGyroMag_std() -	Standard deviation of magnitude of angular velocity of body
- frequency_BodyBodyGyroJerkMag_std() -	Standard deviation of magnitude of jerk of body
- time_BodyAccelerometer_mean()_X -	Mean of acceleration of body in X direction
- time_BodyAccelerometer_mean()_Y -	Mean of acceleration of body in Y direction
- time_BodyAccelerometer_mean()_Z -	Mean of acceleration of body in Z direction
- time_GravityAccelerometer_mean()_X -	Mean of acceleration of body minus gravity acceleration in X direction
- time_GravityAccelerometer_mean()_Y -	Mean of acceleration of body minus gravity acceleration in Y direction
- time_GravityAccelerometer_mean()_Z -	Mean of acceleration of body minus gravity acceleration in Z direction
- time_BodyAccelerometerJerk_mean()_X -	Mean of jerk of body in X direction
- time_BodyAccelerometerJerk_mean()_Y -	Mean of jerk of body in Y direction
- time_BodyAccelerometerJerk_mean()_Z -	Mean of jerk of body in Z direction
- time_BodyGyroscope_mean()_X -	Mean of angular velocity of body in X direction
- time_BodyGyroscope_mean()_Y -	Mean of angular velocity of body in Y direction
- time_BodyGyroscope_mean()_Z -	Mean of angular velocity of body in Z direction
- time_BodyGyroscopeJerk_mean()_X -	Mean of jerk of body in X direction
- time_BodyGyroscopeJerk_mean()_Y -	Mean of jerk of body in Y direction
- time_BodyGyroscopeJerk_mean()_Z -	Mean of jerk of body in Z direction
- time_BodyAccelerometerMag_mean() -	Mean of magnitude of acceleration of body
- time_GravityAccelerometerMag_mean() -	Mean of magnitude of acceleration of body minus gravity acceleration
- time_BodyAccelerometerJerkMag_mean() -	Mean of magnitude of jerk of body
- time_BodyGyroscopeMag_mean() -	Mean of magnitude of angular velocity of body
- time_BodyGyroscopeJerkMag_mean() -	Mean of magnitude of jerk of body
- frequency_BodyAccelerometer_mean()_X -	Mean of acceleration of body in X direction
- frequency_BodyAccelerometer_mean()_Y -	Mean of acceleration of body in Y direction
- frequency_BodyAccelerometer_mean()_Z -	Mean of acceleration of body in Z direction
- frequency_BodyAccelerometerJerk_mean()_X -	Mean of jerk of body in X direction
- frequency_BodyAccelerometerJerk_mean()_Y -	Mean of jerk of body in Y direction
- frequency_BodyAccelerometerJerk_mean()_Z -	Mean of jerk of body in Z direction
- frequency_BodyGyroscope_mean()_X -	Mean of angular velocity of body in X direction
- frequency_BodyGyroscope_mean()_Y -	Mean of angular velocity of body in Y direction
- frequency_BodyGyroscope_mean()_Z -	Mean of angular velocity of body in Z direction
- frequency_BodyAccelerometerMag_mean() -	Mean of magnitude of acceleration of body
- frequency_BodyBodyAccelerometerJerkMag_mean() -	Mean of magnitude of jerk of body
- frequency_BodyBodyGyroMag_mean() -	Mean of magnitude of angular velocity of body
- frequency_BodyBodyGyroscopeJerkMag_mean() -	Mean of magnitude of jerk of body
- Activity: Denotes activity being performed when measurements taken
- Subject: Denotes subject measurements taken from with a number 1-30

##Specifics/Units:
- Angular velocity in radians/sec (originally measured)
- Acceleration is in standard gravity units 'g' (originally measured)

Column names were adapted from the names given in "features.txt" so that they were somewhat 
more readable.


#Transformations
- To obtain original source data: Sensor signals were preprocessed by applying a noise-filter and sampling with sliding
windows of 2.56 seconds and 50% overlap with 128 readings/window. The acceleration signal
was separated into body and gravity components by applying a Butterworth low-pass filter.
- I selected the columns above from the source data. The mean of each column was taken from the 
testing and training data for each subject and activity combination. See README.md and run_analysis.R 
for complete details.