## 1. Merge the training set and the test set
trainX <- read.csv("ucihardataset/train/X_train.txt", sep="", header=FALSE)
trainY <- read.csv("ucihardataset/train/y_train.txt", header=FALSE)
trainSBJ <- read.csv("ucihardataset/train/subject_train.txt", header=FALSE)
testX <- read.csv("ucihardataset/test/X_test.txt", sep="", header=FALSE)
testY <- read.csv("ucihardataset/test/y_test.txt", header=FALSE)
testSBJ <- read.csv("ucihardataset/test/subject_test.txt", header=FALSE)

# merge the train + test sets: we keep three separate sets for feature/subject/activity, made of train+test sets.
X_set <- rbind(trainX, testX)
Y_Set <- rbind(trainY, testY)
SUBJECTS_set <- rbind(trainSBJ, testSBJ)

## 2. Extract mean and standard deviation
features = read.csv("ucihardataset/features.txt", sep="", header=FALSE)
# Naming the columns of the sets
colnames(Y_Set) <- "Activity"
colnames(SUBJECTS_set) <- "Subject"
colnames(X_set) <- t(features[2])
# Get only mean and sd of several features
featselection <- grep("-mean\\(\\)|-std\\(\\)", features[,2])
X_set_fs <- X_set[, featselection]

## 3. Use descriptive activity names to name the activities in the data set
activities <- read.table("ucihardataset/activity_labels.txt")
colnames(activities) <- c('ID_ACTIVITY', 'ID_NAME')

## 4. Appropriately label the data set with descriptive activity names:
Y_Set[, "Activity"] = activities[Y_Set[, "Activity"], "ID_NAME"]
# Combine the results and fix the most unreadable column labels
tidySet <- cbind(SUBJECTS_set, Y_Set, X_set_fs)
names(tidySet) <- gsub("-mean()", "Mean", names(tidySet))
names(tidySet) <- gsub("-std()", "StandDeviation", names(tidySet))
names(tidySet) <- gsub("[-()]", "", names(tidySet)) #remove parenthesis
names(tidySet)<-gsub("^t", "Time", names(tidySet))
names(tidySet)<-gsub("^f", "Frequency", names(tidySet))
names(tidySet)<-gsub("BodyBody", "Body", names(tidySet))

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# average, but exclude first three columns
tidySet_mean <- aggregate(tidySet[, 3:ncol(tidySet)], list(tidySet$Subject, tidySet$Activity), mean)
# naming first two columns
names(tidySet_mean)[1] <- names(SUBJECTS_set)[1]
names(tidySet_mean)[2] <- names(Y_Set)[1]
# Write files
tidySetFile <- "tidySet.txt"
tidySet_meanFile <- "tidySetMean.txt"
write.table(tidySet, tidySetFile)
write.table(tidySet_mean, tidySet_meanFile)


