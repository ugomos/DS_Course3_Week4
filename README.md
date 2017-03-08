# Getting and Cleaning Data Project

## Description

My script (run_analysis.R) performs the 5 points required in the assignment:

1. Merges the training and the test sets to create one data set for the features, the subjects and the activity sets.
2. Extracts only the measurements on the mean and standard deviation for each measurement, by using the `grep` function
on the features dataset and using the indices returned by grep to subset the feature dataset.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names, adjusting column names difficult to read such as
those starting with 't' or ''f and remove useless round brackets.
5. From the data set in step 4, creates a second, independent tidy data set (present in file "tidySetMean") with the 
average of each variable for each activity and each subject. 

## Execution

To run the script, just type source("run_analysis.R"). The dataset required by the exercises are supposed to be in folder "ucihardataset/". 

## Output 

The script writes two files:
1. `tidySet.txt` : it contains the tidy dataset with columns related to mean and standard deviation values.
2. `tidySetMean.txt`: it contains the tidy dataset with the average of each variable for each activity and each subject.

