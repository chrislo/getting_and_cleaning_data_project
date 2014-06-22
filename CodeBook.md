# Codebook

## Introduction

Running the R script `run_analysis.R` produces a comma-separated file,
`tidy.txt`. This dataset is a tidied and reduced set of data
originally derived from the
[Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones),
in particular the
[data dump provided](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
for the Getting and Cleaning data coursera course.

## Variables

Each row of the datafile a single subject performing a particular
activity. In the original dataset the participants were split into
test and training sets. For the purposes of this tidy dataset, these
two sets have been recombined. There were 30 subjects in the original
dataset, and each participant performed six activities a number of
times. The tidy dataset therefore has 180 (30 * 6) rows of data.

- *activity*: One of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
- *subject*: An identifier of the subject who carried out the experiment

The remaining columns in the data set were obtained by taking the
arithmetic mean of all of the measurements of mean or standard
deviation of the sensors for a particular subject performing a
particular activity.

- *tBodyAccMeanX*: mean of tBodyAcc-mean()-X
- *tBodyAccMeanY*: mean of tBodyAcc-mean()-Y
- *tBodyAccMeanZ*: mean of tBodyAcc-mean()-Z
- *tBodyAccStdX*: mean of tBodyAcc-std()-X
- *tBodyAccStdY*: mean of tBodyAcc-std()-Y
- *tBodyAccStdZ*: mean of tBodyAcc-std()-Z
- *tGravityAccMeanX*: mean of tGravityAcc-mean()-X
- *tGravityAccMeanY*: mean of tGravityAcc-mean()-Y
- *tGravityAccMeanZ*: mean of tGravityAcc-mean()-Z
- *tGravityAccStdX*: mean of tGravityAcc-std()-X
- *tGravityAccStdY*: mean of tGravityAcc-std()-Y
- *tGravityAccStdZ*: mean of tGravityAcc-std()-Z
- *tBodyAccJerkMeanX*: mean of tBodyAccJerk-mean()-X
- *tBodyAccJerkMeanY*: mean of tBodyAccJerk-mean()-Y
- *tBodyAccJerkMeanZ*: mean of tBodyAccJerk-mean()-Z
- *tBodyAccJerkStdX*: mean of tBodyAccJerk-std()-X
- *tBodyAccJerkStdY*: mean of tBodyAccJerk-std()-Y
- *tBodyAccJerkStdZ*: mean of tBodyAccJerk-std()-Z
- *tBodyGyroMeanX*: mean of tBodyGyro-mean()-X
- *tBodyGyroMeanY*: mean of tBodyGyro-mean()-Y
- *tBodyGyroMeanZ*: mean of tBodyGyro-mean()-Z
- *tBodyGyroStdX*: mean of tBodyGyro-std()-X
- *tBodyGyroStdY*: mean of tBodyGyro-std()-Y
- *tBodyGyroStdZ*: mean of tBodyGyro-std()-Z
- *tBodyGyroJerkMeanX*: mean of tBodyGyroJerk-mean()-X
- *tBodyGyroJerkMeanY*: mean of tBodyGyroJerk-mean()-Y
- *tBodyGyroJerkMeanZ*: mean of tBodyGyroJerk-mean()-Z
- *tBodyGyroJerkStdX*: mean of tBodyGyroJerk-std()-X
- *tBodyGyroJerkStdY*: mean of tBodyGyroJerk-std()-Y
- *tBodyGyroJerkStdZ*: mean of tBodyGyroJerk-std()-Z
- *tBodyAccMagMean*: mean of tBodyAccMag-mean()
- *tBodyAccMagStd*: mean of tBodyAccMag-std()
- *tGravityAccMagMean*: mean of tGravityAccMag-mean()
- *tGravityAccMagStd*: mean of tGravityAccMag-std()
- *tBodyAccJerkMagMean*: mean of tBodyAccJerkMag-mean()
- *tBodyAccJerkMagStd*: mean of tBodyAccJerkMag-std()
- *tBodyGyroMagMean*: mean of tBodyGyroMag-mean()
- *tBodyGyroMagStd*: mean of tBodyGyroMag-std()
- *tBodyGyroJerkMagMean*: mean of tBodyGyroJerkMag-mean()
- *tBodyGyroJerkMagStd*: mean of tBodyGyroJerkMag-std()
- *fBodyAccMeanX*: mean of fBodyAcc-mean()-X
- *fBodyAccMeanY*: mean of fBodyAcc-mean()-Y
- *fBodyAccMeanZ*: mean of fBodyAcc-mean()-Z
- *fBodyAccStdX*: mean of fBodyAcc-std()-X
- *fBodyAccStdY*: mean of fBodyAcc-std()-Y
- *fBodyAccStdZ*: mean of fBodyAcc-std()-Z
- *fBodyAccJerkMeanX*: mean of fBodyAccJerk-mean()-X
- *fBodyAccJerkMeanY*: mean of fBodyAccJerk-mean()-Y
- *fBodyAccJerkMeanZ*: mean of fBodyAccJerk-mean()-Z
- *fBodyAccJerkStdX*: mean of fBodyAccJerk-std()-X
- *fBodyAccJerkStdY*: mean of fBodyAccJerk-std()-Y
- *fBodyAccJerkStdZ*: mean of fBodyAccJerk-std()-Z
- *fBodyGyroMeanX*: mean of fBodyGyro-mean()-X
- *fBodyGyroMeanY*: mean of fBodyGyro-mean()-Y
- *fBodyGyroMeanZ*: mean of fBodyGyro-mean()-Z
- *fBodyGyroStdX*: mean of fBodyGyro-std()-X
- *fBodyGyroStdY*: mean of fBodyGyro-std()-Y
- *fBodyGyroStdZ*: mean of fBodyGyro-std()-Z
- *fBodyAccMagMean*: mean of fBodyAccMag-mean()
- *fBodyAccMagStd*: mean of fBodyAccMag-std()
- *fBodyBodyAccJerkMagMean*: mean of fBodyBodyAccJerkMag-mean()
- *fBodyBodyAccJerkMagStd*: mean of fBodyBodyAccJerkMag-std()
- *fBodyBodyGyroMagMean*: mean of fBodyBodyGyroMag-mean()
- *fBodyBodyGyroMagStd*: mean of fBodyBodyGyroMag-std()
- *fBodyBodyGyroJerkMagMean*: mean of fBodyBodyGyroJerkMag-mean()
- *fBodyBodyGyroJerkMagStd*: mean of fBodyBodyGyroJerkMag-std()

For a detailed definition of the original features from which these
means were derived, consult the documentation included with the
dataset, in particular the file `features_info.txt`
