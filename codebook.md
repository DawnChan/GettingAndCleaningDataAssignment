#Codebook

##Transformation of data

1. unzip dataset into working directory
2. install required packages - data.table
3. load test and train datasets into R using read.table()
4. load features table using read.table() and label column names using col.names()
5. load activities table using read.table() and label column names using col.names()
6. combine test and train datasets using rbind()
7. subset the mean and standard deviation columns using grep()
8. use descriptive names to label variables using names()
9. create one tidy dataset by combining above datasets into one using cbind()
10. create second dataset with average of each subject and activity by
        creating datatable with data.table() then melt() and cast()
11. new dataset created 
12. write csv file of new dataset using write.csv()
13. write txt file of new dataset using write.table()


##Labels

###subjectID 
subject ID number 1:30

###activity
activity during time of measurement 
    -walking
    -walking upstairs
    -walking downstairs
    -sitting
    -standing
    -laying

###measurements recorded

XYZ correlates to the X, Y and X axes respectively

tBodyAcc-mean-X  
tBodyAcc-mean-Y  
tBodyAcc-mean-Z  
tBodyAcc-std-X  
tBodyAcc-std-Y  
tBodyAcc-std-Z  
tGravityAcc-mean-X  
tGravityAcc-mean-Y  
tGravityAcc-mean-Z  
tGravityAcc-std-X  
tGravityAcc-std-Y  
tGravityAcc-std-Z  
tBodyAccJerk-mean-X  
tBodyAccJerk-mean-Y  
tBodyAccJerk-mean-Z  
tBodyAccJerk-std-X  
tBodyAccJerk-std-Y  
tBodyAccJerk-std-Z  
tBodyGyro-mean-X  
tBodyGyro-mean-Y  
tBodyGyro-mean-Z  
tBodyGyro-std-X  
tBodyGyro-std-Y  
tBodyGyro-std-Z  
tBodyGyroJerk-mean-X  
tBodyGyroJerk-mean-Y  
tBodyGyroJerk-mean-Z  
tBodyGyroJerk-std-X  
tBodyGyroJerk-std-Y  
tBodyGyroJerk-std-Z  
tBodyAccMag-mean  
tBodyAccMag-std  
tGravityAccMag-mean  
tGravityAccMag-std  
tBodyAccJerkMag-mean  
tBodyAccJerkMag-std  
tBodyGyroMag-mean  
tBodyGyroMag-std  
tBodyGyroJerkMag-mean  
tBodyGyroJerkMag-std  
fBodyAcc-mean-X  
fBodyAcc-mean-Y  
fBodyAcc-mean-Z  
fBodyAcc-std-X  
fBodyAcc-std-Y  
fBodyAcc-std-Z  
fBodyAccJerk-mean-X  
fBodyAccJerk-mean-Y  
fBodyAccJerk-mean-Z  
fBodyAccJerk-std-X  
fBodyAccJerk-std-Y  
fBodyAccJerk-std-Z  
fBodyGyro-mean-X  
fBodyGyro-mean-Y  
fBodyGyro-mean-Z  
fBodyGyro-std-X  
fBodyGyro-std-Y  
fBodyGyro-std-Z  
fBodyAccMag-mean  
fBodyAccMag-std  
fBodyBodyAccJerkMag-mean  
fBodyBodyAccJerkMag-std  
fBodyBodyGyroMag-mean  
fBodyBodyGyroMag-std  
fBodyBodyGyroJerkMag-mean  
fBodyBodyGyroJerkMag-std  

