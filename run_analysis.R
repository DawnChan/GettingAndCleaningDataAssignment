install.packages(data.table)
library (data.table)

#getting files
download.file(URL, destfile = "UCIHAR.zip", method = "curl")
unzip("UCIHAR.zip")

# loading all files
subjecttest <- read.table("~/UCI HAR Dataset/test/subject_test.txt")
xtest <- read.table("~/UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("~/UCI HAR Dataset/test/y_test.txt")

subjecttrain <- read.table("~/UCI HAR Dataset/train/subject_train.txt")
xtrain <- read.table("~/UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("~/UCI HAR Dataset/train/y_train.txt")

features <- read.table("~/UCI HAR Dataset/features.txt", col.names = c("featureID", "featurelabel"))
activity <- read.table("~/UCI HAR Dataset/activity_labels.txt", col.names = c("activityID", "activitylabel"))

#row binding test and train data sets
subject <- rbind(subjecttest, subjecttrain)
xdata <- rbind(xtest, xtrain)
ydata <- rbind(ytest, ytrain)

#subset mean and std deviation columns
msfeatures <- grep("-mean\\(\\)|-std\\(\\)", features$featurelabel)
msxdata <- xdata[, msfeatures]

#descriptive column name change for subject and ydata 
names(subject) <- "subjectID"
names(ydata) <- "activity"

#descriptive column name change for msxdata 
names(msxdata) <- features[msfeatures, 2]

#descriptive activity name for ydata
ydata[, 1] <- activity[ydata[, 1], 2]

#column binding all data sets to create tidy dataset
df <- cbind(subject, ydata, msxdata)

#create second tidy dataset with average for each subject and activity
dt <- data.table(df)
meltdt <- melt(dt, id=c("subjectID", "activity"))
finaldt <- dcast(meltdt, subjectID + activity~variable, mean)

#write csv file of new dataset
write.csv(finaldt, file = "finaldata.csv") 
