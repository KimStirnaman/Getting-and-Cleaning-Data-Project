# Project Instructions:
# 1 - Merges the training and the test sets to create one data set.
# 2 - Extracts only the measurements on the mean and standard deviation for each 
# measurement.
# 3 - Uses descriptive activity names to name the activities in the data set
# 4 - Appropriately labels the data set with descriptive variable names.
# 5 - From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject

#download the file from url
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
file.dest <- 'getdata_projectfiles_UCI HAR Dataset.zip'
download.file(file.url,file.dest, method="curl")

#unzip the file
unzip(file.dest)

# read in files from the train data set
train <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresWanted]
activities <- read.table("UCI HAR Dataset/train/Y_train.txt")
subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(subjects, activities, train)

# read in files from the testing data set
test <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresWanted]
activities2 <- read.table("UCI HAR Dataset/test/Y_test.txt")
subjects2 <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(subjects2, activities2, test)

# read in activity labels and features data
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])


# Extract only the data on mean and standard deviation
featuresWanted <- grep(".*mean.*|.*std.*", features[,2])
featuresWanted.names <- features[featuresWanted,2]
featuresWanted.names = gsub('-mean', 'Mean', featuresWanted.names)
featuresWanted.names = gsub('-std', 'Std', featuresWanted.names)
featuresWanted.names <- gsub('[-()]', '', featuresWanted.names)

# merge datasets and add labels
allData <- rbind(train, test)
colnames(allData) <- c("subject", "activity", featuresWanted.names)
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
allData$subject <- as.factor(allData$subject)

allData.melted <- melt(allData, id = c("subject", "activity"))
allData.mean <- dcast(allData.melted, subject + activity ~ variable, mean)

#create tidy data text file with all merged data
write.table(allData.mean, "merged.txt", row.names = FALSE, quote = FALSE)
