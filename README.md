GettingAndCleaning_Project1
===========================

#Project for the Coursera course "Getting and Cleaning Data"

##Brief File Description:

*run_analysis.R - the R code to clean up the dataset and produce the tidy data set of averages
*averagesSubjectAndActivity.txt - the submitted tidy data set containing averages for each subject and activity
*CodeBook.md - codebook that describes the variables, data, and transformations applied to the dataset

##Code explanation:

###Steps:

1. Read in the files x_test.txt, y_test.txt, subject_test.txt and use cbind on them. 
Likewise, with x_train.txt, y_train.txt, and subject_train.txt. Then use rbind on those 
two sets to form a complete dataframe. 

This is the only sensible way to combine the data as far as I could tell. Essentially, 
labeling the measurement values with the activity and subject and then combining the training
and test data sets.

2. Features.txt was read in to obtain the indexes of the columns which matched to either 
"mean\\(" or "std" using grep(). The "(" was included to avoid meanFreq variables. 
I then assigned the dataframe to only that subset of indices.

In this way I selected for only the mean() and std() of the 33 measurements/signals
described in "features_info" and obtained 66 variables/columns. That was my understanding 
of the project direction's use of "mean and standard deviation for each measurement". 

3. Next I obtained a list of the variable/feature names corresponding to those 
columns I selected for using the column indices obtained in #2. I then manually altered 
the names slightly so that the names were in a more readable format (e.g. replacing Acc
with Accelerometer) and assigned them as the names to the Data dataframe.

4. I then replaced the 1-6 activity numbers with the activity names in "activity_labels.txt". 
The result is a pretty clean data set with 10299 rows and 68 columns, a narrow data set.

5. I then looped through all the activities and within that loop looped through the subjects. 
I then took a mean for each column (1:66) for the combination of activity and subject. The 
subject and activity were added to this vector so that it was 68 fields long. Using the 
two loops this was done for each combination of subject and activity. At the end of each
iteration the row was rbinded to all the previous rows and at the end of the outer loop
the combined rows were used to form a dataframe. Then the column names from the first data 
set were applied to it.

In this way I obtained a dataframe of 68 columns and 180 rows as the submitted dataset. 
Each column is a variable and each row is an observation of those variables. 
The dataframe as a whole represents mean and standard deviations of axial accelerometer 
and gyroscope measurements from a smartphone. I believe it meets the definitions of 
tidy data (narrow, specifically) described in http://vita.had.co.nz/papers/tidy-data.pdf.


##Brief Dataset Summary

*The dataset is measurements from the recordings of 30 people doing everyday activities
*The measurements are taken via a smartphone with inertial sensors which is attached at the waist
*The data is from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
*See CodeBook.md for more info about the dataset and variables
