#You should create one R script called run_analysis.R that does the following: 
#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement. 
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names. 
#Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

#read data in -- do not need the "Inertial Signals" folder
classes <- c(rep("numeric", 561))

Xtest <- read.delim("X_test.txt", header=F, sep="", 
                    colClasses="numeric", na.strings="NA") #test set
Ytest <- read.delim("y_test.txt", header=F)                #test labels-activity labels
subjectTest <- read.delim("subject_test.txt", header=F)    #1-24
TestWhole <- cbind(Xtest, Ytest, subjectTest)

Xtrain <- read.delim("X_train.txt", header=F, sep="", 
                     colClasses="numeric", na.strings="NA") #training set
Ytrain <- read.delim("y_train.txt", header=F)               #training labels
subjectTrain <- read.delim("subject_train.txt", header=F)   #1-30
TrainWhole <- cbind(Xtrain, Ytrain, subjectTrain)
Data <- data.frame(rbind(TestWhole, TrainWhole), row.names=NULL)

x<- read.delim("features.txt", header=F, colClasses="character", sep="", row.names= NULL) #read in naes of the 561 variables
activityAndSubjectIndex <- c(562,563) #activity, subject 

#only taking std() and mean() for the 33 measurements/signals described in "features_info.txt"
meanIndex <- grep("mean\\(", x$V2) #added the ( to avoid meanFreq
stdIndex <- grep("std", x$V2)
indices <- append(stdIndex, meanIndex)
namesUsing <- x[indices, 2]
Data <- data.frame(Data[ ,append(indices, activityAndSubjectIndex)])
names(Data)<- append(namesUsing, c("Activity","Subject"))
names(Data) <-  c("time_BodyAccelerometer_std()_X", "time_BodyAccelerometer_std()_Y", "time_BodyAccelerometer_std()_Z",
                  "time_GravityAccelerometer_std()_X", "time_GravityAccelerometer_std()_Y", "time_GravityAccelerometer_std()_Z",
                  "time_BodyAccelerometerJerk_std()_X", "time_BodyAccelerometerJerk_std()_Y", "time_BodyAccelerometerJerk_std()_Z",
                  "time_BodyGyroscope_std()_X", "time_BodyGyroscope_std()_Y", "time_BodyGyroscope_std()_Z",
                  "time_BodyGyroscopeJerk_std()_X", "time_BodyGyroscopeJerk_std()_Y", "time_BodyGyroscopeJerk_std()_Z",
                  "time_BodyAccelerometerMag_std()", "time_GravityAccelerometerMag_std()", "time_BodyAccelerometerJerkMag_std()",
                  "time_BodyGyroscopeMag_std()", "time_BodyGyroscopeJerkMag_std()", "frequency_BodyAccelerometer_std()_X",
                  "frequency_BodyAccelerometer_std()_Y", "frequency_BodyAccelerometer_std()_Z", "frequency_BodyAccelerometerJerk_std()_X",
                  "frequency_BodyAccelerometerJerk_std()_Y", "frequency_BodyAccelerometerJerk_std()_Z", "frequency_BodyGyroscope_std()_X",
                  "frequency_BodyGyroscope_std()_Y", "frequency_BodyGyroscope_std()_Z", "frequency_BodyAccelerometerMag_std()",
                  "frequency_BodyBodyAccelerometerJerkMag_std()", "frequency_BodyBodyGyroMag_std()", "frequency_BodyBodyGyroJerkMag_std()",
                  "time_BodyAccelerometer_mean()_X", "time_BodyAccelerometer_mean()_Y", "time_BodyAccelerometer_mean()_Z",
                  "time_GravityAccelerometer_mean()_X", "time_GravityAccelerometer_mean()_Y", "time_GravityAccelerometer_mean()_Z",
                  "time_BodyAccelerometerJerk_mean()_X", "time_BodyAccelerometerJerk_mean()_Y", "time_BodyAccelerometerJerk_mean()_Z",
                  "time_BodyGyroscope_mean()_X", "time_BodyGyroscope_mean()_Y", "time_BodyGyroscope_mean()_Z", "time_BodyGyroscopeJerk_mean()_X",
                  "time_BodyGyroscopeJerk_mean()_Y", "time_BodyGyroscopeJerk_mean()_Z", "time_BodyAccelerometerMag_mean()", 
                  "time_GravityAccelerometerMag_mean()", "time_BodyAccelerometerJerkMag_mean()", "time_BodyGyroscopeMag_mean()",
                  "time_BodyGyroscopeJerkMag_mean()", "frequency_BodyAccelerometer_mean()_X", "frequency_BodyAccelerometer_mean()_Y",
                  "frequency_BodyAccelerometer_mean()_Z", "frequency_BodyAccelerometerJerk_mean()_X", "frequency_BodyAccelerometerJerk_mean()_Y",
                  "frequency_BodyAccelerometerJerk_mean()_Z", "frequency_BodyGyroscope_mean()_X", "frequency_BodyGyroscope_mean()_Y", 
                  "frequency_BodyGyroscope_mean()_Z", "frequency_BodyAccelerometerMag_mean()", "frequency_BodyBodyAccelerometerJerkMag_mean()",
                  "frequency_BodyBodyGyroMag_mean()", "frequency_BodyBodyGyroscopeJerkMag_mean()", "Activity", "Subject") 

Data[which(Data$Activity==1), "Activity"] <- "WALKING"
Data[which(Data$Activity==2), "Activity"] <- "WALKING_UPSTAIRS"
Data[which(Data$Activity==3), "Activity"] <- "WALKING_DOWNSTAIRS"
Data[which(Data$Activity==4), "Activity"] <- "SITTING"
Data[which(Data$Activity==5), "Activity"] <- "STANDING"
Data[which(Data$Activity==6), "Activity"] <- "LAYING"

#create new dataset of average of each subject and activity
activity <- unique(Data$Activity)
subject <- unique(Data$Subject)
subject <- subject[order(subject)] #to get subject in 1-30 order

currMean <- c()
currRow <- c()
prevRows <- c()
for (act in activity){
  for (sub in subject){
    currActSub <- paste(act,sub,sep="andSubject")
    meanRow <- c()
    for (i in 1:66){
      currMean <- mean(Data[Data$Activity==act & Data$Subject==sub, i])
      meanRow <- append(meanRow, currMean) #should have means for 66 values
    }
    currRow <- append(currActSub, meanRow) #should be row in form 
                                          #ActivityandSubject then 66 means
    currRow <- append(currRow, c(act, sub)) #add act and sub to the end
    if (length(prevRows)>0) {prevRows <- rbind(prevRows, currRow)}
    else {prevRows <- currRow}
  }
}
secondTidy <- data.frame(prevRows, row.names=1)
names(secondTidy) <- names(Data)
write.csv(secondTidy, "averagesSubjectAndActivity.txt", quote=F)