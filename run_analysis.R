

library(dplyr)

# Load Tables

setwd("UCI HAR Dataset/")

X_train <- read.table("train//X_train.txt")
X_test  <- read.table("test//x_test.txt")
features <- read.table("features.txt", stringsAsFactors = FALSE)
Y_train  <- read.table("train/y_train.txt")
Y_test <- read.table("test//y_test.txt")
activities <- read.table("activity_labels.txt")
subject_train <- read.table("train//subject_train.txt")
subject_test <- read.table("test//subject_test.txt")


# Merges the training and the test sets to create one data set.

X_all  <- rbind(X_test, X_train)

# Extracts only the measurements on the mean and standard deviation for each measurement. 

meanStdFeatures  <- sort( c(grep("mean", features$V2), grep("std", features$V2)))
X_all  <- X_all[, meanStdFeatures ]

# Uses descriptive activity names to name the activities in the data set

Y_all <- rbind(Y_test,Y_train)
X_all <- cbind(X_all, activities[Y_all$V1,2])

# Appropriately labels the data set with descriptive variable names. 

colnames(X_all) <- c(features$V2[meanStdFeatures],"Activity_label")

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

subject_all <- rbind(subject_test,subject_train)
colnames(subject_all) <- c("Subject")
tidyData <- cbind(subject_all, X_all)

tidyData <- tidyData %>% group_by(Activity_label, Subject) %>% summarise_each(funs(mean))

setwd("..")