#Load data.table library and dplyr library
library(data.table)
library(dplyr)

# Load features and make valid column names
features <- read.table("features.txt")
names <- make.names(features[ ,2], unique = TRUE)

#Load data into train.
train <- read.table("train/X_train.txt")
trainactivity <- read.table("train/y_train.txt")
trainsubjects <- read.table("train/subject_train.txt")
setnames(train, old = colnames(train), new = names)
train <- mutate(train, activityId = as.vector(trainactivity[,1]), subject = as.vector(trainsubjects[,1]))

#Load data into test.
test <- read.table("test/X_test.txt")
testactivity <- read.table("test/y_test.txt")
testsubjects <- read.table("test/subject_test.txt")
setnames(test, old = colnames(test), new = names)
test <- mutate(test, activityId = as.vector(testactivity[,1]), subject = as.vector(testsubjects[,1]))

#Merge the training and the test sets to create one data set.
combinedData <- rbind(train, test)

#Extracts only the measurements on the mean and standard deviation for each measurement.
meanstd <- subset(combinedData, select = grep("*mean\\.\\.|*std\\.\\.|activity|subject", colnames(combinedData)))

#Get activity labels
activityNames <- read.table("activity_labels.txt")
setnames(activityNames, old = colnames(activityNames), new = c("Id", "activity"))

#Uses descriptive activity names to name the activities in the data set
meanstd <- merge(meanstd, activityNames, by.x = "activityId", by.y = "Id")
meanstd <- subset(meanstd, select=-c(activityId))

#Renames columns with meaningful names
names <- gsub("^t", "Time", colnames(meanstd))
names <- gsub("^f", "Freq", names)
names <- gsub("\\.\\.", "", names)
setnames(meanstd, old = colnames(meanstd), new = names)

#Creates a tidy data set with the average of each variable for each activity and each subject.
summarisedData <- meanstd %>% group_by(activity, subject) %>% summarise_each(funs(mean))

#Write created dataframe to file
write.table(summarisedData, "summarisedData.txt", row.names = FALSE)