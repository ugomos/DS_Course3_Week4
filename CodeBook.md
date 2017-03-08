# Codebook for the tidy dataset and tidy dataset averaged

### Data source

The tidy dataset was generated starting from this [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and following the instructions of the Assignment.

### Dataset description

The values (features) of the dataset are a subset of the feature in the original dataset. Particularly, for the purposes of the assigment, only the features referring to a mean or standard deviation were kept. We report the features used below, after cleaning of their names as readable in the script 'run_analysis.R'. We refer then to the description in their `README.txt` and `feature_info.txt` for the explanationa of their physical meaning. Columns will include "Subject" and "Activity" and then other columns related to features as follows:

* TimeBodyAccMeanX
* TimeBodyAccMeanY
* TimeBodyAccMeanZ
* TimeBodyAccStandDeviationX
* TimeBodyAccStandDeviationY
* TimeBodyAccStandDeviationZ
* TimeGravityAccMeanX
* TimeGravityAccMeanY
* TimeGravityAccMeanZ
* TimeGravityAccStandDeviationX
* TimeGravityAccStandDeviationY
* TimeGravityAccStandDeviationZ
* TimeBodyAccJerkMeanX
* TimeBodyAccJerkMeanY
* TimeBodyAccJerkMeanZ
* TimeBodyAccJerkStandDeviationX
* TimeBodyAccJerkStandDeviationY
* TimeBodyAccJerkStandDeviationZ
* TimeBodyGyroMeanX
* TimeBodyGyroMeanY
* TimeBodyGyroMeanZ
* TimeBodyGyroStandDeviationX
* TimeBodyGyroStandDeviationY
* TimeBodyGyroStandDeviationZ
* TimeBodyGyroJerkMeanX
* TimeBodyGyroJerkMeanY
* TimeBodyGyroJerkMeanZ
* TimeBodyGyroJerkStandDeviationX
* TimeBodyGyroJerkStandDeviationY
* TimeBodyGyroJerkStandDeviationZ
* TimeBodyAccMagMean
* TimeBodyAccMagStandDeviation
* TimeGravityAccMagMean
* TimeGravityAccMagStandDeviation
* TimeBodyAccJerkMagMean
* TimeBodyAccJerkMagStandDeviation
* TimeBodyGyroMagMean
* TimeBodyGyroMagStandDeviation
* TimeBodyGyroJerkMagMean
* TimeBodyGyroJerkMagStandDeviation
* FrequencyBodyAccMeanX
* FrequencyBodyAccMeanY
* FrequencyBodyAccMeanZ
* FrequencyBodyAccStandDeviationX
* FrequencyBodyAccStandDeviationY
* FrequencyBodyAccStandDeviationZ
* FrequencyBodyAccJerkMeanX
* FrequencyBodyAccJerkMeanY
* FrequencyBodyAccJerkMeanZ
* FrequencyBodyAccJerkStandDeviationX
* FrequencyBodyAccJerkStandDeviationY
* FrequencyBodyAccJerkStandDeviationZ
* FrequencyBodyGyroMeanX
* FrequencyBodyGyroMeanY
* FrequencyBodyGyroMeanZ
* FrequencyBodyGyroStandDeviationX
* FrequencyBodyGyroStandDeviationY
* FrequencyBodyGyroStandDeviationZ
* FrequencyBodyAccMagMean
* FrequencyBodyAccMagStandDeviation
* FrequencyBodyAccJerkMagMean
* FrequencyBodyAccJerkMagStandDeviation
* FrequencyBodyGyroMagMean
* FrequencyBodyGyroMagStandDeviation
* FrequencyBodyGyroJerkMagMean
* FrequencyBodyGyroJerkMagStandDeviation

### Description of the two output datasets

The `run_analysis.R` performs the step required in the assignment.

* Test sets and training sets are read and merged.
* Columns are named.
* Columns describing some mean or standar deviation are kept. Other columns are just discarded.
* Descriptive activity names are given to name the activities in the data set. In this process, unclear names are cleared better (e.g., deleting brackets, expanding acronyms, removing duplicate words).
* Two outputs are created:
* - `tidySet.txt` contains ALL the features related to mean and standard deviation of the dataset
* - `tidySetMean.txt` contains the data grouped by SUBJECT and ACTIVITY, with average value calculated for each columns extracted previously (i.e., those related to the measurements on the mean and standard deviation).
